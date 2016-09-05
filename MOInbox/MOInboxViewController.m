//
//  MOInboxViewController.m
//  MoEngage
//
//  Created by Gautam on 26/02/15.
//  Copyright (c) 2015 alphadevs. All rights reserved.
//

#import "MOInboxViewController.h"
#import "MOInboxTableViewCell.h"
#import "MOInboxPushDataModel.h"
#import "MOInbox.h"
#import "MOInboxExposedConstants.h"


@interface NSDictionary (SafeDictionary)

- (id)safeObjectForKey: (id)key;

@end

@implementation NSDictionary (SafeDictionary)

- (id)safeObjectForKey: (id)key {
    id obj = [self objectForKey:key];
    if (obj == [NSNull null]) {
        obj = nil;
    }
    return obj;
}
@end


static NSInteger const MOInboxTableHeightConst = 30;

@interface MOInboxViewController ()

@property(nonatomic, strong) UIColor *notificationTextLabelColor;
@property(nonatomic, strong) UIColor *dateTextLabelColor;
@property(nonatomic, strong) UIColor *cellBackgroundColor;
@property(nonatomic, strong) UIFont  *notificationTextLabelFont;
@property(nonatomic, strong) UIFont  *dateTextLabelFont;
@property(nonatomic, strong) UIFont  *notificationTextLabelUnreadFont;

@property(nonatomic, strong) NSMutableArray *inboxMessagesArray;
@property(nonatomic, weak) IBOutlet UITableView *inboxTableView;

@end

@implementation MOInboxViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitleForInbox];
    _inboxMessagesArray = [NSMutableArray arrayWithArray:[MOInbox getInboxMessages]];
    [self checkInboxMessagesCount];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if(self.tableBackgroundColor){
        self.inboxTableView.backgroundColor = self.tableBackgroundColor;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
// Set Title for View Controller
-(void)setTitleForInbox{
    if(self.inboxTitle){
        self.title = self.inboxTitle;
    }else{
        self.title = @"Inbox";
    }
}

// Check if inbox messages are there or not. And display label informing No Messages present if no messages
-(void)checkInboxMessagesCount{
    if([_inboxMessagesArray count]){
        [self.inboxTableView reloadData];
    }else{
        [self.inboxTableView removeFromSuperview];
        UILabel *noMessagesLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2 - self.view.frame.size.width/4, self.view.frame.size.height/2 - 25, self.view.frame.size.width/2, 50)];
        noMessagesLabel.textAlignment = NSTextAlignmentCenter;
        noMessagesLabel.numberOfLines = 2;
        noMessagesLabel.text = @"You have no messages";
        [self.view addSubview:noMessagesLabel];
    }
}

#pragma mark - Table View

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    @try {
        if([_inboxMessagesArray count]){
            
            NSDictionary *dataDict = [_inboxMessagesArray objectAtIndex:indexPath.row];
            dataDict = [dataDict safeObjectForKey:MO_EXP_DATA];
            NSDictionary *apsDict = [dataDict safeObjectForKey:MO_EXP_PUSH_APS];
            NSString *alertStr;
            if ([[apsDict safeObjectForKey:MO_EXP_PUSH_ALERT] isKindOfClass:[NSDictionary class]]) {
                NSDictionary* alertDict = [apsDict safeObjectForKey:MO_EXP_PUSH_ALERT];
                alertStr = [alertDict safeObjectForKey:@"body"];
            }
            else if ([[apsDict safeObjectForKey:MO_EXP_PUSH_ALERT] isKindOfClass:[NSString class]]){
                alertStr = [apsDict safeObjectForKey:MO_EXP_PUSH_ALERT];
            }
            
            
            UIFont *myFont = [self getCellFontForDict:dataDict];
            
            if([dataDict safeObjectForKey:MO_EXP_PUSH_IS_READ]){
                // 30 is for left and right margin. You can customise this as per your need
                return [MOInbox findHeightForText:alertStr havingWidth:[MOInbox screenWidth]-30 andFont:myFont] + MOInboxTableHeightConst;
            }else{
                return [MOInbox findHeightForText:alertStr havingWidth:[MOInbox screenWidth]-30 andFont:myFont] + MOInboxTableHeightConst;
            }
        }
        return 0;
    } @catch (NSException *exception) {
        NSLog(@"Exception : %@",exception);
        return 0;
    }
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_inboxMessagesArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    @try {
        static NSString *cellIdentifier = @"InboxCell";
        MOInboxTableViewCell *cell = (MOInboxTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if([_inboxMessagesArray count] > indexPath.row){
            
            MOInboxPushDataModel *pushDataDict = [[MOInboxPushDataModel alloc]initWithDictionary:[_inboxMessagesArray objectAtIndex:indexPath.row]];
            [self setPropertiesForCell:cell];
            [cell setDataWithMessage:pushDataDict];
        }
        return cell;
    } @catch (NSException *exception) {
        NSLog(@"Exception : %@",exception);
        return nil;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    @try {
        MOInboxPushDataModel *dictionary = [[MOInboxPushDataModel alloc]initWithDictionary:[_inboxMessagesArray objectAtIndex:indexPath.row]];
        if(!dictionary.isRead){
            NSMutableDictionary *newDict = [NSMutableDictionary dictionaryWithDictionary:[_inboxMessagesArray objectAtIndex:indexPath.row]];
            [newDict setObject:@YES forKey:MO_EXP_PUSH_IS_READ];
            [_inboxMessagesArray replaceObjectAtIndex:indexPath.row withObject:newDict];
            
            NSArray *tempArray = [[_inboxMessagesArray reverseObjectEnumerator]allObjects];
            [MOInbox writeArrayToFile:[NSMutableArray arrayWithArray:tempArray]];
            [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        }
        if ([self.delegate respondsToSelector:@selector(inboxCellSelectedWithData:)]) {
            [self.delegate inboxCellSelectedWithData:dictionary.extraData];
        }
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    } @catch (NSException *exception) {
        NSLog(@"Exception : %@",exception);
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //remove the deleted object from your data source.
        //If your data source is an NSMutableArray, do this
        [self.inboxMessagesArray removeObjectAtIndex:indexPath.row];
        
        NSArray *tempArray = [[_inboxMessagesArray reverseObjectEnumerator]allObjects];
        [MOInbox writeArrayToFile:[NSMutableArray arrayWithArray:tempArray]];

        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationLeft];
    }
}

#pragma mark - Cell customisation

-(void)setPropertiesForCell:(MOInboxTableViewCell *)cell{
    
    if(self.cellBackgroundColor){
        cell.backgroundColor = self.cellBackgroundColor;
    }
    if(self.notificationTextLabelColor){
        cell.notificationTextLabel.textColor = self.notificationTextLabelColor;
    }
    if(self.notificationTextLabelFont){
        cell.notificationTextReadFont = self.notificationTextLabelFont;
    }
    if(self.notificationTextLabelUnreadFont){
        cell.notificationTextUnreadFont = self.notificationTextLabelUnreadFont;
    }
    
    if(self.dateTextLabelColor){
        cell.dateLabelTextLabel.textColor = self.dateTextLabelColor;
    }
    if(self.dateTextLabelFont){
        cell.dateLabelTextLabel.font = self.dateTextLabelFont;
    }
}

-(void)customiseInboxWithCellTextColor:(UIColor *)cellTextColor fontForReadMsg:(UIFont *)cellTextFont fontForUnreadMsg:(UIFont *)cellUnreadTextFont dateTextColor:(UIColor *)dateTextColor font:(UIFont *)dateTextFont cellBackgroundColor:(UIColor *)cellBGColor{
    self.notificationTextLabelColor = cellTextColor;
    self.notificationTextLabelFont = cellTextFont;
    self.notificationTextLabelUnreadFont = cellUnreadTextFont;
    self.dateTextLabelColor = dateTextColor;
    self.dateTextLabelFont = dateTextFont;
    self.cellBackgroundColor = cellBGColor;
}

-(UIFont *)getCellFontForDict:(NSDictionary *)dataDict{
    if([dataDict safeObjectForKey:MO_EXP_PUSH_IS_READ]){
        if(self.notificationTextLabelFont){
            return self.notificationTextLabelFont;
        }else{
            return [MOInbox defaultTextFont];
        }
    }else{
        if(self.notificationTextLabelUnreadFont){
            return self.notificationTextLabelUnreadFont;
        }else{
            return [MOInbox defaultUnreadTextFont];
        }
    }
}

@end
