//
//  main.m
//  LHL-DoctorPatient
//
//  Created by Asuka Nakagawa on 2016-05-05.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doc1 = [[Doctor alloc] initWithName:@"Aaron" specialization:@"Pediatrician"];
        
        Patient *pat1 = [[Patient alloc] initWithAge:10
                                                name:@"Chris"
                                        hasValidCard:YES
                                  hasCurrentSymptoms:@[@"stomachache", @"cold"]];
        
        [pat1 visitDoctor:doc1];
        [pat1 requestMeications:doc1];
        NSLog(@"%@", doc1.prescriptionsGiven);
    }
    return 0;
}
