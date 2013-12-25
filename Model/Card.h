//
//  Card.h
//  Machismo
//
//  Created by Steve Siden on 12/8/13.
//  Copyright (c) 2013 Steve Siden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

- (int)match:(NSArray *) otherCards;

@end
