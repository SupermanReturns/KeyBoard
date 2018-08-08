//
//  ViewController.m
//  KeyBoard
//
//  Created by Superman on 2018/8/8.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"
#import "MenuSegView.h"
#import "SUTextFieldView.h"

#define KeyboardHeight 216
#define KScreenWidth    [UIScreen mainScreen].bounds.size.width
#define KScreenHeight   [UIScreen mainScreen].bounds.size.height


@interface ViewController ()<UITextFieldDelegate>

@property(nonatomic,strong) SUTextFieldView *textField;
@property(nonatomic,strong) UITextField *phoneTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //密码
    SUTextFieldView *lgtextField = [[SUTextFieldView alloc] initWithFrame:CGRectMake(40, 70, KScreenWidth-80, 50)];
    [self.view addSubview:lgtextField];
    lgtextField.tag = 100;
    lgtextField.delegate = self;
    self.textField = lgtextField;
    
    
    _phoneTextField = [[UITextField alloc] initWithFrame:CGRectMake(40,140, KScreenWidth-80,50)];
    _phoneTextField.borderStyle = UITextBorderStyleRoundedRect;
    _phoneTextField.delegate = self;
    _phoneTextField.placeholder = @"输入手机号";
    _phoneTextField.keyboardType = UIKeyboardTypeNumberPad;
    [self.view addSubview:_phoneTextField];
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    // NSLog(@"textFieldShouldBeginEditing");
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    if ([textField isKindOfClass:[SUTextFieldView class]]) {
        //        LGTextFieldView *textF = (LGTextFieldView *)textField;
        //        [textF showNumberKeyboardWhenBeginEditing];
        NSLog(@"LGTextFieldView");
    }
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    
}
//自定义键盘时不走这个方法
-(BOOL)textField:(SUTextFieldView *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([textField isKindOfClass:[SUTextFieldView class]]) {
        SUTextFieldView *lgTextF = (SUTextFieldView *)textField;
        NSLog(@"文字为%@",textField.text);
        if ([lgTextF isRightPassWord:string]) {
            return YES;
        }else{
            return NO;
        }
    }else
        return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.textField resignFirstResponder];
    //   NSLog(@"输入文字为：%@",self.textField.text);
    [self.phoneTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
