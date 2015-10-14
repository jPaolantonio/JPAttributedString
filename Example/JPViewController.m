//
//  JPViewController.m
//  JPAttributedString
//
//  Created by James Paolantonio on 02/12/2015.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "JPViewController.h"

#import "JPAttributedString.h"

@interface JPViewController ()
@property (strong, nonatomic) UILabel *label;
@end

@implementation JPViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.label = [[UILabel alloc] initWithFrame:self.view.bounds];
    self.label.numberOfLines = 0;
    [self.view addSubview:self.label];

    [self createNormalAttributedString];
    [self createAttributedStringWithParagraph];

//    [self.label jp_appendString:@"\nEngineer" attributesBlock:^(JPStringAttribute *make) {
//        make.font = [UIFont boldSystemFontOfSize:16.f];
//        make.foregroundColor = [UIColor darkGrayColor];
//    }];
//
//    [self.label jp_appendString:@"\nNewYork" attributesBlock:^(JPStringAttribute *make) {
//        make.font = [UIFont boldSystemFontOfSize:12.f];
//        make.foregroundColor = [UIColor grayColor];
//    }];
}

- (void)createNormalAttributedString {
    NSAttributedString *attributedString =
        [[NSAttributedString alloc] initWithString:@"James"
                                        attributes:@{
                                                     NSFontAttributeName : [UIFont boldSystemFontOfSize:22.f],
                                                     NSForegroundColorAttributeName : [UIColor blackColor],
                                                     }];
    self.label.attributedText = attributedString;

    JPStringAttribute *attribute = [[JPStringAttribute alloc] init];
    attribute.font = [UIFont boldSystemFontOfSize:22.f];
    attribute.foregroundColor = [UIColor blackColor];
    self.label.attributedText = [[NSAttributedString alloc] initWithString:@"James"
                                                                attributes:attribute.attributedDictionary];
}

- (void)createAttributedStringWithParagraph {
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

    JPStringAttribute *attribute = [[JPStringAttribute alloc] init];
    attribute.font = [UIFont boldSystemFontOfSize:22.f];
    attribute.foregroundColor = [UIColor blackColor];
    attribute.paragraphSpacing = 8.f;
    attribute.lineBreakMode = NSLineBreakByTruncatingMiddle;
    self.label.attributedText = [[NSAttributedString alloc] initWithString:@"James"
                                                                attributes:attribute.attributedDictionary];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
