//
//  Singleton.m
//  FootBallers
//
//  Created by Tuan EM on 4/13/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
@synthesize names,teams,ages,photos;
+(Singleton*) singleton {
    static Singleton* singleton = nil;
    if (!singleton) {
        singleton = [[super allocWithZone:nil] init];
    }
    return singleton;
}
+(id) allocWithZone:(NSZone *)zone
{
    return [self singleton];
}

-(id) init
{
    self = [super init];
    if (self) {

        NSString* path = [[NSBundle mainBundle] pathForResource:@"footballers" ofType:@"plist"];
        NSDictionary* _dic = [NSDictionary dictionaryWithContentsOfFile:path];
        names = [_dic objectForKey:@"Name"];
        photos= [_dic objectForKey:@"Photo"];
        ages = [_dic objectForKey:@"Age"];
        teams = [_dic objectForKey:@"Team"];
    }
    return self;
}
@end
