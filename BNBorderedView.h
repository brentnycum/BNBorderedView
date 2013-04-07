//
//  BNBorderedView.h
//  BNViewKit
//
//  Created by Brent Nycum.
//  Copyright (c) 2013 Brent Nycum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNBorderedView : UIView

@property (nonatomic, retain) UIColor *topBorderColor;
@property (nonatomic, retain) UIColor *bottomBorderColor;
@property (nonatomic, retain) UIColor *leftBorderColor;
@property (nonatomic, retain) UIColor *rightBorderColor;

/**
Sets the border color for all borders.

@param color The color to set all borders.
*/
- (void)setBorderColor:(UIColor *)color;

@property (nonatomic, assign) CGFloat topBorderSize;
@property (nonatomic, assign) CGFloat bottomBorderSize;
@property (nonatomic, assign) CGFloat leftBorderSize;
@property (nonatomic, assign) CGFloat rightBorderSize;

/**
Sets the border size for all borders.

@param size The size to set all borders.
*/
- (void)setBorderSize:(CGFloat)size;

@property (nonatomic, retain) UIColor *topInsetColor;
@property (nonatomic, retain) UIColor *bottomInsetColor;
@property (nonatomic, retain) UIColor *leftInsetColor;
@property (nonatomic, retain) UIColor *rightInsetColor;


/**
Sets the inset color for all insets.

@param color The color to set all insets.
*/
- (void)setInsetColor:(UIColor *)color;

@property (nonatomic, assign) CGFloat topInsetSize;
@property (nonatomic, assign) CGFloat bottomInsetSize;
@property (nonatomic, assign) CGFloat leftInsetSize;
@property (nonatomic, assign) CGFloat rightInsetSize;


/**
Sets the inset size for all insets.

@param size The size to set all insets.
*/
- (void)setInsetSize:(CGFloat)size;

@end
