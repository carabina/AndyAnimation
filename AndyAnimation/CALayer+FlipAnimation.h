//
//  CALayer+FlipAnimation.h
//  AndyAnimation_Test
//
//  Created by 李扬 on 16/8/2.
//  Copyright © 2016年 andyli. All rights reserved.
//

@interface CALayer (FlipAnimation)

- (void)andy_addFlipInXAnimation;

- (void)andy_addFlipInXAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration;

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInXAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addFlipInYAnimation;

- (void)andy_addFlipInYAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration;

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInYAnimationWithDuration:(CGFloat)duration fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addFlipOutXAnimation;

- (void)andy_addFlipOutXAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration;

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipOutXAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)toValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addFlipOutYAnimation;

- (void)andy_addFlipOutYAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration;

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration completion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipOutYAnimationWithDuration:(CGFloat)duration toOpacityValue:(NSValue *)toValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;



- (void)andy_addFlipInXSpringAnimation;

- (void)andy_addFlipInXSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed;

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInXSpringAnimationWithSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


- (void)andy_addFlipInYSpringAnimation;

- (void)andy_addFlipInYSpringAnimationWithCompletion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed;

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed completion:(void (^)(BOOL finished))completion;

- (void)andy_addFlipInYSpringAnimationWithSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness fromOpacityValue:(NSValue *)fromValue forKey:(NSString *)key completion:(void (^)(BOOL finished))completion;


@end
