//
//  EmojizeViewController.m
//  Emoji-System-Custom
//
//  Created by 马卿 on 16/11/7.
//  Copyright © 2016年 com.yihe. All rights reserved.
//

#import "EmojizeViewController.h"
@interface EmojizeViewController()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *container;
@property (weak, nonatomic) IBOutlet UITextView *inputView;
- (IBAction)convert;

@end
@implementation EmojizeViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.inputView.delegate = self;
}
#pragma mark---UITextViewDelegate
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    return YES;
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
   
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView{
    NSString *str = textView.text;
    str = [str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]];
    _container.text = str;
}

- (void)textViewDidChangeSelection:(UITextView *)textView{
    
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange{
    return YES;
}
- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange{
    return YES;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_inputView resignFirstResponder];
}
- (IBAction)convert {
    _container.text = [_container.text stringByRemovingPercentEncoding];
}
@end
