//
//  StockViewController.h
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DisplayStockDelegate<NSObject>

-(void) stockSelected:(NSString *) stock;

@end
@interface StockViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *stocks;
@property (nonatomic, weak) id<DisplayStockDelegate> delegate;

@end
