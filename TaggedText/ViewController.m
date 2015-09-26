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
    NSMutableAttributedString *content = [[NSMutableAttributedString alloc] initWithString:@"Hello World, this is a tagged text field! "];
    [content addAttribute:@"Tag" value:@1 range:(NSRange){22, 8}];
    [content addAttribute:NSFontAttributeName value:[NSFont systemFontOfSize:13.0] range:(NSRange){0, content.length}];
    self.textField.attributedStringValue = content;
    self.textView.textContainerInset = (NSSize){10,10};
    [self.textView.textStorage setAttributedString:content];

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
