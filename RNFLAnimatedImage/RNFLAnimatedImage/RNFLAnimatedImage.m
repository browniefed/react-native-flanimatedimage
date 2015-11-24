//
//  RNFLAnimatedImage.m
//  react_native_flanimatedimage
//
//  Created by Jason Brown on 11/23/15.
//  Copyright © 2015 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLAnimatedImage/FLAnimatedImage.h"

#import "RCTBridgeModule.h"
#import "RCTEventDispatcher.h"
#import "UIView+React.h"
#import "RCTLog.h"

#import "RNFLAnimatedImage.h"

@implementation RNFLAnimatedImage : UIView  {

  RCTEventDispatcher *_eventDispatcher;
  FLAnimatedImage *_image;
  FLAnimatedImageView *_imageView;
  
}

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{

  if ((self = [super init])) {
    _eventDispatcher = eventDispatcher;
    _imageView = [[FLAnimatedImageView alloc] init];
  }
    
    return self;
}

-(void)reloadImage {
  _image = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_src]]];
  _imageView.animatedImage = _image;

}

- (void)layoutSubviews
{
  _imageView.frame = self.bounds;
  [self addSubview:_imageView];
}

- (void)setSrc:(NSString *)src
{
  if (![src isEqual:_src]) {
    _src = [src copy];
    [self reloadImage];
  }
}

@end

