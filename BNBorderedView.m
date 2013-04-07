//
//  BNBorderedView.m
//  BNViewKit
//
//  Created by Brent Nycum.
//  Copyright (c) 2013 Brent Nycum. All rights reserved.
//

#import "BNBorderedView.h"

@implementation BNBorderedView

#pragma mark - Border Color

@synthesize topBorderColor = _topBorderColor;
@synthesize bottomBorderColor = _bottomBorderColor;
@synthesize leftBorderColor = _leftBorderColor;
@synthesize rightBorderColor = _rightBorderColor;

- (void)setTopBorderColor:(UIColor *)color {
	_topBorderColor = color;
	[self setNeedsDisplay];
}

- (void)setBottomBorderColor:(UIColor *)color {
	_bottomBorderColor = color;
	[self setNeedsDisplay];
}

- (void)setLeftBorderColor:(UIColor *)color {
	_leftBorderColor = color;
	[self setNeedsDisplay];
}

- (void)setRightBorderColor:(UIColor *)color {
	_rightBorderColor = color;
	[self setNeedsDisplay];
}

- (void)setBorderColor:(UIColor *)color {
	_topBorderColor = color;
	_bottomBorderColor = color;
	_leftBorderColor = color;
	_rightBorderColor = color;
	[self setNeedsDisplay];
}

#pragma mark - Border Size

@synthesize topBorderSize = _topBorderSize;
@synthesize bottomBorderSize = _bottomBorderSize;
@synthesize leftBorderSize = _leftBorderSize;
@synthesize rightBorderSize = _rightBorderSize;

- (void)setTopBorderSize:(CGFloat)size {
	_topBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setBottomBorderSize:(CGFloat)size {
	_bottomBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setLeftBorderSize:(CGFloat)size {
	_leftBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setRightBorderSize:(CGFloat)size {
	_rightBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setBorderSize:(CGFloat)size {
	_topBorderSize = size;
	_bottomBorderSize = size;
	_leftBorderSize = size;
	_rightBorderSize = size;
	[self setNeedsDisplay];
}

#pragma mark - Inset Color

@synthesize topInsetColor = _topInsetColor;
@synthesize bottomInsetColor = _bottomInsetColor;
@synthesize leftInsetColor = _leftInsetColor;
@synthesize rightInsetColor = _rightInsetColor;

- (void)setTopInsetColor:(UIColor *)color {
	_topInsetColor = color;
	[self setNeedsDisplay];
}

- (void)setBottomInsetColor:(UIColor *)color {
	_bottomInsetColor = color;
	[self setNeedsDisplay];
}

- (void)setLeftInsetColor:(UIColor *)color {
	_leftInsetColor = color;
	[self setNeedsDisplay];
}

- (void)setRightInsetColor:(UIColor *)color {
	_rightInsetColor = color;
	[self setNeedsDisplay];
}

- (void)setInsetColor:(UIColor *)color {
	_topInsetColor = color;
	_bottomInsetColor = color;
	_leftInsetColor = color;
	_rightInsetColor = color;
	[self setNeedsDisplay];
}

#pragma mark - Inset Size

@synthesize topInsetSize = _topInsetSize;
@synthesize bottomInsetSize = _bottomInsetSize;
@synthesize leftInsetSize = _leftInsetSize;
@synthesize rightInsetSize = _rightInsetSize;

- (void)setTopInsetSize:(CGFloat)size {
	_topBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setBottomInsetSize:(CGFloat)size {
	_bottomBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setLeftInsetSize:(CGFloat)size {
	_leftBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setRightInsetSize:(CGFloat)size {
	_rightBorderSize = size;
	[self setNeedsDisplay];
}

- (void)setInsetSize:(CGFloat)size {
	_topInsetSize = size;
	_bottomInsetSize = size;
	_leftInsetSize = size;
	_rightInsetSize = size;
	[self setNeedsDisplay];
}

#pragma mark - UIView

- (void)drawRect:(CGRect)rect {
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextClipToRect(context, rect);
	CGSize size = rect.size;

	// Top Border
	if (_topBorderColor && _topBorderSize > 0) {
		CGContextSetFillColorWithColor(context, _topBorderColor.CGColor);
		CGContextFillRect(context, CGRectMake(0.0f, 0.0f, size.width, _topBorderSize));
	}

	// Top Inset
	if (_topInsetColor && _topInsetSize > 0) {
		CGContextSetFillColorWithColor(context, _topInsetColor.CGColor);
		CGContextFillRect(context, CGRectMake(0.0f, _topBorderSize, size.width, _topInsetSize));
	}

	// Bottom Inset
	if (_bottomInsetColor && _bottomInsetSize > 0) {
		CGContextSetFillColorWithColor(context, _bottomInsetColor.CGColor);
		CGContextFillRect(context, CGRectMake(0.0f, size.height - _bottomBorderSize - _bottomInsetSize, size.width, _bottomInsetSize));
	}

	// Bottom Border
	if (_bottomBorderColor && _bottomBorderSize > 0) {
		CGContextSetFillColorWithColor(context, _bottomBorderColor.CGColor);
		CGContextFillRect(context, CGRectMake(0.0f, size.height - _bottomBorderSize, size.width, _bottomBorderSize));
	}

	// Left Border
	if (_leftBorderColor && _leftBorderSize > 0) {
		CGContextMoveToPoint(context, 0, 0);
		CGContextAddLineToPoint(context, _leftBorderSize, _topBorderSize);
		CGContextAddLineToPoint(context, _leftBorderSize, size.height - _bottomBorderSize);
		CGContextAddLineToPoint(context, 0, size.height);
		CGContextSetFillColorWithColor(context, _leftBorderColor.CGColor);
		CGContextFillPath(context);
		CGContextClosePath(context);
	}

	// Left Inset
	if (_leftInsetColor && _leftInsetSize > 0) {
		CGContextMoveToPoint(context, _leftBorderSize, _topBorderSize);
		CGContextAddLineToPoint(context, _leftBorderSize + _leftInsetSize, _topBorderSize + _topInsetSize);
		CGContextAddLineToPoint(context, _leftBorderSize + _leftInsetSize, size.height - _bottomBorderSize - _bottomInsetSize);
		CGContextAddLineToPoint(context, _leftBorderSize, size.height - _bottomBorderSize);
		CGContextSetFillColorWithColor(context, _leftInsetColor.CGColor);
		CGContextFillPath(context);
		CGContextClosePath(context);
	}

	// Right Border
	if (_rightBorderColor && _rightBorderSize > 0) {
		CGContextMoveToPoint(context, size.width, 0);
		CGContextAddLineToPoint(context, self.frame.size.width - _rightBorderSize, _topBorderSize);
		CGContextAddLineToPoint(context, self.frame.size.width - _rightBorderSize, size.height - _bottomBorderSize);
		CGContextAddLineToPoint(context, size.width, size.height);
		CGContextSetFillColorWithColor(context, _rightBorderColor.CGColor);
		CGContextFillPath(context);
		CGContextClosePath(context);
	}

	// Right Inset
	if (_rightInsetColor && _rightInsetSize > 0) {
		CGContextMoveToPoint(context, self.frame.size.width - _rightBorderSize, _topBorderSize);
		CGContextAddLineToPoint(context, self.frame.size.width - _rightBorderSize - _rightInsetSize, _topBorderSize + _topInsetSize);
		CGContextAddLineToPoint(context, self.frame.size.width - _rightBorderSize - _rightInsetSize, size.height - _bottomBorderSize - _bottomInsetSize);
		CGContextAddLineToPoint(context, size.width - _rightBorderSize, size.height - _bottomBorderSize);
		CGContextSetFillColorWithColor(context, _rightInsetColor.CGColor);
		CGContextFillPath(context);
		CGContextClosePath(context);
	}

}

@end
