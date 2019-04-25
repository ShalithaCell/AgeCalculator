//
//  UserClass.m
//  ClassesBestPractice
//
//  Created by Shalitha Senanayaka on 2019-04-25.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import "UserClass.h"

@implementation UserClass

-(NSString *) generateAge{
    
    //date now
    NSDate *dateNow = [NSDate date];
    
    NSDateComponents* ageComponents = [[NSCalendar currentCalendar]
                                       components:NSCalendarUnitYear
                                       fromDate:self.dateOfBirth
                                       toDate:dateNow
                                       options:0];
    
    return [NSString stringWithFormat:@"%ld",[ageComponents year]];
}

@end
