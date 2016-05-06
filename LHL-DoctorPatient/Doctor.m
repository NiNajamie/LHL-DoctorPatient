//
//  Doctor.m
//  LHL-DoctorPatient
//
//  Created by Asuka Nakagawa on 2016-05-05.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.patientList = [[NSMutableSet alloc]init];
    }
    return self;

}
- (void)visitFromPatient:(Patient*)patient {
    if (patient.hasValidCard == YES) {

        
        [self.patientList addObject:patient];
    }
    else {
        NSLog(@"The patient was rejected");
    }
}


@end
