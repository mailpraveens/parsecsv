//
//  parsecsv.h
//  parsecsv
//
//  Created by Praveen S on 8/19/14.
//  Copyright (c) 2014 mailpraveens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParseCSV : NSObject
+ (NSArray *) parseCsvIntoArrayFromFilePath:(NSString *) fullFilePath;
@end
