//
//  MenuSegView.h
//  KeyBoard
//
//  Created by Superman on 2018/8/8.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MenuSegViewDelegate <NSObject>

@optional
-(void)clickButton :(NSInteger)clickIndex;

@end

@interface MenuSegView : UIView
{
    NSInteger currentIndex;
    NSArray *_titleArray;
}

@property(nonatomic,assign) id <MenuSegViewDelegate> delegate;
-(id)initWithFrame : (CGRect)frame  TitleArray :(NSArray *)titleArray;
-(void)clickButton:(int)scrollIndex;

@end
