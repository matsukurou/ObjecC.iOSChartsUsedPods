//
//  ViewController.h
//  iOSChartsDemo
//
//  Created by matsusaki-local on 2015/11/26.
//  Copyright © 2015年 Kazutaka Matsusaki. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Charts/Charts-Swift.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet BarChartView *barChartView;

+ (void)setChart : (NSArray*) daatPoints : (NSArray*) values;
@end

