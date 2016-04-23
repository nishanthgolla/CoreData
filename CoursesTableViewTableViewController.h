//
//  CoursesTableViewTableViewController.h
//  CoreDataApp
//
//  Created by nishanth golla on 2/20/16.
//  Copyright © 2016 nishanth golla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AddCourseViewController.h"

@interface CoursesTableViewTableViewController : UITableViewController <addCourseViewControllerDelegate, NSFetchedResultsControllerDelegate>

@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
