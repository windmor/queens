//
//  NIBoard.m
//  queens
//
//  Created by Liliya Sayfutdinova on 3/21/16.
//  Copyright © 2016 Liliya Sayfutdinova. All rights reserved.
//

#import "NIBoard.h"

@implementation NIBoard

/**
 Set board size
 */
- (void)setBoardWithSide:(NSInteger)side
{
    _queensCount = side;
}

/**
 Run
 */
- (void)setQueens
{
    [self configRow:0 withParentNode:[NSMutableArray new]];
}

/**
 Config new board state
 */
- (void)configRow:(NSInteger)row
   withParentNode:(NSMutableArray *)parentBoard
{
    if (row >= _queensCount) {
        [self checkBoard:parentBoard];
        return;
    }
    for (int i = 0; i < _queensCount; i++) {
        @autoreleasepool {
            NSMutableArray *newBoard = [self addQueenX:row y:i toBoard:parentBoard];
            if (!newBoard) continue;
            [self configRow:row + 1 withParentNode:newBoard];
        }
    }
}

/**
 Add new queen
 */
- (NSMutableArray *)addQueenX:(NSInteger)x
                            y:(NSInteger)y
                      toBoard:(NSMutableArray *)someBoard
{
    NSMutableArray *newBoard = [[NSMutableArray alloc] initWithArray:someBoard];
    
    for (int i = 0; i < someBoard.count; i++) {
        if (x == i || y == [newBoard[i] integerValue] ||
            labs(x - i) == labs(y - [newBoard[i] integerValue]))
        {
            return nil;
        }
    }
    [newBoard addObject:@(y)];
    return newBoard;
}

/**
 Check combination
 */
- (void)checkBoard:(NSMutableArray *)someBoard
{
    if (someBoard.count != _queensCount) return;
    
    NSMutableString *resStr = [NSMutableString new];
    for (int i = 0; i < someBoard.count; i++) {
        [resStr appendString:[NSString stringWithFormat:@"%ld  ", (long)([someBoard[i] integerValue] + 1)]];
    }
    
    if (someBoard.count == _queensCount) NSLog(@"%@", resStr);
}

@end
