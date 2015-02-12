//
//  JPStringAttribute.h
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import <UIKit/UIKit.h>

@interface JPStringAttribute : NSObject

@property (strong, nonatomic) UIFont *font;
@property (strong, nonatomic) NSParagraphStyle *paragraphStyle;
@property (strong, nonatomic) UIColor *foregroundColor;
@property (strong, nonatomic) UIColor *backgroundColor;
@property (strong, nonatomic) NSNumber *ligature;
@property (strong, nonatomic) NSNumber *kern;
@property (strong, nonatomic) NSNumber *strikethroughStyle;
@property (strong, nonatomic) NSNumber *underlineStyle;
@property (strong, nonatomic) UIColor *strokeColor;
@property (strong, nonatomic) NSNumber *strokeWidth;
@property (strong, nonatomic) NSShadow *shadow;
@property (copy, nonatomic) NSString *textEffect;
@property (strong, nonatomic) NSNumber *baselineOffset;
@property (strong, nonatomic) UIColor *underlineColor;
@property (strong, nonatomic) UIColor *strikethroughColor;

- (NSDictionary *)attributedDictionary;

@end
