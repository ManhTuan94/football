//
//  DetailView.m
//  FootBallers
//
//  Created by Tuan EM on 4/12/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "DetailView.h"

@interface DetailView ()

@end

@implementation DetailView
@synthesize photo1=_photo1;
@synthesize name1 =_name1;
@synthesize age1 =_age1;
@synthesize team1 =_team1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Information";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
