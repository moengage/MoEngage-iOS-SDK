// Generated by Apple Swift version 5.6.1 (swiftlang-5.6.0.323.66 clang-1316.0.20.12)
#ifndef MOENGAGECORE_SWIFT_H
#define MOENGAGECORE_SWIFT_H
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <Foundation/Foundation.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(ns_consumed)
# define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
#else
# define SWIFT_RELEASES_ARGUMENT
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#if !defined(SWIFT_EXTERN)
# if defined(__cplusplus)
#  define SWIFT_EXTERN extern "C"
# else
#  define SWIFT_EXTERN extern
# endif
#endif
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import Dispatch;
@import Foundation;
@import ObjectiveC;
@import UIKit;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="MoEngageCore",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

@class NSString;

SWIFT_CLASS("_TtC12MoEngageCore19MoEngageAccountMeta")
@interface MoEngageAccountMeta : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull appID;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (nonnull instancetype)initWithInstanceID:(NSString * _Nonnull)instanceID OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12MoEngageCore25MoEngageAnalyticsDelegate")
@interface MoEngageAnalyticsDelegate : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class MoEngageSDKInstance;

/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore24MoEngageAnalyticsManager")
@interface MoEngageAnalyticsManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageAnalyticsManager * _Nonnull sharedInstance;)
+ (MoEngageAnalyticsManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeAnalyticsWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)moengageSDKStateUpdatedWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidBecomeActiveWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationWillResignActiveWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidEnterForegroundWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidEnterBackgroundWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)flushWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore20MoEngageCardsHandler")
@interface MoEngageCardsHandler : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore20MoEngageCardsManager")
@interface MoEngageCardsManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageCardsManager * _Nonnull sharedInstance;)
+ (MoEngageCardsManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeCardsWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidEnterForegroundWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationWillBecomeInActiveWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end

@class MoEngageSDKConfig;

SWIFT_CLASS("_TtC12MoEngageCore25MoEngageConfigCoordinator")
@interface MoEngageConfigCoordinator : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageConfigCoordinator * _Nonnull sharedInstance;)
+ (MoEngageConfigCoordinator * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)getSdkInstanceForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig withCompletionHandler:(void (^ _Nonnull)(MoEngageSDKInstance * _Nullable))completionHandler;
- (void)getSdkInstance:(NSString * _Nullable)instanceId completionHandler:(void (^ _Nonnull)(MoEngageSDKInstance * _Nullable))completionHandler;
- (void)getDefaultSdkInstance:(void (^ _Nonnull)(MoEngageSDKInstance * _Nullable))completionHandler;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore22MoEngageConfigDelegate")
@interface MoEngageConfigDelegate : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore29MoEngageConfigDelegateHandler")
@interface MoEngageConfigDelegateHandler : MoEngageConfigDelegate
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore17MoEngageCoreCache")
@interface MoEngageCoreCache : NSObject
@property (nonatomic) BOOL isSegmentInitialized;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12MoEngageCore19MoEngageCoreHandler")
@interface MoEngageCoreHandler : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageCoreHandler * _Nonnull sharedInstance;)
+ (MoEngageCoreHandler * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) dispatch_queue_t _Nonnull globalQueue;)
+ (dispatch_queue_t _Nonnull)globalQueue SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeModuleWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)initializeInstanceWithSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig isDefaultInstance:(BOOL)isDefaultInstance withCompletionBlock:(void (^ _Nonnull)(MoEngageSDKInstance * _Nullable))completion;
- (MoEngageSDKConfig * _Nullable)getDefaultSDKConfiguration SWIFT_WARN_UNUSED_RESULT;
- (MoEngageSDKConfig * _Nullable)getSDKConfigForAppID:(NSString * _Nonnull)appID SWIFT_WARN_UNUSED_RESULT;
- (NSArray<MoEngageSDKConfig *> * _Nonnull)getAllSDKConfigs SWIFT_WARN_UNUSED_RESULT;
- (BOOL)isSDKEnabled SWIFT_WARN_UNUSED_RESULT;
- (void)updateSDKStateWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance sdkState:(BOOL)sdkState;
- (void)enableSDKWithAppId:(NSString * _Nullable)appId;
- (void)disableSDKWithAppId:(NSString * _Nullable)appId;
- (BOOL)isSDKEnabledForInstanceForAppID:(NSString * _Nonnull)appID SWIFT_WARN_UNUSED_RESULT;
- (BOOL)isDeviceUniqueIDPresentInKeyChain SWIFT_WARN_UNUSED_RESULT;
- (void)dismissRichLandingWebViewControllerWithAnimation:(BOOL)animate;
- (void)enableLogs:(BOOL)enable;
- (void)enableLogs:(BOOL)enable forAppID:(NSString * _Nullable)appID;
- (void)enableDefaultConsoleLogger:(BOOL)enable;
@end

@class MoEngageIntegrationInfo;

SWIFT_CLASS("_TtC12MoEngageCore22MoEngageCoreIntegrator")
@interface MoEngageCoreIntegrator : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageCoreIntegrator * _Nonnull sharedInstance;)
+ (MoEngageCoreIntegrator * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)addIntergrationInfoWithInfo:(MoEngageIntegrationInfo * _Nonnull)info appId:(NSString * _Nullable)appId;
- (void)getCoreCache:(MoEngageSDKInstance * _Nonnull)sdkInstance completionHandler:(void (^ _Nonnull)(MoEngageCoreCache * _Nonnull))completionHandler;
- (void)enableSDKForSegmentWithInstanceID:(NSString * _Nonnull)instanceID;
@end

@class UIViewController;
@class NSURL;
@class NSUserDefaults;
enum MoEngageSDKState : NSInteger;
@class UIApplication;

SWIFT_CLASS("_TtC12MoEngageCore17MoEngageCoreUtils")
@interface MoEngageCoreUtils : NSObject
+ (NSInteger)getMaxParallelInstancesSupported SWIFT_WARN_UNUSED_RESULT;
+ (MoEngageSDKConfig * _Nullable)getSDKInstanceForInstanceID:(NSString * _Nullable)instanceID SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getSDKLibraryDirectoryPath SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getInstanceRootDirectoryPathForIdentifier:(NSString * _Nonnull)identifier SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getDocumentsDirectoryPath SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)removeFileAtPath:(NSString * _Nonnull)path SWIFT_WARN_UNUSED_RESULT;
+ (UIViewController * _Nullable)getTopMostViewController SWIFT_WARN_UNUSED_RESULT;
+ (void)showAlertViewWithMessage:(NSString * _Nonnull)msg andTitle:(NSString * _Nonnull)title;
+ (void)openDeeplinkWithUrlString:(NSString * _Nullable)urlStr;
+ (void)openExternalBrowserWithUrlString:(NSString * _Nullable)urlStr;
+ (NSURL * _Nullable)getUrlFromString:(NSString * _Nullable)urlStr SWIFT_WARN_UNUSED_RESULT;
+ (void)openDeeplinkWithUrl:(NSURL * _Nullable)url;
+ (void)openRichLandingWithUrlString:(NSString * _Nullable)urlStr;
+ (void)openRichLandingWithUrl:(NSURL * _Nullable)url;
+ (NSString * _Nonnull)getMoEngageSDKVersion SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getAppVersion SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getAppBundleId SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getIDFV SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getDeviceModel SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getDeviceOSVersion SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getDeviceModelName SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getDeviceModelType SWIFT_WARN_UNUSED_RESULT;
+ (NSUserDefaults * _Nullable)getCommonSDKUserDefault SWIFT_WARN_UNUSED_RESULT;
+ (NSUserDefaults * _Nullable)getSDKUserDefaultInstanceWithConfig:(MoEngageSDKConfig * _Nullable)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (void)savePushToken:(NSString * _Nonnull)token;
+ (NSString * _Nullable)getPushToken SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getSDKUniqueIdForInstanceWithConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)generateSDKUniqueID SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isSdkEnabledForInstanceWithConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (enum MoEngageSDKState)fetchMoEngageSDKState:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (void)updateUserDefaultWithSDKState:(BOOL)isSDKEnabled forSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig;
+ (void)updateSDKState:(BOOL)isEnabled withConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig;
+ (BOOL)isDataTrackingEnabledForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (void)setDataTrackingOptOutStatusForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig optOutStatus:(BOOL)optOutStatus;
+ (NSString * _Nullable)MD5Hash:(NSString * _Nonnull)string SWIFT_WARN_UNUSED_RESULT;
+ (UIApplication * _Nullable)sharedUIApplication SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getAppIDForNetworkAPICallsWithSdkConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (void)setIDFAOptOutStatusForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig optOutStatus:(BOOL)optOutStatus;
+ (void)setIDFVOptOutStatusForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig optOutStatus:(BOOL)optOutStatus;
+ (BOOL)isIDFATrackingEnabledForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isIDFVTrackingEnabledForSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

typedef SWIFT_ENUM(NSInteger, MoEngageDataCenter, open) {
  MoEngageDataCenterData_center_default = 0,
  MoEngageDataCenterData_center_01 = 1,
  MoEngageDataCenterData_center_02 = 2,
  MoEngageDataCenterData_center_03 = 3,
  MoEngageDataCenterData_center_04 = 4,
};

@class NSDateFormatter;
@class NSDate;
@class NSDateComponents;

SWIFT_CLASS("_TtC12MoEngageCore17MoEngageDateUtils")
@interface MoEngageDateUtils : NSObject
+ (NSDateFormatter * _Nullable)dateFormatterForFormat:(NSString * _Nullable)format andforGMT:(BOOL)isGMTtz SWIFT_WARN_UNUSED_RESULT;
+ (NSDateFormatter * _Nullable)dateFormatterForUsPosixLocaleWithFormat:(NSString * _Nonnull)format forGMTTimeZone:(BOOL)isGMTtz SWIFT_WARN_UNUSED_RESULT;
+ (NSDateFormatter * _Nullable)dateFormatterForDeviceLocaleWithFormat:(NSString * _Nonnull)format forGMTTimeZone:(BOOL)isGMTtz SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isDate1:(NSDate * _Nonnull)date1 sameAsDate2:(NSDate * _Nonnull)date2 SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isDate1:(NSDate * _Nonnull)date1 laterToDate2:(NSDate * _Nonnull)date2 SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isDate1:(NSDate * _Nonnull)date1 earlierToDate2:(NSDate * _Nonnull)date2 SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isDateLaterToCurrentTime:(NSDate * _Nonnull)date SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)checkDateInRange:(NSDate * _Nullable)dateToEvaluate fromStartDate:(NSDate * _Nullable)startDate toEndDate:(NSDate * _Nullable)endDate SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)checkTimeInRange:(NSDateComponents * _Nonnull)timeToEvaluate fromStartTime:(NSDateComponents * _Nonnull)startTime toEndTime:(NSDateComponents * _Nonnull)endTime SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nonnull)getGMTtimeEpochForDate:(NSDate * _Nullable)date SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getLocalTimeForEventsPayloadForDate:(NSDate * _Nullable)date SWIFT_WARN_UNUSED_RESULT;
+ (NSDate * _Nullable)dateByAddingDays:(NSUInteger)days toDate:(NSDate * _Nonnull)date SWIFT_WARN_UNUSED_RESULT;
+ (NSDate * _Nullable)dateBySubtractingDays:(NSUInteger)days toDate:(NSDate * _Nonnull)date SWIFT_WARN_UNUSED_RESULT;
+ (NSDateComponents * _Nullable)getDateComponentsFromTimeString:(NSString * _Nullable)timeString SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getStringForDate:(NSDate * _Nullable)date withFormat:(NSString * _Nullable)format andForGMTTimeZone:(BOOL)isGMTtz SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getStringInDeviceLocaleForDate:(NSDate * _Nullable)date withFormat:(NSString * _Nullable)format andForGMTTimeZone:(BOOL)isGMTtz SWIFT_WARN_UNUSED_RESULT;
+ (NSDate * _Nullable)getDateForString:(NSString * _Nullable)str withFormat:(NSString * _Nullable)format andForGMTTimeZone:(BOOL)isGMTtz SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC12MoEngageCore31MoEngageEventConditionEvaluator")
@interface MoEngageEventConditionEvaluator : NSObject
- (nonnull instancetype)initWithEventName:(NSString * _Nonnull)name andConditionDict:(NSDictionary<NSString *, id> * _Nonnull)conditionDict OBJC_DESIGNATED_INITIALIZER;
- (BOOL)checkConditionSatisfiedForEvent:(NSString * _Nonnull)event andAttributesPayload:(NSDictionary<NSString *, id> * _Nonnull)attributesPayload SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore23MoEngageGeofenceHandler")
@interface MoEngageGeofenceHandler : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore23MoEngageGeofenceManager")
@interface MoEngageGeofenceManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageGeofenceManager * _Nonnull sharedInstance;)
+ (MoEngageGeofenceManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeGeofenceWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)moengageSDKStateUpdatedWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end


/// This class is used to set safe area inset for inapp nudge.
SWIFT_CLASS("_TtC12MoEngageCore19MoEngageInAppConfig")
@interface MoEngageInAppConfig : NSObject
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore20MoEngageInAppManager")
@interface MoEngageInAppManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageInAppManager * _Nonnull sharedInstance;)
+ (MoEngageInAppManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeInAppWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore21MoEngageInboxDelegate")
@interface MoEngageInboxDelegate : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore20MoEngageInboxManager")
@interface MoEngageInboxManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageInboxManager * _Nonnull sharedInstance;)
+ (MoEngageInboxManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeInboxWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidEnterForegroundWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end


SWIFT_CLASS("_TtC12MoEngageCore23MoEngageIntegrationInfo")
@interface MoEngageIntegrationInfo : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull integrationType;
@property (nonatomic, readonly, copy) NSString * _Nonnull integrationVersion;
- (nonnull instancetype)initWithPluginType:(NSString * _Nonnull)pluginType version:(NSString * _Nonnull)version OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore14MoEngageLogger")
@interface MoEngageLogger : NSObject
+ (void)verbose:(NSString * _Nullable)msg label:(NSString * _Nullable)label sdkInstance:(MoEngageSDKInstance * _Nullable)sdkInstance;
+ (void)debug:(NSString * _Nullable)msg label:(NSString * _Nullable)label sdkInstance:(MoEngageSDKInstance * _Nullable)sdkInstance;
+ (void)info:(NSString * _Nullable)msg label:(NSString * _Nullable)label sdkInstance:(MoEngageSDKInstance * _Nullable)sdkInstance fileName:(NSString * _Nonnull)fileName functionName:(NSString * _Nonnull)functionName lineNumber:(NSInteger)lineNumber columnNumber:(NSInteger)columnNumber;
+ (void)warning:(NSString * _Nullable)msg label:(NSString * _Nullable)label sdkInstance:(MoEngageSDKInstance * _Nullable)sdkInstance fileName:(NSString * _Nonnull)fileName functionName:(NSString * _Nonnull)functionName lineNumber:(NSInteger)lineNumber columnNumber:(NSInteger)columnNumber;
+ (void)error:(NSString * _Nullable)msg stackTrace:(NSArray<NSString *> * _Nullable)stackTrace label:(NSString * _Nullable)label sdkInstance:(MoEngageSDKInstance * _Nullable)sdkInstance fileName:(NSString * _Nonnull)fileName functionName:(NSString * _Nonnull)functionName lineNumber:(NSInteger)lineNumber columnNumber:(NSInteger)columnNumber;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

typedef SWIFT_ENUM(NSInteger, MoEngageLoggerType, open) {
  MoEngageLoggerTypeVerbose = 0,
  MoEngageLoggerTypeDebug = 1,
  MoEngageLoggerTypeInfo = 2,
  MoEngageLoggerTypeWarning = 3,
  MoEngageLoggerTypeError = 4,
};


SWIFT_CLASS("_TtC12MoEngageCore24MoEngageMessagingHandler")
@interface MoEngageMessagingHandler : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore24MoEngageMessagingManager")
@interface MoEngageMessagingManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageMessagingManager * _Nonnull sharedInstance;)
+ (MoEngageMessagingManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeMessagingWithLaunchOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions sdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidEnterForegroundWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end


SWIFT_CLASS("_TtC12MoEngageCore21MoEngageNetworkClient")
@interface MoEngageNetworkClient : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class NSURLRequest;
@class NSData;

SWIFT_PROTOCOL("_TtP12MoEngageCore30MoEngageNetworkRequestProtocol_")
@protocol MoEngageNetworkRequestProtocol
- (void)executeRequest:(NSURLRequest * _Nonnull)request forSdkConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig withConfigController:(MoEngageSDKInstance * _Nonnull)configController completionHandler:(void (^ _Nonnull)(BOOL, NSInteger, NSDictionary * _Nullable))completionHandler;
- (void)downloadImageURL:(NSURL * _Nonnull)imageURL forSdkConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig dataCompletionHandler:(void (^ _Nonnull)(BOOL, NSData * _Nullable))dataCompletionHandler;
@end


@interface MoEngageNetworkClient (SWIFT_EXTENSION(MoEngageCore)) <MoEngageNetworkRequestProtocol>
- (void)executeRequest:(NSURLRequest * _Nonnull)request forSdkConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig withConfigController:(MoEngageSDKInstance * _Nonnull)configController completionHandler:(void (^ _Nonnull)(BOOL, NSInteger, NSDictionary * _Nullable))completionHandler;
- (void)downloadImageURL:(NSURL * _Nonnull)imageURL forSdkConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig dataCompletionHandler:(void (^ _Nonnull)(BOOL, NSData * _Nullable))dataCompletionHandler;
@end


SWIFT_CLASS("_TtC12MoEngageCore28MoEngageNetworkConfiguration")
@interface MoEngageNetworkConfiguration : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

enum MoEngageNetworkService : NSInteger;

SWIFT_CLASS("_TtC12MoEngageCore22MoEngageNetworkRequest")
@interface MoEngageNetworkRequest : NSObject
- (nonnull instancetype)init:(MoEngageSDKConfig * _Nonnull)sdkConfig configController:(MoEngageSDKInstance * _Nonnull)configController serviceType:(enum MoEngageNetworkService)serviceType params:(NSDictionary<NSString *, id> * _Nullable)params additionalHeaders:(NSDictionary<NSString *, id> * _Nullable)additionalHeaders requestBody:(NSDictionary<NSString *, id> * _Nullable)requestBody additionalPathComponent:(NSString * _Nullable)additionalPathComponent OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithSDKConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig OBJC_DESIGNATED_INITIALIZER;
- (void)executeWithCompletionHandler:(void (^ _Nonnull)(BOOL, NSDictionary * _Nullable))completionHandler;
- (void)executeWithCompletionBlockWithResponseCode:(void (^ _Nonnull)(BOOL, NSInteger, NSDictionary * _Nullable))completionBlock;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// MoEngageNetworkService is Enumerator which is used for different API calls in the SDK
typedef SWIFT_ENUM(NSInteger, MoEngageNetworkService, open) {
  MoEngageNetworkServiceGetConfig = 0,
  MoEngageNetworkServiceInitialize = 1,
  MoEngageNetworkServiceSendReports = 2,
  MoEngageNetworkServiceInAppMetaFetch = 3,
  MoEngageNetworkServiceInAppGetPayload = 4,
  MoEngageNetworkServiceInAppGetTestPayload = 5,
  MoEngageNetworkServiceInAppSendStats = 6,
  MoEngageNetworkServiceInboxFetch = 7,
  MoEngageNetworkServiceSendCategories = 8,
  MoEngageNetworkServiceRealTimeTriggersFetch = 9,
  MoEngageNetworkServiceCheckUserInSegment = 10,
  MoEngageNetworkServiceGeofenceHit = 11,
  MoEngageNetworkServiceGeofencesFetch = 12,
  MoEngageNetworkServiceCardsFetch = 13,
  MoEngageNetworkServiceCardsDelete = 14,
  MoEngageNetworkServiceCardsUserActivity = 15,
  MoEngageNetworkServiceCrashLake = 16,
};


SWIFT_CLASS("_TtC12MoEngageCore20MoEngageNetworkUtils")
@interface MoEngageNetworkUtils : NSObject
+ (NSDictionary<NSString *, id> * _Nonnull)getQueryParamsWithSdkConfig:(MoEngageSDKConfig * _Nonnull)sdkConfig isV1ParamsRequired:(BOOL)isV1ParamsRequired SWIFT_WARN_UNUSED_RESULT;
+ (NSString * _Nullable)getDeviceUniqueID SWIFT_WARN_UNUSED_RESULT;
+ (BOOL)isDeviceUniqueIDPresentInKeyChain SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

typedef SWIFT_ENUM(NSInteger, MoEngagePartnerIntegrationType, open) {
  MoEngagePartnerIntegrationTypeSegment = 0,
};


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore31MoEngageRealTimeTriggerDelegate")
@interface MoEngageRealTimeTriggerDelegate : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


/// This class is used for internal purpose. Do not use any of the methods explicitly.
SWIFT_CLASS("_TtC12MoEngageCore30MoEngageRealTimeTriggerManager")
@interface MoEngageRealTimeTriggerManager : NSObject
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageRealTimeTriggerManager * _Nonnull sharedInstance;)
+ (MoEngageRealTimeTriggerManager * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (void)initializeRTTWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationDidEnterForegroundWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
- (void)applicationWillBecomeInActiveWithSdkInstance:(MoEngageSDKInstance * _Nonnull)sdkInstance;
@end


SWIFT_CLASS("_TtC12MoEngageCore29MoEngageRemoteAnalyticsConfig")
@interface MoEngageRemoteAnalyticsConfig : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class MoEngageRemoteModuleStatus;
@class MoEngageRemoteInAppConfig;

SWIFT_CLASS("_TtC12MoEngageCore27MoEngageRemoteConfiguration")
@interface MoEngageRemoteConfiguration : NSObject
@property (nonatomic, readonly) BOOL isAppEnabled;
@property (nonatomic, readonly, strong) MoEngageRemoteModuleStatus * _Nonnull moduleStatus;
@property (nonatomic, readonly, strong) MoEngageRemoteInAppConfig * _Nonnull inAppConfig;
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore32MoEngageRemoteDataTrackingConfig")
@interface MoEngageRemoteDataTrackingConfig : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore25MoEngageRemoteInAppConfig")
@interface MoEngageRemoteInAppConfig : NSObject
@property (nonatomic, readonly) BOOL isStatsEnabled;
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore23MoEngageRemoteLogConfig")
@interface MoEngageRemoteLogConfig : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore26MoEngageRemoteModuleStatus")
@interface MoEngageRemoteModuleStatus : NSObject
@property (nonatomic, readonly) BOOL isInAppEnabled;
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore35MoEngageRemoteRealTimeTriggerConfig")
@interface MoEngageRemoteRealTimeTriggerConfig : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore28MoEngageRemoteSecurityConfig")
@interface MoEngageRemoteSecurityConfig : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


SWIFT_CLASS("_TtC12MoEngageCore17MoEngageSDKConfig")
@interface MoEngageSDKConfig : NSObject
@property (nonatomic, readonly, copy) NSString * _Nonnull moeAppID;
@property (nonatomic) enum MoEngageDataCenter moeDataCenter;
@property (nonatomic, copy) NSString * _Nonnull appGroupID;
@property (nonatomic) NSInteger analyticsPeriodicFlushDuration;
@property (nonatomic) BOOL analyticsDisablePeriodicFlush;
@property (nonatomic) BOOL encryptNetworkRequests;
@property (nonatomic, readonly, copy) NSString * _Nonnull identifier;
@property (nonatomic, readonly) BOOL isDefaultInstance;
@property (nonatomic, readonly) BOOL isTestEnvironment;
@property (nonatomic) BOOL enableLogs;
@property (nonatomic, strong) MoEngageInAppConfig * _Nonnull inAppConfig;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
- (nonnull instancetype)initWithAppID:(NSString * _Nonnull)appID OBJC_DESIGNATED_INITIALIZER;
- (void)updateConfigForTestEnvironment;
- (void)setPartnerIntegrationTypeWithIntegrationType:(enum MoEngagePartnerIntegrationType)integrationType;
@property (nonatomic, readonly, copy) NSString * _Nonnull description;
@end


SWIFT_CLASS("_TtC12MoEngageCore19MoEngageSDKInstance")
@interface MoEngageSDKInstance : NSObject
@property (nonatomic, readonly, strong) MoEngageSDKConfig * _Nonnull sdkConfig;
@property (nonatomic, readonly, strong) dispatch_queue_t _Nonnull sdkQueue;
- (void)updateRemoteConfig:(MoEngageRemoteConfiguration * _Nonnull)config;
- (MoEngageRemoteConfiguration * _Nonnull)getRemoteConfig SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

/// Enum to set the SDK State
typedef SWIFT_ENUM(NSInteger, MoEngageSDKState, open) {
/// To enable the SDK
  MoEngageSDKStateEnabled = 0,
/// To disable the SDK
  MoEngageSDKStateDisabled = 1,
};


SWIFT_CLASS("_TtC12MoEngageCore22MoEngageSDKStateHelper")
@interface MoEngageSDKStateHelper : NSObject
+ (void)isSDKEnabledWithAppID:(NSString * _Nullable)appID completion:(void (^ _Nonnull)(BOOL))completion;
+ (void)isSDKInitializedWithAppID:(NSString * _Nullable)appID completion:(void (^ _Nonnull)(BOOL))completion;
+ (void)isSDKInitialized:(void (^ _Nonnull)(BOOL))completion;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end



SWIFT_CLASS("_TtC12MoEngageCore17ValidateExtension")
@interface ValidateExtension : NSObject
+ (BOOL)isFromExtension SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif
