//
//  Course+CoreDataProperties.m
//  CoreDataApp
//
//  Created by nishanth golla on 2/20/16.
//  Copyright © 2016 nishanth golla. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Course+CoreDataProperties.h"

@implementation Course (CoreDataProperties)

@dynamic releaseData;
@dynamic author;
@dynamic title;

-(void) awakeFromFetch
{
    [super awakeFromFetch];
    self.releaseData = [NSDate date];
}

@end
