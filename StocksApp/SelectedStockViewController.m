//
//  SelectedStockViewController.m
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "SelectedStockViewController.h"
#import "StockViewController.h"

@interface SelectedStockViewController ()

@property (nonatomic, weak) IBOutlet UILabel *stockNameLabel;

@end

@implementation SelectedStockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) stockSelected:(NSString *) stock {
    self.stockNameLabel.text = stock;

}


@end
