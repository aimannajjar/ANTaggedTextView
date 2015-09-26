# ANTaggedTextView

![ANTaggedTextView screenshot1](https://s3.amazonaws.com/aimannajjar.com/assets/images/portfolio/ANTaggedTextView.png)

ANTaggedTextView is basically Cocoa NSTextView and NSTextFiled subclasses that enable you to use `NSAttributedString` to display linkable Facebook-like tags / mentions in your text views and fields (also works well when in a view-basled NSTableView). Unfortunately I currently only have an OS X implementation. Please keep in mind that I have built this after only a few weeks of learning Cocoa, pull requests are encouraged :-)

## Usage

The easiest way is to drop `ANTaggedTextField`, `ANTaggedTextFieldCell` and `ANTaggedTextView` headers and implementation files into your project. Then you can simply start using them by setting the appropriate subclass in storyboard or interface builder:

![ANTaggedTextView screenshot2](https://s3.amazonaws.com/aimannajjar.com/assets/images/portfolio/ANTaggedTextView_example.png)

Then simply set the attributed string content to this field. Any strings that have `Tag` attribute will be highlighed, the attribute value can be anything. 

```objective-c
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
```

### Text Fields
For text fields, usage is similar, you will have to set NSTextField's subclass to `ANTaggedTextField`:
![ANTaggedTextView screenshot3](https://s3.amazonaws.com/aimannajjar.com/assets/images/portfolio/ANTaggedTextView_example1.png)

**And** also NSTextFieldCell's to `ANTaggedTextFieldCell`:

![ANTaggedTextView screenshot4](https://s3.amazonaws.com/aimannajjar.com/assets/images/portfolio/ANTaggedTextView_example2.png)
