//
//  Deck.h
//  Machismo
//
//  Created by Steve Siden on 12/25/13.
//  Copyright (c) 2013 Steve Siden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void) addCard:(Card *)card atTop:(BOOL) atTop;
-(void) addCard:(Card *)card;

-(Card *) drawRandomCard;


@end
