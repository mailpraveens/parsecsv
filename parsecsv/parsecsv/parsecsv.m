//
//  parsecsv.m
//  parsecsv
//
//  Created by Praveen S on 8/19/14.
//  Copyright (c) 2014 mailpraveens. All rights reserved.
//

#import "parsecsv.h"

@implementation ParseCSV


+ (NSArray *) parseCsvIntoArrayFromFilePath:(NSString *) fullFilePath {
    NSMutableArray * returnArray = [NSMutableArray  array];
    NSError * error;
    NSString* fileContents = [NSString stringWithContentsOfFile:fullFilePath encoding:NSUTF8StringEncoding error:&error];
    // Strip double quotes
    NSString * stripDoubleQuotes = [fileContents stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    // Strip carriage return \r
    NSString * stripCarriageReturn = [stripDoubleQuotes stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    NSArray* rows = [stripCarriageReturn componentsSeparatedByString:@"\n"];
    for (int i = 0; i < [rows count]; i++) {
        // Skip the first row
        if (i == 0) {
            continue;
        }
        NSString * row = [rows objectAtIndex:i];
        [returnArray addObject:[row componentsSeparatedByString:@","]];
    }
    return returnArray;
}

@end
