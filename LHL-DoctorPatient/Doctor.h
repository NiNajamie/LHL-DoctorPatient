//
//  Doctor.h
//  LHL-DoctorPatient
//
//  Created by Asuka Nakagawa on 2016-05-05.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *specialization;
@property(nonatomic,strong)NSMutableSet *patientList;

- (instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization;

- (void)visitFromPatient:(Patient*)patient;


@end
