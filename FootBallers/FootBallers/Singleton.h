//
//  Singleton.h
//  FootBallers
//
//  Created by Tuan EM on 4/13/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
@property(strong,nonatomic) NSArray* names;
@property(strong,nonatomic) NSArray* photos;
@property(strong,nonatomic) NSArray* ages;
@property(strong,nonatomic) NSArray* teams;
+(Singleton*) singleton;
@end
