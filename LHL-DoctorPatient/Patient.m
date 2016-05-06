//
//  Patient.m
//  LHL-DoctorPatient
//
//  Created by Asuka Nakagawa on 2016-05-05.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithAge:(int)age name:(NSString *)name hasValidCard:(BOOL)hasValidCard {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.hasValidCard = hasValidCard;

    }
    return self;
}


@end
