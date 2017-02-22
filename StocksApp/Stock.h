//
//  Stock.h
//  StocksApp
//
//  Created by Jonathan Edgar on 2/20/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stock : NSObject

@property (nonatomic, strong) NSString *stockTitle;
@property (nonatomic, assign) int price;

@end
