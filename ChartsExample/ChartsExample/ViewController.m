//
//  ViewController.m
//  ChartsExample
//
//  Created by jia yu on 2022/9/14.
//

#import "ViewController.h"
#import "ChartsExample-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    OBChartView *v = [[OBChartView alloc] initWithFrame:CGRectMake(20.f, 80.f, self.view.frame.size.width-40.f, 200.f)];
    v.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:v];
}
@end
