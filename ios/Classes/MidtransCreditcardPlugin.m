#import "MidtransCreditcardPlugin.h"
#if __has_include(<midtrans_creditcard/midtrans_creditcard-Swift.h>)
#import <midtrans_creditcard/midtrans_creditcard-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "midtrans_creditcard-Swift.h"
#endif

@implementation MidtransCreditcardPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMidtransCreditcardPlugin registerWithRegistrar:registrar];
}
@end
