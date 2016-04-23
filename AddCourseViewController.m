//
//  AddCourseViewController.m
//  CoreDataApp
//
//  Created by nishanth golla on 2/21/16.
//  Copyright © 2016 nishanth golla. All rights reserved.
//

#import "AddCourseViewController.h"

@interface AddCourseViewController ()

@end

@implementation AddCourseViewController

@synthesize titleField, dateField, authorField;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    titleField.text = [self.currentCourse title];
    
    authorField.text = [self.currentCourse author];
    
    NSDateFormatter *dateFormate = [[NSDateFormatter alloc]init];
    
    [dateFormate setDateFormat:@"yyyy-MM-dd"];
    
    dateField.text = [dateFormate stringFromDate:[self.currentCourse releaseData]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Cancel:(id)sender {
    // Dismiss and remove the objects
    
    [self.delegate addCourseViewControllerDidCancel:[self currentCourse]];
    
    
}

- (IBAction)Save:(id)sender {
    // dismiss and save the objects
    
    [self.currentCourse setAuthor:authorField.text];
    [self.currentCourse setTitle:titleField.text];
    
    
    NSDateFormatter *dateFormate = [[NSDateFormatter alloc]init];
    
    [dateFormate setDateFormat:@"yyyy-MM-dd"];
    
    [self.currentCourse setReleaseData:[dateFormate dateFromString:dateField.text]];
    
    [self.delegate addCourseViewControllerDidSave];
    
}
@end
