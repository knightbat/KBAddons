//
//  ViewController.m
//  XMAddonsExample
//
//  Created by Bindu on 29/06/17.
//  Copyright © 2017 Xminds. All rights reserved.
//

#import "ViewController.h"
#import "XMActivityIndicator.h"

@interface ViewController ()

@property (nonatomic,strong) XMActivityIndicator *activityIndictor;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupActivity];
    
    [self.activityIndictor activityShow:YES];
}

- (void) setupActivity {
    
    self.activityIndictor = [[XMActivityIndicator alloc]init];
    self.activityIndictor.activityType = BRSACTIVITYSMALL;
    self.activityIndictor.activityCornerRadius = self.activityIndictor.frame.size.width/2;
    self.activityIndictor.activityIndicatorSize = @300;
    self.activityIndictor.activityStyle = UIActivityIndicatorViewStyleWhiteLarge;
    self.activityIndictor.activityColor = [UIColor redColor];
    self.activityIndictor.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
    [self.view addSubview:self.activityIndictor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
