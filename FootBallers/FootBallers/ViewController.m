//
//  ViewController.m
//  FootBallers
//
//  Created by Tuan EM on 4/10/13.
//  Copyright (c) 2013 Tuan EM. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "DetailView.h"
#import "Singleton.h"
#define ROW_HEIGHT 150
#define ROW_NUM 10
@interface ViewController ()

@end
@implementation ViewController
-(void) loadView{
    [super loadView];
        _scrollView.contentSize = CGSizeMake(_scrollView.bounds.size.width, ROW_HEIGHT*ROW_NUM);
    for (int i=0; i<ROW_NUM; i++) {
        UIImageView* _avata = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10+ROW_HEIGHT*i, 140, 140)];
        _avata.image = [UIImage imageNamed:[[Singleton singleton] photos][i]];
        _avata.contentMode = UIViewContentModeScaleAspectFill;
        UILabel* _lable = [[UILabel alloc] initWithFrame:CGRectMake(160, 10+ROW_HEIGHT*i, 200, 140)];
        _lable.backgroundColor = [UIColor clearColor];
        _lable.numberOfLines = 6;
        NSString* name = [[Singleton singleton] names][i];
        NSString* age = [[Singleton singleton] ages][i];
        NSString* team = [[Singleton singleton] teams][i];
        _lable.textColor = [UIColor yellowColor];
        _lable.font = [UIFont systemFontOfSize:15];
        _lable.text = [NSString stringWithFormat: @"  Name : %@ \n\n  Age : %@\n\n  Team : %@",name,age,team];
        
        UIButton* _buttom = [[UIButton alloc] initWithFrame:CGRectMake(280, 60+ROW_HEIGHT*i, 50, 50)];
        _buttom.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"next.png" ]];
        [_scrollView addSubview:_buttom];
        [_scrollView addSubview:_lable];
        [_scrollView addSubview:_avata];
        _buttom.tag = i;
        _buttom.userInteractionEnabled = YES;
        UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click:)];
        [_buttom addGestureRecognizer:tap];
    }
}
-(void)click :(UIGestureRecognizer*) gesture{
    DetailView* detail = [[DetailView alloc]initWithNibName:@"DetailView" bundle:nil];
     [self.navigationController pushViewController:detail animated:YES];
    detail.team1.text = [[Singleton singleton] teams][gesture.view.tag];
    detail.photo1.image = [UIImage imageNamed:[[Singleton singleton] photos][gesture.view.tag]];
    detail.name1.text = [[Singleton singleton] names][gesture.view.tag];
    detail.age1.text = [[Singleton singleton] ages][gesture.view.tag];
   
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"football.jpg"]]];
	self.navigationItem.title = @"FootBallers List";
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
