#import <Foundation/Foundation.h>
#import "RCTBridge.h"
#import "RNFLAnimatedImageManager.h"
#import "RNFLAnimatedImage.h"


@implementation RNFLAnimatedImageManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;


- (UIView *)view
{
  return [[RNFLAnimatedImage alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString)

@end