//
//  AddCourseViewController.h
//  CoreDataApp
//
//  Created by nishanth golla on 2/21/16.
//  Copyright © 2016 nishanth golla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Course.h"

@protocol addCourseViewControllerDelegate;

@interface AddCourseViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *titleField;

@property (weak, nonatomic) IBOutlet UITextField *authorField;


@property (weak, nonatomic) IBOutlet UITextField *dateField;

@property (nonatomic, weak) id <addCourseViewControllerDelegate> delegate;

@property (nonatomic, strong) Course *currentCourse;

- (IBAction)Cancel:(id)sender;

- (IBAction)Save:(id)sender;

@end

@protocol addCourseViewControllerDelegate
-(void)addCourseViewControllerDidSave;
-(void)addCourseViewControllerDidCancel: (Course *)courseToDelete;
@end
