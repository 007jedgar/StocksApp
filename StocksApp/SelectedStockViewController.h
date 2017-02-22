//
//  SelectedStockViewController.h
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StockViewController.h"

@interface SelectedStockViewController : UIViewController<DisplayStockDelegate>
-(void) stockSelected:(NSString *) stock;
@end
