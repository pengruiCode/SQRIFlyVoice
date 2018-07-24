//
//  IFlyVoice.m
//  Express
//
//  Created by shequren on 2017/3/15.
//  Copyright © 2017年 PR. All rights reserved.
//

#import "IFlyVoice.h"
#import "SQREXDefine.h"

@implementation IFlyVoice

- (id) initWithShowVC:(UIViewController *)vc{
    //单例模式，无UI的实例
    if (_iflyRecognizerView == nil) {
        _iflyRecognizerView = [[IFlyRecognizerView alloc] initWithCenter:CGPointMake(DEF_SCREEN_WIDTH / 2, DEF_SCREENH_HEIGHT / 2)];
        _iflyRecognizerView.delegate = vc;
    }

    // 设置参数
    if (_iflyRecognizerView != nil) {
        //扩展参数
        [_iflyRecognizerView setParameter:@"" forKey:[IFlySpeechConstant PARAMS]];
        //设置听写模式
        [_iflyRecognizerView setParameter:@"iat" forKey:[IFlySpeechConstant IFLY_DOMAIN]];
        //设置最长录音时间
        [_iflyRecognizerView setParameter:@"10000" forKey:[IFlySpeechConstant SPEECH_TIMEOUT]];
        //设置后端点
        [_iflyRecognizerView setParameter:@"10000" forKey:[IFlySpeechConstant VAD_EOS]];
        //设置前端点
        [_iflyRecognizerView setParameter:@"10000" forKey:[IFlySpeechConstant VAD_BOS]];
        //网络等待时间
        [_iflyRecognizerView setParameter:@"10000" forKey:[IFlySpeechConstant NET_TIMEOUT]];
        //设置采样率，推荐使用16K
        [_iflyRecognizerView setParameter:@"16000" forKey:[IFlySpeechConstant SAMPLE_RATE]];
        //设置语言
        [_iflyRecognizerView setParameter:@"zh_cn" forKey:[IFlySpeechConstant LANGUAGE]];
        //设置方言
        [_iflyRecognizerView setParameter:@"mandarin" forKey:[IFlySpeechConstant ACCENT]];
        //设置是否返回标点符号
        [_iflyRecognizerView setParameter:@"0" forKey:[IFlySpeechConstant ASR_PTT]];
        //设置数据返回格式
        [_iflyRecognizerView setParameter:@"plain" forKey:[IFlySpeechConstant RESULT_TYPE]];
    }
    return _iflyRecognizerView;
}

- (void)start {
     [_iflyRecognizerView start];
}

- (void)cancel {
    [_iflyRecognizerView cancel];
}

@end
