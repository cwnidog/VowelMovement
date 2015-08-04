//
//  main.m
//  VowelMovement
//
//  Created by John Leonard on 8/4/15.
//  Copyright (c) 2015 John Leonard. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
  @autoreleasepool
  {
    // Create an arry of strings and a container for devowelized ones
    NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
    NSLog(@"Original strings: %@", originalStrings);
    
    NSMutableArray *devowelizedStings = [NSMutableArray array];
    
    // Create a list of vowels
    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    
    // declare the block variable
    void (^devowelizer) (id, NSUInteger, BOOL *);
  } // @autoreleasepool
  
    return 0;
} // main()
