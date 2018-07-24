//
//  IFlyVoice.h
//  Express
//  配合讯飞语音实现语音读写
//  Created by shequren on 2017/3/15.
//  Copyright © 2017年 PR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <iflyMSC/IFlySpeechConstant.h>
#import <iflyMSC/IFlyRecognizerViewDelegate.h>
#import <iflyMSC/IFlyRecognizerView.h>
#import <iflyMSC/IFlyMSC.h>

@interface IFlyVoice : NSObject

@property (nonatomic, strong) IFlyRecognizerView *iflyRecognizerView;//带界面的识别对象

- (id)initWithShowVC:(UIViewController *)vc;

- (void)start;

- (void)cancel;

@end
