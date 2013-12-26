//
//  CardGameViewController.m
//  Machismo
//
//  Created by Steve Siden on 12/8/13.
//  Copyright (c) 2013 Steve Siden. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) Deck * deck;
@end

@implementation CardGameViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"Flipcount is now: %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    while (self.flipCount<52)
    {
        if( [sender.currentTitle length] ) //Show the back of the card
        {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                              forState:UIControlStateNormal];
            [sender setTitle:@"" forState:UIControlStateNormal];
        }
        else //Show the front of the card
        {
            Card *card = [self.deck drawRandomCard]; //Draw random card
            
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:[card contents] forState:UIControlStateNormal];
        }
        self.flipCount++;
    }
    
}

-(Deck *) deck{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}




@end
