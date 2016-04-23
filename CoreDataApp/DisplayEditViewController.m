//
//  DisplayEditViewController.m
//  CoreDataApp
//
//  Created by nishanth golla on 2/23/16.
//  Copyright © 2016 nishanth golla. All rights reserved.
//

#import "DisplayEditViewController.h"
#import "AppDelegate.h"

@interface DisplayEditViewController ()

@end

@implementation DisplayEditViewController

@synthesize titleField,authorField,dateField;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    titleField.text = [self.currentCourse title];
    authorField.text = [self.currentCourse author];
    
    NSDateFormatter *dt = [[NSDateFormatter alloc]init];
    [dt setDateFormat:@"yyyy-MM-dd"];
    dateField.text = [dt stringFromDate:[self.currentCourse releaseData]];
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

- (IBAction)beginEditing:(id)sender {
    
    titleField.enabled = YES;
    authorField.enabled = YES;
    dateField.enabled =YES;
    
    titleField.borderStyle = UITextBorderStyleRoundedRect;
    authorField.borderStyle= UITextBorderStyleRoundedRect;
    dateField.borderStyle = UITextBorderStyleRoundedRect;
    
    _editButton.hidden=YES;
    _doneButton.hidden=NO;
    
    
}

- (IBAction)doneEditing:(id)sender {
    
    titleField.enabled = NO;
    authorField.enabled = NO;
    dateField.enabled =NO;
    
    titleField.borderStyle = UITextBorderStyleNone;
    authorField.borderStyle= UITextBorderStyleNone;
    dateField.borderStyle = UITextBorderStyleNone;
    
    _editButton.hidden=NO;
    _doneButton.hidden=YES;
    
    _currentCourse.title = titleField.text;
    _currentCourse.author= authorField.text;
    
    NSDateFormatter *dt = [[NSDateFormatter alloc]init];
    [dt setDateFormat:@"yyyy-MM-dd"];
    
    _currentCourse.releaseData = [dt dateFromString:dateField.text];
    
    AppDelegate *app = (AppDelegate *) [[ UIApplication sharedApplication]delegate];
    
    [app saveContext];

}
@end
