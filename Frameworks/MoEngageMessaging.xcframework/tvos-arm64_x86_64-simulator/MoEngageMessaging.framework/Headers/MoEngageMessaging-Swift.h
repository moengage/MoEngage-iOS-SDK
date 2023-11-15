#if 0
#elif defined(__arm64__) && __arm64__
// Generated by Apple Swift version 5.8.1 (swiftlang-5.8.0.124.5 clang-1403.0.22.11.100)
#ifndef MOENGAGEMESSAGING_SWIFT_H
#define MOENGAGEMESSAGING_SWIFT_H
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
#if defined(__OBJC__)
#include <Foundation/Foundation.h>
#endif
#if defined(__cplusplus)
#include <cstdint>
#include <cstddef>
#include <cstdbool>
#include <cstring>
#include <stdlib.h>
#include <new>
#include <type_traits>
#else
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <string.h>
#endif
#if defined(__cplusplus)
#if __has_include(<ptrauth.h>)
# include <ptrauth.h>
#else
# ifndef __ptrauth_swift_value_witness_function_pointer
#  define __ptrauth_swift_value_witness_function_pointer(x)
# endif
#endif
#endif

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
#if !defined(SWIFT_RUNTIME_NAME)
# if __has_attribute(objc_runtime_name)
#  define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
# else
#  define SWIFT_RUNTIME_NAME(X) 
# endif
#endif
#if !defined(SWIFT_COMPILE_NAME)
# if __has_attribute(swift_name)
#  define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
# else
#  define SWIFT_COMPILE_NAME(X) 
# endif
#endif
#if !defined(SWIFT_METHOD_FAMILY)
# if __has_attribute(objc_method_family)
#  define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
# else
#  define SWIFT_METHOD_FAMILY(X) 
# endif
#endif
#if !defined(SWIFT_NOESCAPE)
# if __has_attribute(noescape)
#  define SWIFT_NOESCAPE __attribute__((noescape))
# else
#  define SWIFT_NOESCAPE 
# endif
#endif
#if !defined(SWIFT_RELEASES_ARGUMENT)
# if __has_attribute(ns_consumed)
#  define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
# else
#  define SWIFT_RELEASES_ARGUMENT 
# endif
#endif
#if !defined(SWIFT_WARN_UNUSED_RESULT)
# if __has_attribute(warn_unused_result)
#  define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
# else
#  define SWIFT_WARN_UNUSED_RESULT 
# endif
#endif
#if !defined(SWIFT_NORETURN)
# if __has_attribute(noreturn)
#  define SWIFT_NORETURN __attribute__((noreturn))
# else
#  define SWIFT_NORETURN 
# endif
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
# if __has_attribute(enum_extensibility)
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
#if !defined(SWIFT_DEPRECATED_OBJC)
# if __has_feature(attribute_diagnose_if_objc)
#  define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
# else
#  define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
# endif
#endif
#if defined(__OBJC__)
#if !defined(IBSegueAction)
# define IBSegueAction 
#endif
#endif
#if !defined(SWIFT_EXTERN)
# if defined(__cplusplus)
#  define SWIFT_EXTERN extern "C"
# else
#  define SWIFT_EXTERN extern
# endif
#endif
#if !defined(SWIFT_CALL)
# define SWIFT_CALL __attribute__((swiftcall))
#endif
#if !defined(SWIFT_INDIRECT_RESULT)
# define SWIFT_INDIRECT_RESULT __attribute__((swift_indirect_result))
#endif
#if !defined(SWIFT_CONTEXT)
# define SWIFT_CONTEXT __attribute__((swift_context))
#endif
#if !defined(SWIFT_ERROR_RESULT)
# define SWIFT_ERROR_RESULT __attribute__((swift_error_result))
#endif
#if defined(__cplusplus)
# define SWIFT_NOEXCEPT noexcept
#else
# define SWIFT_NOEXCEPT 
#endif
#if defined(_WIN32)
#if !defined(SWIFT_IMPORT_STDLIB_SYMBOL)
# define SWIFT_IMPORT_STDLIB_SYMBOL __declspec(dllimport)
#endif
#else
#if !defined(SWIFT_IMPORT_STDLIB_SYMBOL)
# define SWIFT_IMPORT_STDLIB_SYMBOL 
#endif
#endif
#if defined(__OBJC__)
#if __has_feature(objc_modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import Foundation;
@import ObjectiveC;
@import UIKit;
#endif

#endif
#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="MoEngageMessaging",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

#if defined(__OBJC__)
@class NSString;
@class NSObject;

/// An interface for processing  various notification actions.
SWIFT_PROTOCOL("_TtP17MoEngageMessaging25MoEngageMessagingDelegate_")
@protocol MoEngageMessagingDelegate
@optional
/// Callback received when device token is generated on successful Push registration
/// \param deviceToken Identifier for the Apple Push Notification System
///
- (void)notificationRegisteredWithDeviceToken:(NSString * _Nonnull)deviceToken;
/// Callback received when notification is received.
/// \param userInfo Dictionary that contains the entire push payload
///
- (void)notificationReceivedWithPushPayload:(NSDictionary * _Nonnull)userInfo;
/// Callback received when notification is clicked.
/// \param userInfo Dictionary that contains the entire push payload
///
- (void)notificationClickedWithPushPayload:(NSDictionary * _Nonnull)userInfo;
/// Callback received when notification is clicked.
/// \param screenName If the action type is Navigation then the <code>screenName</code> indicates the name of the screen to which  navigation has to be performed
///
/// \param kvPairs Custom key-value pairs entered while creating the campaign for the action.
///
- (void)notificationClickedWithScreenName:(NSString * _Nullable)screenName andKVPairs:(NSDictionary * _Nullable)kvPairs;
/// Callback received when notification is clicked.
/// \param screenName If the action type is Navigation then the <code>screenName</code> indicates the name of the screen to which  navigation has to be performed
///
/// \param kvPairs Custom key-value pairs entered while creating the campaign for the action.
///
/// \param userInfo Dictionary that contains the entire push payload
///
- (void)notificationClickedWithScreenName:(NSString * _Nullable)screenName kvPairs:(NSDictionary * _Nullable)kvPairs andPushPayload:(NSDictionary * _Nonnull)userInfo;
@end


/// :nodoc:
SWIFT_CLASS("_TtC17MoEngageMessaging22MoEngageMessagingUtils")
@interface MoEngageMessagingUtils : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UNNotificationCategory;
@protocol UNUserNotificationCenterDelegate;
@class NSData;
@class UNUserNotificationCenter;
@class UNNotification;
@class UNNotificationResponse;
@class UIApplication;

/// Class responsible for Push integration
SWIFT_CLASS("_TtC17MoEngageMessaging20MoEngageSDKMessaging")
@interface MoEngageSDKMessaging : NSObject
/// Singleton instance
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageSDKMessaging * _Nonnull sharedInstance;)
+ (MoEngageSDKMessaging * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
/// Requests the user’s authorization to allow local and remote notifications for your app.
/// \param categories A type of notification your app supports and the custom actions that the system displays.
///
/// \param delegate The interface for handling incoming notifications and notification-related actions.
///
- (void)registerForRemoteNotificationWithCategories:(NSSet<UNNotificationCategory *> * _Nullable)categories andUserNotificationCenterDelegate:(id <UNUserNotificationCenterDelegate> _Nullable)delegate SWIFT_AVAILABILITY(tvos,unavailable);
/// Method to add the notification categories to the existing list of <code>MOE_DISMISS_CATEGORY</code> and <code>MOE_PUSH_TEMPLATE</code> category.
/// \param categories Set of categories.
///
- (void)setUserNotificationCategories:(NSSet<UNNotificationCategory *> * _Nullable)categories SWIFT_AVAILABILITY(tvos,unavailable);
/// Method to disable the badge reset by SDK.
/// :nodoc:
- (void)disableBadgeReset SWIFT_AVAILABILITY(tvos,unavailable);
/// Set the delegate inorder to receive the notification related callbacks
/// \param delegate Instance that conforms to <code>MoEngageMessagingDelegate</code> protocol.
///
- (void)setMessagingDelegate:(id <MoEngageMessagingDelegate> _Nullable)delegate SWIFT_AVAILABILITY(tvos,unavailable);
/// Set the delegate inorder to receive the notification related callbacksfor Secondary MoEngage Instance.
/// \param delegate Instance that conforms to <code>MoEngageMessagingDelegate</code> protocol.
///
/// \param appID MoEngage Account Identifier
///
- (void)setMessagingDelegate:(id <MoEngageMessagingDelegate> _Nullable)delegate forAppID:(NSString * _Nullable)appID SWIFT_AVAILABILITY(tvos,unavailable);
/// In case you have disabled swizzling,  call this method to pass the device token to MoEngage SDK
/// \param deviceToken Identifier for the Apple Push Notification System
///
- (void)setPushToken:(NSData * _Nullable)deviceToken SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method when notification registration fails
- (void)didFailToRegisterForPush SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method on receiving the notification
/// \param center The central object for managing notification-related activities for your app or app extension.
///
/// \param notification The data for a local or remote notification the system delivers to your app.
///
- (void)userNotificationCenter:(UNUserNotificationCenter * _Nonnull)center willPresent:(UNNotification * _Nonnull)notification SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method on performing any action the notification
/// \param center The central object for managing notification-related activities for your app or app extension.
///
/// \param response The user’s response to an actionable notification.
///
- (void)userNotificationCenter:(UNUserNotificationCenter * _Nonnull)center didReceive:(UNNotificationResponse * _Nonnull)response SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method when remote notification is received in iOS 9 and below.
/// \param application The centralized point of control and coordination for apps running in iOS.
///
/// \param pushPayload Dictionary that contains entire Push payload
/// :nodoc:
///
- (void)didReceieveNotificationInApplication:(UIApplication * _Nullable)application withInfo:(NSDictionary * _Nonnull)pushPayload SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// Method to process inbox notification and handle the action associated with  it.
/// \param pushPayload Dictionary that  represents entire push payload
///
/// \param instanceID MoEngage Account Identifier.
/// :nodoc:
///
- (void)processWithNotificationPayload:(NSDictionary * _Nonnull)pushPayload forInstanceID:(NSString * _Nonnull)instanceID SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// Method to disable badge reset by SDK
/// \param disable Pass true to disable badge reset
///
- (void)disableBadgeReset:(BOOL)disable SWIFT_AVAILABILITY(tvos,unavailable);
/// Method to check if Moengage Push is silent notification
/// \param launchOptions Dictionary that system passes to application at the time of initialization
///
///
/// returns:
/// true if moengage notification is silent notification else false.
/// :nodoc:
+ (BOOL)isMoEngageSilentPushAppLaunchWithLaunchOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT SWIFT_AVAILABILITY(tvos,unavailable);
/// Track notification received impression
/// \param payload APNS notification payload
///
- (void)logNotificationReceivedWithPayload:(NSDictionary * _Nonnull)payload SWIFT_AVAILABILITY(tvos,unavailable);
/// Track notification click impression
/// \param payload APNS notification payload
///
- (void)logNotificationClickedWithPayload:(NSDictionary * _Nonnull)payload SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// Validate if the notification belongs to MoEngage
/// \param payload APNS notification payload
///
///
/// returns:
/// true if notification belongs to MoEngage else false.
- (BOOL)isPushFromMoEngageWithPayload:(NSDictionary * _Nonnull)payload SWIFT_WARN_UNUSED_RESULT SWIFT_AVAILABILITY(tvos,unavailable);
@end

#endif
#if defined(__cplusplus)
#endif
#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif

#elif defined(__x86_64__) && __x86_64__
// Generated by Apple Swift version 5.8.1 (swiftlang-5.8.0.124.5 clang-1403.0.22.11.100)
#ifndef MOENGAGEMESSAGING_SWIFT_H
#define MOENGAGEMESSAGING_SWIFT_H
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
#if defined(__OBJC__)
#include <Foundation/Foundation.h>
#endif
#if defined(__cplusplus)
#include <cstdint>
#include <cstddef>
#include <cstdbool>
#include <cstring>
#include <stdlib.h>
#include <new>
#include <type_traits>
#else
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <string.h>
#endif
#if defined(__cplusplus)
#if __has_include(<ptrauth.h>)
# include <ptrauth.h>
#else
# ifndef __ptrauth_swift_value_witness_function_pointer
#  define __ptrauth_swift_value_witness_function_pointer(x)
# endif
#endif
#endif

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
#if !defined(SWIFT_RUNTIME_NAME)
# if __has_attribute(objc_runtime_name)
#  define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
# else
#  define SWIFT_RUNTIME_NAME(X) 
# endif
#endif
#if !defined(SWIFT_COMPILE_NAME)
# if __has_attribute(swift_name)
#  define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
# else
#  define SWIFT_COMPILE_NAME(X) 
# endif
#endif
#if !defined(SWIFT_METHOD_FAMILY)
# if __has_attribute(objc_method_family)
#  define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
# else
#  define SWIFT_METHOD_FAMILY(X) 
# endif
#endif
#if !defined(SWIFT_NOESCAPE)
# if __has_attribute(noescape)
#  define SWIFT_NOESCAPE __attribute__((noescape))
# else
#  define SWIFT_NOESCAPE 
# endif
#endif
#if !defined(SWIFT_RELEASES_ARGUMENT)
# if __has_attribute(ns_consumed)
#  define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
# else
#  define SWIFT_RELEASES_ARGUMENT 
# endif
#endif
#if !defined(SWIFT_WARN_UNUSED_RESULT)
# if __has_attribute(warn_unused_result)
#  define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
# else
#  define SWIFT_WARN_UNUSED_RESULT 
# endif
#endif
#if !defined(SWIFT_NORETURN)
# if __has_attribute(noreturn)
#  define SWIFT_NORETURN __attribute__((noreturn))
# else
#  define SWIFT_NORETURN 
# endif
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
# if __has_attribute(enum_extensibility)
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
#if !defined(SWIFT_DEPRECATED_OBJC)
# if __has_feature(attribute_diagnose_if_objc)
#  define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
# else
#  define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
# endif
#endif
#if defined(__OBJC__)
#if !defined(IBSegueAction)
# define IBSegueAction 
#endif
#endif
#if !defined(SWIFT_EXTERN)
# if defined(__cplusplus)
#  define SWIFT_EXTERN extern "C"
# else
#  define SWIFT_EXTERN extern
# endif
#endif
#if !defined(SWIFT_CALL)
# define SWIFT_CALL __attribute__((swiftcall))
#endif
#if !defined(SWIFT_INDIRECT_RESULT)
# define SWIFT_INDIRECT_RESULT __attribute__((swift_indirect_result))
#endif
#if !defined(SWIFT_CONTEXT)
# define SWIFT_CONTEXT __attribute__((swift_context))
#endif
#if !defined(SWIFT_ERROR_RESULT)
# define SWIFT_ERROR_RESULT __attribute__((swift_error_result))
#endif
#if defined(__cplusplus)
# define SWIFT_NOEXCEPT noexcept
#else
# define SWIFT_NOEXCEPT 
#endif
#if defined(_WIN32)
#if !defined(SWIFT_IMPORT_STDLIB_SYMBOL)
# define SWIFT_IMPORT_STDLIB_SYMBOL __declspec(dllimport)
#endif
#else
#if !defined(SWIFT_IMPORT_STDLIB_SYMBOL)
# define SWIFT_IMPORT_STDLIB_SYMBOL 
#endif
#endif
#if defined(__OBJC__)
#if __has_feature(objc_modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import Foundation;
@import ObjectiveC;
@import UIKit;
#endif

#endif
#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="MoEngageMessaging",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

#if defined(__OBJC__)
@class NSString;
@class NSObject;

/// An interface for processing  various notification actions.
SWIFT_PROTOCOL("_TtP17MoEngageMessaging25MoEngageMessagingDelegate_")
@protocol MoEngageMessagingDelegate
@optional
/// Callback received when device token is generated on successful Push registration
/// \param deviceToken Identifier for the Apple Push Notification System
///
- (void)notificationRegisteredWithDeviceToken:(NSString * _Nonnull)deviceToken;
/// Callback received when notification is received.
/// \param userInfo Dictionary that contains the entire push payload
///
- (void)notificationReceivedWithPushPayload:(NSDictionary * _Nonnull)userInfo;
/// Callback received when notification is clicked.
/// \param userInfo Dictionary that contains the entire push payload
///
- (void)notificationClickedWithPushPayload:(NSDictionary * _Nonnull)userInfo;
/// Callback received when notification is clicked.
/// \param screenName If the action type is Navigation then the <code>screenName</code> indicates the name of the screen to which  navigation has to be performed
///
/// \param kvPairs Custom key-value pairs entered while creating the campaign for the action.
///
- (void)notificationClickedWithScreenName:(NSString * _Nullable)screenName andKVPairs:(NSDictionary * _Nullable)kvPairs;
/// Callback received when notification is clicked.
/// \param screenName If the action type is Navigation then the <code>screenName</code> indicates the name of the screen to which  navigation has to be performed
///
/// \param kvPairs Custom key-value pairs entered while creating the campaign for the action.
///
/// \param userInfo Dictionary that contains the entire push payload
///
- (void)notificationClickedWithScreenName:(NSString * _Nullable)screenName kvPairs:(NSDictionary * _Nullable)kvPairs andPushPayload:(NSDictionary * _Nonnull)userInfo;
@end


/// :nodoc:
SWIFT_CLASS("_TtC17MoEngageMessaging22MoEngageMessagingUtils")
@interface MoEngageMessagingUtils : NSObject
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class UNNotificationCategory;
@protocol UNUserNotificationCenterDelegate;
@class NSData;
@class UNUserNotificationCenter;
@class UNNotification;
@class UNNotificationResponse;
@class UIApplication;

/// Class responsible for Push integration
SWIFT_CLASS("_TtC17MoEngageMessaging20MoEngageSDKMessaging")
@interface MoEngageSDKMessaging : NSObject
/// Singleton instance
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageSDKMessaging * _Nonnull sharedInstance;)
+ (MoEngageSDKMessaging * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
/// Requests the user’s authorization to allow local and remote notifications for your app.
/// \param categories A type of notification your app supports and the custom actions that the system displays.
///
/// \param delegate The interface for handling incoming notifications and notification-related actions.
///
- (void)registerForRemoteNotificationWithCategories:(NSSet<UNNotificationCategory *> * _Nullable)categories andUserNotificationCenterDelegate:(id <UNUserNotificationCenterDelegate> _Nullable)delegate SWIFT_AVAILABILITY(tvos,unavailable);
/// Method to add the notification categories to the existing list of <code>MOE_DISMISS_CATEGORY</code> and <code>MOE_PUSH_TEMPLATE</code> category.
/// \param categories Set of categories.
///
- (void)setUserNotificationCategories:(NSSet<UNNotificationCategory *> * _Nullable)categories SWIFT_AVAILABILITY(tvos,unavailable);
/// Method to disable the badge reset by SDK.
/// :nodoc:
- (void)disableBadgeReset SWIFT_AVAILABILITY(tvos,unavailable);
/// Set the delegate inorder to receive the notification related callbacks
/// \param delegate Instance that conforms to <code>MoEngageMessagingDelegate</code> protocol.
///
- (void)setMessagingDelegate:(id <MoEngageMessagingDelegate> _Nullable)delegate SWIFT_AVAILABILITY(tvos,unavailable);
/// Set the delegate inorder to receive the notification related callbacksfor Secondary MoEngage Instance.
/// \param delegate Instance that conforms to <code>MoEngageMessagingDelegate</code> protocol.
///
/// \param appID MoEngage Account Identifier
///
- (void)setMessagingDelegate:(id <MoEngageMessagingDelegate> _Nullable)delegate forAppID:(NSString * _Nullable)appID SWIFT_AVAILABILITY(tvos,unavailable);
/// In case you have disabled swizzling,  call this method to pass the device token to MoEngage SDK
/// \param deviceToken Identifier for the Apple Push Notification System
///
- (void)setPushToken:(NSData * _Nullable)deviceToken SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method when notification registration fails
- (void)didFailToRegisterForPush SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method on receiving the notification
/// \param center The central object for managing notification-related activities for your app or app extension.
///
/// \param notification The data for a local or remote notification the system delivers to your app.
///
- (void)userNotificationCenter:(UNUserNotificationCenter * _Nonnull)center willPresent:(UNNotification * _Nonnull)notification SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method on performing any action the notification
/// \param center The central object for managing notification-related activities for your app or app extension.
///
/// \param response The user’s response to an actionable notification.
///
- (void)userNotificationCenter:(UNUserNotificationCenter * _Nonnull)center didReceive:(UNNotificationResponse * _Nonnull)response SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// In case you have disabled swizzling, call this method when remote notification is received in iOS 9 and below.
/// \param application The centralized point of control and coordination for apps running in iOS.
///
/// \param pushPayload Dictionary that contains entire Push payload
/// :nodoc:
///
- (void)didReceieveNotificationInApplication:(UIApplication * _Nullable)application withInfo:(NSDictionary * _Nonnull)pushPayload SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// Method to process inbox notification and handle the action associated with  it.
/// \param pushPayload Dictionary that  represents entire push payload
///
/// \param instanceID MoEngage Account Identifier.
/// :nodoc:
///
- (void)processWithNotificationPayload:(NSDictionary * _Nonnull)pushPayload forInstanceID:(NSString * _Nonnull)instanceID SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// Method to disable badge reset by SDK
/// \param disable Pass true to disable badge reset
///
- (void)disableBadgeReset:(BOOL)disable SWIFT_AVAILABILITY(tvos,unavailable);
/// Method to check if Moengage Push is silent notification
/// \param launchOptions Dictionary that system passes to application at the time of initialization
///
///
/// returns:
/// true if moengage notification is silent notification else false.
/// :nodoc:
+ (BOOL)isMoEngageSilentPushAppLaunchWithLaunchOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions SWIFT_WARN_UNUSED_RESULT SWIFT_AVAILABILITY(tvos,unavailable);
/// Track notification received impression
/// \param payload APNS notification payload
///
- (void)logNotificationReceivedWithPayload:(NSDictionary * _Nonnull)payload SWIFT_AVAILABILITY(tvos,unavailable);
/// Track notification click impression
/// \param payload APNS notification payload
///
- (void)logNotificationClickedWithPayload:(NSDictionary * _Nonnull)payload SWIFT_AVAILABILITY(tvos,unavailable) SWIFT_AVAILABILITY(ios_app_extension,unavailable);
/// Validate if the notification belongs to MoEngage
/// \param payload APNS notification payload
///
///
/// returns:
/// true if notification belongs to MoEngage else false.
- (BOOL)isPushFromMoEngageWithPayload:(NSDictionary * _Nonnull)payload SWIFT_WARN_UNUSED_RESULT SWIFT_AVAILABILITY(tvos,unavailable);
@end

#endif
#if defined(__cplusplus)
#endif
#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif

#else
#error unsupported Swift architecture
#endif
