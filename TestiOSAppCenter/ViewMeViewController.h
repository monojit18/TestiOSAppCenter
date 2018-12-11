//
//  ViewMeViewController.h
//  TestiOSAppCenter
//
//  Created by Monojit Datta on 10/12/18.
//  Copyright © 2018 Monojit Datta. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewMeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *ViewMeTextField;
@property (weak, nonatomic) IBOutlet UIButton *DoneButton;
@property (strong, nonatomic) NSString* ViewMeString;


- (IBAction)onDone:(id)sender;

@end

NS_ASSUME_NONNULL_END
