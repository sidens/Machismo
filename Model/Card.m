//
//  Card.m
//  Machismo
//
//  Created by Steve Siden on 12/8/13.
//  Copyright (c) 2013 Steve Siden. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    return score;
    
}

@end
