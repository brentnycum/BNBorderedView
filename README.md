# BNBorderedView

Bordered view with support for inset borders. BNBorderedView allows for the creation of custom size and color borders and insets on your UIView. Much in the same way you would be able to define borders on an `div` with CSS. With BNBorderedView you can define each border to have differing properties.

This was a class I used in a project a long time ago that I wanted to open source rather than sit around.

![Screenshot](https://raw.github.com/brentnycum/BNBorderedView/screenshot/Screenshot.png)

## Installing

Copy `BNBorderedView.h` and `BNBorderedView.m` to your projects.

Cocoapods installation coming soon.

## Usage

Using BNBorderedView is simple. Simply initialize like any normal `UIView`.

```objective-c
BNBorderedView *borderedView = [[BNBorderedView alloc] initWithFrame:CGRect(10, 10, 60, 60)];
```

In BNBorderedView you can set everything via properties.

```objective-c
borderedView.topBorderColor = [UIColor blueColor];
```

### Border Color

 * `topBorderColor`
 * `bottomBorderColor`
 * `leftBorderColor`
 * `rightBorderColor`

 * `setBorderColor:(UIColor *)color` To set all border colors.

### Border Size

 * `topBorderSize`
 * `bottomBorderSize`
 * `leftBorderSize`
 * `rightBorderSize`

 * `setBorderSize:(CGSize)size` To set all border sizes.

### Inset Color

 * `topInsetColor`
 * `bottomInsetColor`
 * `leftInsetColor`
 * `rightInsetColor`

 * `setInsetColor:(UIColor *)color` To set all inset colors.

### Inset Size

 * `topInsetSize`
 * `bottomInsetSize`
 * `leftInsetSize`
 * `rightInsetSize`

 * `setInsetSize:(CGSize)size` To set all inset sizes.
