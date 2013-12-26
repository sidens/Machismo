//
//  PlayingCard.h
//  Machismo
//
//  Created by Steve Siden on 12/25/13.
//  Copyright (c) 2013 Steve Siden. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
