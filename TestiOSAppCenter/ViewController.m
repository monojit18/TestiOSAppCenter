//
//  ViewController.m
//  TestiOSAppCenter
//
//  Created by Monojit Datta on 09/12/18.
//  Copyright © 2018 Monojit Datta. All rights reserved.
//

#import "ViewController.h"
#import "ViewMeViewController.h"
@import AppCenter;
@import AppCenterAnalytics;
@import AppCenterCrashes;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [MSAnalytics trackEvent:@"viewDidLoad"];
    
}

- (IBAction)onClickMe:(id)sender
{
    
    NSString *pClickMeString = self.ClickMeButton.titleLabel.text;
    self.ClickMeTextField.text = pClickMeString;
    [MSAnalytics trackEvent:@"ClickMe clicked from iOS" withProperties:@{@"test":@"clickme click"}];
    // [MSCrashes generateTestCrash];
    // comments
}

- (IBAction)onViewMe:(id)sender
{
    
    UIStoryboard* pMainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewMeViewController* pViewMeViewController = (ViewMeViewController*)[pMainStoryboard
                                                                          instantiateViewControllerWithIdentifier
                                                                          :@"ViewMeViewController"];
    pViewMeViewController.ViewMeString = self.ClickMeTextField.text;
    
    [self presentViewController:pViewMeViewController animated:YES completion:nil];
    [MSAnalytics trackEvent:@"VieMe clicked from iOS" withProperties:@{@"test":@"viewme click"}];
    
}

@end
