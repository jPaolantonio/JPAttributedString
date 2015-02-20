JPAttributedString
========================

A DSL for creating, changing, and using NSAttributedStrings

[![CI Status](http://img.shields.io/travis/jPaolantonio/JPAttributedString.svg?style=flat)](https://travis-ci.org/jPaolantonio/JPAttributedString)
[![Version](https://img.shields.io/cocoapods/v/JPAttributedString.svg?style=flat)](http://cocoadocs.org/docsets/JPAttributedString)
[![License](https://img.shields.io/cocoapods/l/JPAttributedString.svg?style=flat)](http://cocoadocs.org/docsets/JPAttributedString)
[![Platform](https://img.shields.io/cocoapods/p/JPAttributedString.svg?style=flat)](http://cocoadocs.org/docsets/JPAttributedString)

## Installation

Install with [CocoaPods](http://cocoapods.org):

```sh
pod 'JPAttributedString'
```

## Usage

#### NSAttributedString Creation

What's the biggest issue when creating `NSAttributedStrings`?

```objc
NSAttributedString *attributedString =
    [[NSAttributedString alloc] initWithString:@"James"
                                    attributes:@{
                                                 NSFontAttributeName : [UIFont boldSystemFontOfSize:22.f],
                                                 NSForegroundColorAttributeName : [UIColor blackColor],
                                                 }];
self.label.attributedText = attributedString;
```

The code is rather verbose and not very reusable. Let's try extracting the dictionary.

```objc
JPStringAttribute *attribute = [[JPStringAttribute alloc] init];
attribute.font = [UIFont boldSystemFontOfSize:22.f];
attribute.foregroundColor = [UIColor blackColor];
self.label.attributedText = [[NSAttributedString alloc] initWithString:@"James"
                                                            attributes:attribute.attributedDictionary];
```

#### NSParagraphStyle

`NSParagraphStyle` is a property of `NSAttributedString` that allows further configuration of paragraph or ruler attributes. With `JPStringAttribute`, paragraph style is easier to modify.

```objc
NSMutableParagraphStyle *mutableStyle = [[NSMutableParagraphStyle alloc] init];
mutableStyle.paragraphSpacing = 8.f;
mutableStyle.lineBreakMode = NSLineBreakByTruncatingMiddle;

NSAttributedString *attributedString =
    [[NSAttributedString alloc] initWithString:@"James"
                                    attributes:@{
                                                 NSFontAttributeName : [UIFont boldSystemFontOfSize:22.f],
                                                 NSForegroundColorAttributeName : [UIColor blackColor],
                                                 NSParagraphStyleAttributeName : mutableStyle,
                                                 }];
self.label.attributedText = attributedString;
```

Compared to

```objc
JPStringAttribute *attribute = [[JPStringAttribute alloc] init];
attribute.font = [UIFont boldSystemFontOfSize:22.f];
attribute.foregroundColor = [UIColor blackColor];
attribute.paragraphSpacing = 8.f;
attribute.lineBreakMode = NSLineBreakByTruncatingMiddle;
self.label.attributedText = [[NSAttributedString alloc] initWithString:@"James"
                                                                attributes:attribute.attributedDictionary];
}
```

#### Other helpers

Have you ever had to append a bunch of `NSAttributedStrings`, then assign them to a `UILabel`?

```objc
NSMutableAttributedString *string = [[NSMutableAttributedString alloc] init];

[string appendAttributedString:
     [[NSAttributedString alloc] initWithString:@"James"
                                     attributes:@{
                                                  NSFontAttributeName : [UIFont boldSystemFont:22.f],
                                                  NSForegroundColorAttributeName : [UIColor blackColor]
                                                  }]];

[string appendAttributedString:
     [[NSAttributedString alloc] initWithString:@"\nEngineer"
                                     attributes:@{
                                                  NSFontAttributeName : [UIFont boldSystemFont:16.f],
                                                  NSForegroundColorAttributeName : [UIColor darkGrayColor]
                                                  }]];

[string appendAttributedString:
     [[NSAttributedString alloc] initWithString:@"New York City"
                                     attributes:@{
                                                  NSFontAttributeName : [UIFont boldSystemFont:12.f],
                                                  NSForegroundColorAttributeName : [UIColor grayColor]
                                                  }]];

self.label.text = string;
```

Is this better?

```objc
[self.label jp_appendString:@"James" attributesBlock:^(JPStringAttribute *make) {
    make.font = [UIFont boldSystemFontOfSize:22.f];
    make.foregroundColor = [UIColor blackColor];
}];

[self.label jp_appendString:@"\nEngineer" attributesBlock:^(JPStringAttribute *make) {
    make.font = [UIFont boldSystemFontOfSize:16.f];
    make.foregroundColor = [UIColor darkGrayColor];
}];

[self.label jp_appendString:@"\nNewYork" attributesBlock:^(JPStringAttribute *make) {
    make.font = [UIFont boldSystemFontOfSize:12.f];
    make.foregroundColor = [UIColor grayColor];
}];
```

## Examples

There is an example included with the project. To install,

```sh
cd Example/
pod install
open JPAttributedString.xcworkspace/
```

##Contribute

Send me pull requests!

##Authors

James Paolantonio - [@jpaolantonio](http://twitter.com/jPaolantonio)

####Extra

Let me know if you are using this or want anything changed!! :)
