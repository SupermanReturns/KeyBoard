//
//  SUTextFieldView.h
//  KeyBoard
//
//  Created by Superman on 2018/8/8.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuSegView.h"

@protocol SUTextFieldViewDelegate <NSObject>

-(void)clickReturnBtn;
-(void)changeDefaultKeyboard;

@end


@interface SUTextFieldView : UITextField<MenuSegViewDelegate>


@property(nonatomic,strong) UIView *keyBgBoardView;
@property(nonatomic,assign) id<SUTextFieldViewDelegate> mydelegate;
@property(nonatomic,strong) UIColor *PlaceholderColor;

-(BOOL) isRightPassWord :(NSString *)text;//判断你输入的密码是否匹配
-(NSString *)VerificationTextField;
@end
