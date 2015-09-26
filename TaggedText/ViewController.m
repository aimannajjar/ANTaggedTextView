// The MIT License (MIT)
//
// Copyright (c) 2015 Aiman Najjar (aimannajjar.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableAttributedString *textFieldContent = [[NSMutableAttributedString alloc] initWithString:@"Hello World, this is an ANTaggedTextField by Aiman Najjar"];
    [textFieldContent addAttribute:@"Tag" value:@1 range:[textFieldContent.string rangeOfString:@"ANTaggedTextField"]];
    [textFieldContent addAttribute:NSLinkAttributeName value:@"https://github.com/aiman86/ANTaggedTextView" range:[textFieldContent.string rangeOfString:@"ANTaggedTextField"]];
    [textFieldContent addAttribute:@"Tag" value:@1 range:[textFieldContent.string rangeOfString:@"Aiman Najjar"]];
    [textFieldContent addAttribute:NSLinkAttributeName value:@"http://aimannajjar.com" range:[textFieldContent.string rangeOfString:@"Aiman Najjar"]];
    [textFieldContent addAttribute:NSFontAttributeName value:[NSFont systemFontOfSize:13.0] range:(NSRange){0, textFieldContent.length}];
    self.textField.attributedStringValue = textFieldContent;


    NSMutableString* content = [NSMutableString stringWithString:@"Hello World!\n"];
    [content appendString:@"This is a tagged text view. Created by Aiman Najjar.\n"];
    [content appendString:@"This is my first attempt at this. So please feel free to submit PRs :-)\n\nhttps://github.com/aiman86/ANTaggedTextView\n\n"];
    
    NSMutableAttributedString *textViewContent = [[NSMutableAttributedString alloc] initWithString:content];
    [textViewContent addAttribute:@"Tag" value:@1 range:[content rangeOfString:@"Aiman Najjar"]];
    [textViewContent addAttribute:NSLinkAttributeName value:@"http://aimannajjar.com" range:[content rangeOfString:@"Aiman Najjar"]];
    [textViewContent addAttribute:@"Tag" value:@1 range:[content rangeOfString:@"tagged"]];
    [textViewContent addAttribute:NSFontAttributeName value:[NSFont systemFontOfSize:13.0] range:(NSRange){0, textViewContent.length}];
    [textViewContent addAttribute:NSLinkAttributeName value:@"https://github.com/aiman86/ANTaggedTextView" range:[content rangeOfString:@"https://github.com/aiman86/ANTaggedTextView"]];
    self.textView.textContainerInset = (NSSize){10,10};
    [self.textView.textStorage setAttributedString:textViewContent];

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

@end
