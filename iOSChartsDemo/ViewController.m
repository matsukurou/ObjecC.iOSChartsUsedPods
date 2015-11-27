//
//  ViewController.m
//  iOSChartsDemo
//
//  Created by matsusaki-local on 2015/11/26.
//  Copyright © 2015年 Kazutaka Matsusaki. All rights reserved.
//

#import "ViewController.h"
#import <Charts/Charts-Swift.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize barChartView = barChartView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    barChartView.noDataText = @"データないよ";
    
    NSArray* months = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    NSArray* unitsSold = @[@20.0, @4.0, @6.0, @3.0, @12.0, @16.0, @4.0, @18.0, @2.0, @4.0, @5.0, @4.0];
    
    [self setChart:months:unitsSold];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setChart:(NSArray *)dataPoints :(NSArray *)values
{
    NSMutableArray *datas = [NSMutableArray array];
    
    for (int i = 0; i < dataPoints.count; i++)
    {
        //BarChartDataEntry* entryData = [[BarChartDataEntry alloc] initWithValue:20 xIndex:i];
        BarChartDataEntry* entryData = [[BarChartDataEntry alloc] initWithValue:[[values objectAtIndex:i] doubleValue] xIndex:i];
        [datas addObject:entryData];
    }
    
    BarChartDataSet* chartDataSet = [[BarChartDataSet new] initWithYVals:datas label:@"Units Sold"];
    BarChartData * chartData = [[BarChartData new] initWithXVals:dataPoints dataSet:chartDataSet];

    barChartView.data = chartData;
}
@end
