//
//  DisplayEditViewController.h
//  CoreDataApp
//
//  Created by nishanth golla on 2/23/16.
//  Copyright © 2016 nishanth golla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@interface DisplayEditViewController : UIViewController

@property (nonatomic, strong) Course *currentCourse;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextField *authorField;
@property (weak, nonatomic) IBOutlet UITextField *dateField;
@property (weak, nonatomic) IBOutlet UIButton *editButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
- (IBAction)beginEditing:(id)sender;
- (IBAction)doneEditing:(id)sender;

@end
