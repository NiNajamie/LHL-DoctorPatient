//
//  Patient.h
//  LHL-DoctorPatient
//
//  Created by Asuka Nakagawa on 2016-05-05.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property(nonatomic,assign)int age;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)BOOL hasValidCard;

- (instancetype)initWithAge:(int)age name:(NSString *)name hasValidCard:(BOOL)hasValidCard;


@end
