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
        
        self.prescriptions = [[NSDictionary alloc] init];
    }
    return self;

}
// if the patient doesn't have ValidCard, the patient is rejected
- (void)visitFromPatient:(Patient*)patient {
    if (patient.hasValidCard == YES) {
        [self.patientList addObject:patient];
    
    }
    else {
        NSLog(@"The patient was rejected");
    }
}

-(void)giveMeds:(Patient*)patient {
    NSDictionary *dictionary = @{@"cold": @"Advil", @"headache":@"Advil", @"sty":@"ointment"};
    for (NSString *symptom in patient.hasCurrentSymptoms) {
        // other way
        // NSString *prescription = [dictionary va:symptom];
        NSString *prescription = dictionary [symptom];
        NSLog(@"You got %@, so take %@", symptom, prescription);
    }

}

@end
