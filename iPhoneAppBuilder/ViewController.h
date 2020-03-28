//
//  ViewController.h
//  iPhoneAppBuilder
//
//  Created by 高橋直也 on 2019/12/26.
//  Copyright © 2019 高橋直也. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController

<CLLocationManagerDelegate> {
    CLLocationManager *lManager;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)tapButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonView;
@property (weak, nonatomic) IBOutlet UITextField *textView;

@property (weak, nonatomic) IBOutlet UISwitch *switchView;
- (IBAction)switchVCAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePickerView;
- (IBAction)DatePiclerVCAction:(id)sender;

@property (weak, nonatomic) IBOutlet UISlider *hSliderView;
- (IBAction)valueChanged:(id)sender;

- (void)viewDidLoadLabel;
- (void)viewDidLoadTextView;
@property (strong, nonatomic) IBOutlet UIView *alertViewButton;
- (IBAction)alertViewAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageWani;




@end

