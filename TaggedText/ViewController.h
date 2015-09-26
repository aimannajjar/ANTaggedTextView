//
//  ViewController.h
//  TaggedText
//
//  Created by Aiman Najjar on 9/25/15.
//  Copyright (c) 2015 Aiman Najjar. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class ANTaggedTextFieldCell;
@interface ViewController : NSViewController
@property (unsafe_unretained) IBOutlet NSTextView *textView;
@property (weak) IBOutlet NSTextField *textField;
@end

