//
//  KeyboardView.h
//  KeyBoard
//
//  Created by Superman on 2018/8/8.
//  Copyright © 2018年 Superman. All rights reserved.
//



#import <UIKit/UIKit.h>

@protocol KeyboardViewDelegate <NSObject>

@optional
-(void)inputKeyboard :(NSString *)inputString;
-(void)deleteBtnAction ;
-(void)finishedAction;
-(void)changeABCKeyboard;
-(void)changeabcKeyboard;
@end

@interface KeyboardView : UIView
typedef  enum{
    
    NumberKeyboard,
    ABCKeyboard,
    abcKeyBoard,
    otherKeyboard
    
} KeyboardType;

@property(nonatomic,assign) KeyboardType  keyType;

@property(nonatomic,assign) id<KeyboardViewDelegate> delegate;

-(instancetype)initWithFrame:(CGRect)frame  keyboardType :(KeyboardType)type;

@end
