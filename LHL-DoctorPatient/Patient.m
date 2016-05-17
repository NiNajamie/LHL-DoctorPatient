//
//  Patient.m
//  LHL-DoctorPatient
//
//  Created by Asuka Nakagawa on 2016-05-05.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithAge:(int)age name:(NSString *)name hasValidCard:(BOOL)hasValidCard hasCurrentSymptoms:(NSArray *)hasCurrentSymptoms {
    
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.hasValidCard = hasValidCard;
        self.hasCurrentSymptoms = hasCurrentSymptoms;
    }
    return self;
}

- (void)visitDoctor:(Doctor *)doc {
    [doc visitFromPatient:self];
}

// if the patient has symptom(s) and also has a validCard, they can requestMedication
- (void)requestMeications:(Doctor *)doc {
    [doc giveMeds:self];
}


@end
