//
//  JPViewController.m
//  JPAttributedString
//
//  Created by James Paolantonio on 02/12/2015.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import "JPViewController.h"

#import <JPAttributedString/JPAttributedString.h>

@interface JPViewController ()
@property (strong, nonatomic) UILabel *label;
@end

@implementation JPViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.label = [[UILabel alloc] initWithFrame:self.view.bounds];
    self.label.numberOfLines = 0;
    [self.view addSubview:self.label];

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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
