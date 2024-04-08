#if 0
#elif defined(__arm64__) && __arm64__
// Generated by Apple Swift version 5.10 (swiftlang-5.10.0.13 clang-1500.3.9.4)
#ifndef MOENGAGEANALYTICS_SWIFT_H
#define MOENGAGEANALYTICS_SWIFT_H
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
#if defined(__arm64e__) && __has_include(<ptrauth.h>)
# include <ptrauth.h>
#else
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wreserved-macro-identifier"
# ifndef __ptrauth_swift_value_witness_function_pointer
#  define __ptrauth_swift_value_witness_function_pointer(x)
# endif
# ifndef __ptrauth_swift_class_method_pointer
#  define __ptrauth_swift_class_method_pointer(x)
# endif
#pragma clang diagnostic pop
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
#if !defined(SWIFT_C_INLINE_THUNK)
# if __has_attribute(always_inline)
# if __has_attribute(nodebug)
#  define SWIFT_C_INLINE_THUNK inline __attribute__((always_inline)) __attribute__((nodebug))
# else
#  define SWIFT_C_INLINE_THUNK inline __attribute__((always_inline))
# endif
# else
#  define SWIFT_C_INLINE_THUNK inline
# endif
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
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="MoEngageAnalytics",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

#if defined(__OBJC__)
@class MoEngageAccountMeta;

/// Protocol for all Analytics related Events
SWIFT_PROTOCOL("_TtP17MoEngageAnalytics25MoEngageAnalyticsCallBack_")
@protocol MoEngageAnalyticsCallBack
@optional
/// Callback received when Force Logout is done
/// \param accountMeta MoEngageAccount information
///
- (void)didLogOutFrom:(MoEngageAccountMeta * _Nonnull)accountMeta;
@end

@class NSString;

/// :nodoc:
SWIFT_CLASS("_TtC17MoEngageAnalytics24MoEngageAnalyticsHandler")
@interface MoEngageAnalyticsHandler : NSObject
/// Set boolean user attribute
/// \param value Boolean value i.e True/False
///
/// \param attributeName attribute name
///
/// \param appID MoEngage Account Identifier
///
+ (void)setUserAttributeBool:(BOOL)value withAttributeName:(NSString * _Nonnull)attributeName forAppID:(NSString * _Nullable)appID;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

/// Enum to set app status
typedef SWIFT_ENUM(NSInteger, MoEngageAppStatus, open) {
/// App Status to indicate fresh install
  MoEngageAppStatusInstall = 0,
/// App Status to indicate Update.
  MoEngageAppStatusUpdate = 1,
};


/// Class responsible to create location instance
SWIFT_CLASS("_TtC17MoEngageAnalytics19MoEngageGeoLocation")
@interface MoEngageGeoLocation : NSObject
/// Latitude of the location
@property (nonatomic) double latitude;
/// Longitude of the location
@property (nonatomic) double longitude;
/// Initialize method to create an instance of <code>MoEngageGeoLocation</code>
/// \param lat Latitude of the location
///
/// \param lng Longitude of the location
///
- (nonnull instancetype)initWithLatitude:(double)lat andLongitude:(double)lng OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class NSDate;

/// Class responsible to build attributes for event
SWIFT_CLASS("_TtC17MoEngageAnalytics18MoEngageProperties")
@interface MoEngageProperties : NSObject
/// Create <code>MoEngageProperties</code> instance with given attributedDict
/// \param attributesDict attributes dict for the event
///
- (nonnull instancetype)initWithAttributes:(NSDictionary<NSString *, id> * _Nullable)attributesDict OBJC_DESIGNATED_INITIALIZER;
/// :nodoc:
- (void)updateAttributesWithPluginPayload:(NSDictionary<NSString *, id> * _Nullable)payloadDict;
/// Add an attribute to <code>MoEngageProperties</code>
/// \param attrVal attribute value
///
/// \param attrName attribute name
///
- (void)addAttribute:(id _Nullable)attrVal withName:(NSString * _Nonnull)attrName;
/// Add Location attribute to <code>MoEngageProperties</code>
/// \param attrVal location attribute of type <code>MoEngageGeoLocation</code>
///
/// \param attrVal location attribute of type <code>MoEngageGeoLocation</code>
///
/// \param attrName attribute name
///
- (void)addLocationAttribute:(MoEngageGeoLocation * _Nonnull)attrVal withName:(NSString * _Nonnull)attrName;
/// Add date attribute to  <code>MoEngageProperties</code>
/// \param attrVal value of type <code>Date</code>
///
/// \param attrName attribute name
///
- (void)addDateAttribute:(NSDate * _Nonnull)attrVal withName:(NSString * _Nonnull)attrName;
/// Add ISO date attribute to  <code>MoEngageProperties</code>
/// note:
/// ISO format accepted  yyyy-MM-dd’T’HH:mm:ss.SSS’Z’ /  yyyy-MM-dd’T’HH:mm:ss’Z’
/// \param dateString ISO date string
///
/// \param attrName attribute value
///
- (void)addDateISOStringAttribute:(NSString * _Nonnull)dateString withName:(NSString * _Nonnull)attrName;
/// Add Epoch Date attribute to <code>MoEngageProperties</code>
/// \param epoch Date attribute of type Double
///
/// \param attrName attribute name
///
- (void)addDateEpochAttribute:(double)epoch withName:(NSString * _Nonnull)attrName;
/// Set the event as non-interactive.
- (void)setNonInteractive;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

@class NSURL;
enum MoEngageUserGender : NSInteger;

/// Class to track data on the MoEngage Platform.
SWIFT_CLASS("_TtC17MoEngageAnalytics20MoEngageSDKAnalytics")
@interface MoEngageSDKAnalytics : NSObject
/// Singleton class instance
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) MoEngageSDKAnalytics * _Nonnull sharedInstance;)
+ (MoEngageSDKAnalytics * _Nonnull)sharedInstance SWIFT_WARN_UNUSED_RESULT;
/// Method to update SDK version
/// :nodoc:
- (void)trackSDKVersion;
/// :nodoc:
- (void)updateSessionSourceWithPushPayload:(NSDictionary * _Nonnull)payload fromMoEngage:(BOOL)isMoEngagePush;
/// :nodoc:
- (void)updateSessionSourceWithURL:(NSURL * _Nonnull)url;
/// :nodoc:
- (void)pushTokenUpdatedWithAppId:(NSString * _Nonnull)appId;
/// This method tells the SDK whether it is a fresh install or an existing application was updated.
/// \param appStatus Enum of type <code>MoEngageAppStatus</code>
///
/// \param appID MoEngage Account Identifier.
///
- (void)appStatus:(enum MoEngageAppStatus)appStatus forAppID:(NSString * _Nullable)appID;
/// Track Event for Default MoEngage Instance.
/// \param name name of the event
///
/// \param properties instance of type <code>MoEngageProperties</code> that contains attributes related to event
///
- (void)trackEvent:(NSString * _Nonnull)name withProperties:(MoEngageProperties * _Nullable)properties;
/// Track Event  for Secondary instance
/// \param name event name
///
/// \param properties instance of type <code>MoEngageProperties</code> that contains attributes related to event
///
/// \param appID MoEngage Account Identifier.
///
- (void)trackEvent:(NSString * _Nonnull)name withProperties:(MoEngageProperties * _Nullable)properties forAppID:(NSString * _Nullable)appID;
/// Sync the tracked events instantaneously for Secondary instance
/// \param appID MoEngage Account Identifier.
///
/// \param completionBlock completion block to be called after events are flushed out
///
- (void)flushForAppID:(NSString * _Nullable)appID withCompletionBlock:(void (^ _Nullable)(BOOL))completionBlock;
/// Sync the tracked events instantaneously for Default instance
- (void)flush;
/// Sync the tracked events instantaneously for Secondary instance
/// \param appID MoEngage Account identifier
///
- (void)flushForAppID:(NSString * _Nullable)appID;
/// Sync the tracked events instantaneously for Default instance
/// \param completionBlock completion block to be called after events are flushed out
///
- (void)flushWithCompletionBlock:(void (^ _Nullable)(BOOL))completionBlock;
/// Method to flush  richnotification events for account
/// note:
/// Dont call this method explicitly
/// :nodoc:
/// \param appID optional account identifier.
///
/// \param completionBlock completion block to be called after events are flushed out
///
- (void)flushRichNotificationEventsForAppID:(NSString * _Nullable)appID withCompletionBlock:(void (^ _Nullable)(BOOL))completionBlock;
/// Set custom user attribute for Secondary instance
/// \param value attribute value
///
/// \param attributeName attribute name
///
/// \param appID MoEngage account identifier
///
- (void)setUserAttribute:(id _Nullable)value withAttributeName:(NSString * _Nonnull)attributeName forAppID:(NSString * _Nullable)appID;
/// Set custom user attribute for Default instance
/// \param value attribute value
///
/// \param attributeName attribute name
///
- (void)setUserAttribute:(id _Nullable)value withAttributeName:(NSString * _Nonnull)attributeName;
/// Set epoch time for Secondary instance
/// \param dateEpoch Epoch date of type double
///
/// \param attributeName attribute name of type String
///
/// \param appID MoEngage account identifier
///
- (void)setUserAttributeEpochTime:(double)dateEpoch withAttributeName:(NSString * _Nonnull)attributeName forAppID:(NSString * _Nullable)appID;
/// Set epoch time for Default instance
/// \param dateEpoch Epoch date of type double
///
/// \param attributeName attribute name of type String
///
- (void)setUserAttributeEpochTime:(double)dateEpoch withAttributeName:(NSString * _Nonnull)attributeName;
/// Set User attribute date for Secondary instance
/// \param date attribute value as Date
///
/// \param attributeName attribute name
///
/// \param appID MoEngage account identifier
///
- (void)setUserAttributeDate:(NSDate * _Nonnull)date withAttributeName:(NSString * _Nonnull)attributeName forAppID:(NSString * _Nullable)appID;
/// Set User attribute date for Default instance
/// \param date attribute value as Date
///
/// \param attributeName attribute name
///
- (void)setUserAttributeDate:(NSDate * _Nonnull)date withAttributeName:(NSString * _Nonnull)attributeName;
/// Set User attribute ISO date for Secondary instance
/// note:
/// ISO accepted formats are yyyy-MM-dd’T’HH:mm:ss’Z’/yyyy-MM-dd’T’HH:mm:ss.SSS’Z’
/// \param dateStr ISO date  of type  string
///
/// \param attributeName attribute name
///
/// \param appID MoEngage account identifier
///
- (void)setUserAttributeISODate:(NSString * _Nonnull)dateString withAttributeName:(NSString * _Nonnull)attributeName forAppID:(NSString * _Nullable)appID;
/// Set User attribute ISO date
/// note:
/// ISO accepted formats are yyyy-MM-dd’T’HH:mm:ss’Z’/yyyy-MM-dd’T’HH:mm:ss.SSS’Z’
/// \param dateString ISO date  of type  string
///
/// \param attributeName attribute name
///
- (void)setUserAttributeISODate:(NSString * _Nonnull)dateString withAttributeName:(NSString * _Nonnull)attributeName;
/// Set custom user location for Secondary instance
/// \param location <code>MoEngageGeoLocation</code> instance
///
/// \param attributeName attribute name
///
/// \param appID MoEngage Account Identifier
///
- (void)setLocation:(MoEngageGeoLocation * _Nonnull)location withAttributeName:(NSString * _Nonnull)attributeName forAppID:(NSString * _Nullable)appID;
/// Set custom user location
/// \param location <code>MoEngageGeoLocation</code> instance
///
/// \param attributeName attribute name
///
- (void)setLocation:(MoEngageGeoLocation * _Nonnull)location withAttributeName:(NSString * _Nonnull)attributeName;
/// Set an Alias to update the existing Unique Id for Secondary instance
/// \param alias identifier
///
/// \param appID MoEngage Account Identifier
///
- (void)setAlias:(NSString * _Nonnull)alias forAppID:(NSString * _Nullable)appID;
/// Set an Alias to update the existing Unique Id for Default instance
/// \param alias identifier
///
- (void)setAlias:(NSString * _Nonnull)alias;
/// Set unique ID for Secondary instance
/// \param uniqueID Unique ID
///
/// \param appID MoEngage Account identifier
///
- (void)setUniqueID:(NSString * _Nonnull)uniqueID forAppID:(NSString * _Nullable)appID;
/// Set unique ID for Default instance
/// \param uniqueID Unique ID
///
- (void)setUniqueID:(NSString * _Nonnull)uniqueID;
/// Set Email ID for Secondary instance
/// \param emailID emailID value.
///
/// \param appID MoEngage Account identifier
///
- (void)setEmailID:(NSString * _Nonnull)emailID forAppID:(NSString * _Nullable)appID;
/// Set Email ID
/// \param emailID emailID value.
///
- (void)setEmailID:(NSString * _Nonnull)emailID;
/// Set user name for Secondary instance
/// \param userName User Name value passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setName:(NSString * _Nonnull)userName forAppID:(NSString * _Nullable)appID;
/// Set user name
/// \param userName User Name value passed by user
///
- (void)setName:(NSString * _Nonnull)userName;
/// Set User first name for Secondary instance
/// \param firstName First Name value passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setFirstName:(NSString * _Nonnull)firstName forAppID:(NSString * _Nullable)appID;
/// Set User first name
/// \param firstName First Name value passed by user
///
- (void)setFirstName:(NSString * _Nonnull)firstName;
/// Set User last name for Secondary instance
/// \param lastName Last Name value passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setLastName:(NSString * _Nonnull)lastName forAppID:(NSString * _Nullable)appID;
/// Set User last name
/// \param lastName Last Name value passed by user
///
- (void)setLastName:(NSString * _Nonnull)lastName;
/// Set mobile number for Secondary instance
/// \param mobileNum Mobile Number value passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setMobileNumber:(NSString * _Nonnull)mobileNum forAppID:(NSString * _Nullable)appID;
/// Set mobile number
/// \param mobileNum Mobile Number value passed by user
///
- (void)setMobileNumber:(NSString * _Nonnull)mobileNum;
/// Set User gender for Secondary instance
/// \param gender Gender value passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setGender:(enum MoEngageUserGender)gender forAppID:(NSString * _Nullable)appID;
/// Set User gender
/// \param gender Gender value passed by user
///
- (void)setGender:(enum MoEngageUserGender)gender;
/// Set User Date of Birth for Secondary instance
/// \param dob Date of Birth passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setDateOfBirth:(NSDate * _Nonnull)dob forAppID:(NSString * _Nullable)appID;
/// Set User Date of Birth
/// \param dob Date of Birth passed by user
///
- (void)setDateOfBirth:(NSDate * _Nonnull)dob;
/// Set user Date of Birth ISO format for Secondary instance
/// note:
/// ISO format accepted  yyyy-MM-dd’T’HH:mm:ss.SSS’Z’ /  yyyy-MM-dd’T’HH:mm:ss’Z’
/// \param dateString attribute value accepted in ISO format
///
/// \param appID MoEngage Account identifier
///
- (void)setDateOfBirthInISO:(NSString * _Nonnull)dateString forAppID:(NSString * _Nullable)appID;
/// Method to set user date of birth ISO format
/// note:
/// ISO format accepted  yyyy-MM-dd’T’HH:mm:ss.SSS’Z’ /  yyyy-MM-dd’T’HH:mm:ss’Z’
/// \param dateString attribute value accepted in ISO format
///
- (void)setDateOfBirthInISO:(NSString * _Nonnull)dateString;
/// Set user location for Secondary instance
/// \param location Location passed by user
///
/// \param appID MoEngage Account identifier
///
- (void)setLocation:(MoEngageGeoLocation * _Nonnull)location forAppID:(NSString * _Nullable)appID;
/// Set user location
/// \param location Location passed by user
///
- (void)setLocation:(MoEngageGeoLocation * _Nonnull)location;
/// Track user attribute push preference
/// \param isPushEnabled true if Push is enabled else false.
///
/// \param appID MoEngage Account identifier
///
- (void)trackUserPushPreference:(BOOL)isPushEnabled forAppID:(NSString * _Nullable)appID;
/// Tracks device locale.
- (void)trackLocale;
/// Tracks device locale.
/// \param appID MoEngage Account identifier
///
- (void)trackLocaleForAppID:(NSString * _Nullable)appID;
/// Invalidates the existing sessions and user attributes and treats all actions performed by the user as a new user after this method is called
/// \param appID optional account identifier.
///
/// \param completionBlock Returns true if reset is successful else false
///
- (void)resetUserForAppID:(NSString * _Nullable)appID withCompletionBlock:(void (^ _Nullable)(BOOL))completionBlock;
/// Invalidates the existing sessions and user attributes and treats all actions performed by the user as a new user after this method is called
- (void)resetUser;
/// Invalidates the existing sessions and user attributes and treats all actions performed by the user as a new user after this method is called
/// \param completionBlock Returns true if reset is successful else false
///
- (void)resetUserWithCompletionBlock:(void (^ _Nullable)(BOOL))completionBlock;
/// Invalidates the existing sessions and user attributes and treats all actions performed by the user as a new user after this method is called
/// \param appID MoEngage Account identifier
///
- (void)resetUserForAppID:(NSString * _Nullable)appID;
/// API to enable data tracking.
/// \param appID MoEngage Account identifier
///
- (void)enableDataTrackingForAppID:(NSString * _Nullable)appID;
/// API to enable data tracking.
- (void)enableDataTracking;
/// Optionally opt-out of data tracking. When data tracking is opted out no custom event or user attribute is tracked on MoEngage Platform.
/// \param appID MoEngage Account identifier
///
- (void)disableDataTrackingForAppID:(NSString * _Nullable)appID;
/// Optionally opt-out of data tracking. When data tracking is opted out no custom event or user attribute is tracked on MoEngage Platform.
- (void)disableDataTracking;
/// Enable IDFA tracking
/// \param appID MoEngage Account identifier
///
- (void)enableIDFATrackingForAppID:(NSString * _Nullable)appID;
/// Enable IDFA tracking
- (void)enableIDFATracking;
/// Disable IDFA tracking
/// \param appID MoEngage Account identifier
///
- (void)disableIDFATrackingForAppID:(NSString * _Nullable)appID;
/// Disable IDFA tracking
- (void)disableIDFATracking;
/// Enable  IDFV tracking
/// \param appID MoEngage Account identifier
///
- (void)enableIDFVTrackingForAppID:(NSString * _Nullable)appID;
/// Enable  IDFV tracking
- (void)enableIDFVTracking;
/// Disable IDFV tracking
/// \param appID MoEngage Account identifier
///
- (void)disableIDFVTrackingForAppID:(NSString * _Nullable)appID;
/// Disable IDFV tracking
- (void)disableIDFVTracking;
/// Update  source  based on  query params of the URL
/// \param url URL that contains source information in query params
///
- (void)processURL:(NSURL * _Nullable)url;
/// Set the Analytics delegate to get the callback for various Analytics events
/// \param delegate Instance that confirms to <code>MoEngageAnalyticsProtocol</code>
///
/// \param appID Optional Account Identifier
///
- (void)setDelegateWithDelegate:(id <MoEngageAnalyticsCallBack> _Nonnull)delegate forAppID:(NSString * _Nullable)appID;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

/// Enum to set the user gender
typedef SWIFT_ENUM(NSInteger, MoEngageUserGender, open) {
/// User gender male
  MoEngageUserGenderMale = 0,
/// User gender female
  MoEngageUserGenderFemale = 1,
/// User gender others
  MoEngageUserGenderOthers = 2,
};

#endif
#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#if defined(__cplusplus)
#endif
#pragma clang diagnostic pop
#endif

#else
#error unsupported Swift architecture
#endif
