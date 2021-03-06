//
//  CALayer+FlipAnimation.m
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

#import "CALayer+FlipAnimation.h"
#import "CALayer+FadeAnimation.h"
#import "CALayer+BaseAnimation.h"
#import "AndyAnimationConst.h"
#import <POP/POP.h>

#define FlipSpringSpeed 10
#define FlipSpringBounciness 15

@implementation CALayer (FlipAnimation)

- (void)andy_addFlipInXAnimation
{
    [self andy_addFlipInXAnimationWithCompletion:nil];
}

- (void)andy_addFlipInXAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInXAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipInXAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInXAnimationWithDuration:duration fromOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeInAnimationWithDuration:duration fromOpacityValue:fromValue forKey:key completion:nil];
    
    [self rotateToAngle:@0.0 fromAngle:@(M_PI_2) propertyName:kPOPLayerRotationX duration:duration forKey:key completion:completion];
}


- (void)andy_addFlipInYAnimation
{
    [self andy_addFlipInYAnimationWithCompletion:nil];
}

- (void)andy_addFlipInYAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInYAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipInYAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInYAnimationWithDuration:duration fromOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeInAnimationWithDuration:duration fromOpacityValue:fromValue forKey:key completion:nil];
    
    [self rotateToAngle:@0.0 fromAngle:@(M_PI_2) propertyName:kPOPLayerRotationY duration:duration forKey:key completion:completion];
}


- (void)andy_addFlipOutXAnimation
{
    [self andy_addFlipOutXAnimationWithCompletion:nil];
}

- (void)andy_addFlipOutXAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutXAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipOutXAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutXAnimationWithDuration:duration toOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeOutAnimationWithDuration:duration toOpacityValue:fromValue forKey:key completion:nil];
    
    [self rotateToAngle:@(M_PI_2) fromAngle:@0.0 propertyName:kPOPLayerRotationX duration:duration forKey:key completion:completion];
}


- (void)andy_addFlipOutYAnimation
{
    [self andy_addFlipOutYAnimationWithCompletion:nil];
}

- (void)andy_addFlipOutYAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutYAnimationWithDuration:ANDY_ANIMATION_DEFAULT_DURATION completion:completion];
}

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration
{
    [self andy_addFlipOutYAnimationWithDuration:duration completion:nil];
}

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipOutYAnimationWithDuration:duration toOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeOutAnimationWithDuration:duration toOpacityValue:fromValue forKey:key completion:nil];
    
    [self rotateToAngle:@(M_PI_2) fromAngle:@0.0 propertyName:kPOPLayerRotationY duration:duration forKey:key completion:completion];
}


- (void)andy_addFlipInXSpringAnimation
{
    [self andy_addFlipInXSpringAnimationWithCompletion:nil];
}

- (void)andy_addFlipInXSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInXSpringAnimationWithSpeed:FlipSpringSpeed completion:completion];
}

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed
{
    [self andy_addFlipInXSpringAnimationWithSpeed:speed completion:nil];
}

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInXSpringAnimationWithSpeed:speed bounciness:FlipSpringBounciness fromOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeInAnimationWithDuration:speed * 0.05  fromOpacityValue:fromValue forKey:key completion:nil];
    [self rotateInSpringToAngle:@0.0 fromAngle:@(M_PI_2) propertyName:kPOPLayerRotationX speed:speed bounciness:bounciness forKey:key completion:completion];
}

- (void)andy_addFlipInYSpringAnimation
{
    [self andy_addFlipInYSpringAnimationWithCompletion:nil];
}

- (void)andy_addFlipInYSpringAnimationWithCompletion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInYSpringAnimationWithSpeed:FlipSpringSpeed completion:completion];
}

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed
{
    [self andy_addFlipInYSpringAnimationWithSpeed:speed completion:nil];
}

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion
{
    [self andy_addFlipInYSpringAnimationWithSpeed:speed bounciness:FlipSpringBounciness fromOpacityValue:@1.0 forKey:nil completion:completion];
}

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion
{
    [self fadeInAnimationWithDuration:speed * 0.05  fromOpacityValue:fromValue forKey:key completion:nil];
    [self rotateInSpringToAngle:@0.0 fromAngle:@(M_PI_2) propertyName:kPOPLayerRotationY speed:speed bounciness:bounciness forKey:key completion:completion];
}


@end
