//
//  ViewController.m
//  iPhoneAppBuilder
//
//  Created by 高橋直也 on 2019/12/26.
//  Copyright © 2019 高橋直也. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _datePickerView.datePickerMode = UIDatePickerModeDate;
    
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    NSString *UDString = [userD stringForKey:@"MEMO"];
    _label.text = UDString;
    
    [self viewDidLoadLabel];
    [self viewDidLoadTextView];
    self.switchView.on = [[NSUserDefaults standardUserDefaults] boolForKey:@"switchFlag"];
}

- (void)viewDidLoadLabel {
    
    //_label.text = @"Hallo World";
    _label.textAlignment = UITextAlignmentCenter;
    _label.textColor = [UIColor redColor];
    _label.font = [UIFont systemFontOfSize:40];
    _label.adjustsFontSizeToFitWidth = YES;
}

-(void)viewDidLoadTextView {
    _textView.keyboardType = UIKeyboardTypeNumberPad;
    _textView.returnKeyType = UIReturnKeyDone;
    _textView.clearButtonMode = UITextFieldViewModeWhileEditing;
    
}


- (IBAction)tapButton:(id)sender {
    _label.text = _textView.text;
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    [userD setObject:_label.text forKey:@"MEMO"];
    [userD synchronize];
}




- (IBAction)valueChanged:(id)sender {
    _label.text = [NSString stringWithFormat:@"%f",_hSliderView.value];
}

- (IBAction)switchVCAction:(id)sender {
    
    NSArray *runImageArrya = [NSArray arrayWithObjects:
    [UIImage imageNamed:@"run1"],
    [UIImage imageNamed:@"run2"],
    [UIImage imageNamed:@"run3"],
    [UIImage imageNamed:@"run4"],
    [UIImage imageNamed:@"run5"],
    [UIImage imageNamed:@"run6"],
    nil
    ];
    _imageWani.animationImages = runImageArrya;
    _imageWani.animationDuration = 0.5;
    _imageWani.animationRepeatCount = 0;
    if(_switchView.on == YES){
        _label.text = @"YES!YES!YES!";
        _imageWani.hidden = NO;
        [_imageWani startAnimating];
    } else {
        _label.text = @"NoNoNo";
        _imageWani.hidden = YES;
        [_imageWani stopAnimating];
    }
    [[NSUserDefaults standardUserDefaults] setBool:_switchView.on forKey:@"switchFlag"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}



- (IBAction)DatePiclerVCAction:(id)sender {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.dateFormat = @"yyyy/MM/dd";
    _label.text = [dateFormat stringFromDate:_datePickerView.date];
}


- (IBAction)alertViewAction:(id)sender {
    UIAlertController *ar = [UIAlertController alertControllerWithTitle:@"タイトル" message:@"こちらでいかがでしょうか？" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *arAction = [UIAlertAction actionWithTitle:@"はい" style:UIAlertActionStyleDefault handler:^(UIAlertAction *arAction){
        NSLog(@"checkButtonTitle: %@", arAction.title);
    }];
    UIAlertAction *arActionC = [UIAlertAction actionWithTitle:@"いいえ" style:UIAlertActionStyleCancel handler:^(UIAlertAction *arActionC){
        NSLog(@"いいえ");
    }];
    [ar addAction:arActionC];
    [ar addAction:arAction];
    [self presentViewController:ar animated:true completion:^{
        NSLog(@"アラート表示");
    }];
}


@end
