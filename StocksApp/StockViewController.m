//
//  StockViewController.m
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "StockViewController.h"
#import "Stock.h"

@interface StockViewController ()

@end

@implementation StockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Stock *stock = [[Stock alloc]init];
    stock.stockTitle = @"NASDAQ";
    
    Stock *stock1 = [[Stock alloc]init];
    stock1.stockTitle = @"APPLE";
    
    Stock *stock2 = [[Stock alloc]init];
    stock2.stockTitle = @"GOOGLE";
    
    Stock *stock3 = [[Stock alloc]init];
    stock3.stockTitle = @"TWITTER";
    
    Stock *stock4 = [[Stock alloc]init];
    stock4.stockTitle = @"SQUARE";
    
    self.stocks = [[NSMutableArray alloc]init];
    [self.stocks addObject:stock];
    [self.stocks addObject:stock1];
    [self.stocks addObject:stock2];
    [self.stocks addObject:stock3];
    [self.stocks addObject:stock4];

    [self.tableView reloadData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.stocks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StockCell" forIndexPath:indexPath];
    Stock *stockName = self.stocks[indexPath.row];
    cell.textLabel.text = stockName.stockTitle;
    
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellText = cell.textLabel.text;
    
   // Stock *cellText = self.stocks[indexPath.row];
    [self.delegate stockSelected: cellText];

}

//-(void) stockSelected {
//  //  UITableViewCell *selectedCell =
//    [self.delegate stockSelected: @"AAPL"];
//}


@end
