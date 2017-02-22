//
//  ContainerViewController.h
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StockViewController.h"
#import "SelectedStockViewController.h"

@interface ContainerViewController : UIViewController

@property (nonatomic, strong) SelectedStockViewController *selectedVC;
@property (nonatomic, strong) StockViewController *stockTableVC;
@end
