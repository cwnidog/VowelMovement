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
    
    // compose a block and assign it to the variable
    devowelizer = ^(id string, NSUInteger i, BOOL *stop)
    {
      NSMutableString *newString = [NSMutableString stringWithString:string];
      
      // iterate over the array of vowels, replacing occrences of each with an empty string
      for (NSString *s in vowels)
      {
        NSRange fullRange = NSMakeRange(0, [newString length]);
        [newString replaceOccurrencesOfString:s withString:@"" options:NSCaseInsensitiveSearch range:fullRange];
      }
      
      [devowelizedStings addObject:newString];
    }; // block devowelizer
    
    // Iterate over the array with the block
    [originalStrings enumerateObjectsUsingBlock:devowelizer];
    NSLog(@"Devowelized strings: %@", devowelizedStings);
    
  } // @autoreleasepool
  
    return 0;
} // main()
