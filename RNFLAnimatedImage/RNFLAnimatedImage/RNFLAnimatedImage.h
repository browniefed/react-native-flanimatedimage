//
//  RNFLAnimatedImage.h
//  react_native_flanimatedimage
//
//  Created by Jason Brown on 11/23/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import "RCTEventDispatcher.h"
#import "RCTView.h"
#import "FLAnimatedImage/FLAnimatedImage.h"



@class RCTEventDispatcher;


@interface RNFLAnimatedImage : UIView

@property (nonatomic, assign) NSString *src;
@property (nonatomic, assign) NSNumber *contentMode;

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;

@end