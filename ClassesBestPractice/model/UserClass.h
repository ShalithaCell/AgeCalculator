//
//  UserClass.h
//  ClassesBestPractice
//
//  Created by Shalitha Senanayaka on 2019-04-25.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserClass : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, strong) NSDate *dateOfBirth;

-(NSString *) generateAge;

@end

NS_ASSUME_NONNULL_END
