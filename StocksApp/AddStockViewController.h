//
//  AddStockViewController.h
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stock.h"

@protocol AddStockDelegate <NSObject>

-(void) didSaveStock:(Stock*) stockTitle;


@end

@interface AddStockViewController : UIViewController
@property (nonatomic, weak) IBOutlet UITextField *addStockField;
@property (nonatomic, weak) IBOutlet UITextField *addStockPriceField;
@end
