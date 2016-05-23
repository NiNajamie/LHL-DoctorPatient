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
        
        self.prescriptionsGiven = [[NSMutableDictionary alloc] init];
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

// Dictionary of the symptoms are sherable with patient
-(void)giveMeds:(Patient*)patient {
    NSDictionary *dictionary = @{@"cold": @"Advil", @"headache":@"Advil", @"sty":@"ointment", @"stomachache":@"antibiotics"};
    for (NSString *symptom in patient.hasCurrentSymptoms) {
        // other way
        // NSString *prescription = [dictionary valueForKey:symptom];
        NSString *prescription = dictionary [symptom];
        [self addPrescription:prescription toPatient:patient];
        NSLog(@"You got %@, so take %@", symptom, prescription);
    }
}

- (void)addPrescription:(NSString *)prescription toPatient:(Patient *)patient {
    
    // is there the patient's name is inside the record, if not, return nil(create empty array of the prescription)
    NSMutableArray *prescriptionsGivenToThisPatient = [self.prescriptionsGiven[patient.name] mutableCopy];
    
    // if the array is nil=empty, add newPrescription in the arrayOfPrescription withput patient's name
    if (prescriptionsGivenToThisPatient == nil) {
        prescriptionsGivenToThisPatient = [NSMutableArray array];
    }
    
    // add the arrayOfPrescription in the dictionary with patient's name
    [prescriptionsGivenToThisPatient addObject:prescription];
    self.prescriptionsGiven[patient.name] = prescriptionsGivenToThisPatient;
    
}

// take record for Patient:Prescriptions
//-(NSDictionary*)collectionOfPrescription:(Doctor*)doctor {
//    NSDictionary *patientDic = @{@[self.patientList] : @[self.patientList.prescription]};
//    for (NSString *patientList in patientDic) {
//        NSString *pat = patientDic[self.patientList._prescriptions];
//        NSLog(@"%@, %@", [self.patientList._prescriptions], pat);
//    }
//}
@end
