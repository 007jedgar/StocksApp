//
//  ContainerViewController.m
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()

@end

@implementation ContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *childVC = self.childViewControllers;
    self.selectedVC = (SelectedStockViewController *) childVC[0];
    self.stockTableVC = (StockViewController *) childVC[1];
    
    self.stockTableVC.delegate = self.selectedVC;
}



@end
