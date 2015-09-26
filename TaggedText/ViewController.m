//
//  ViewController.m
//  TaggedText
//
//  Created by Aiman Najjar on 9/25/15.
//  Copyright (c) 2015 Aiman Najjar. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:@"Hello World, this is a  tagged  text field! "];
    [content addAttribute:@"Tag" value:@1 range:(NSRange){23, 8}];
    self.textField.attributedStringValue = content;

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
