//
//  jsonModel.m
//  Using UiViewTable
//
//  Created by Abhishek Vora on 10/06/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import "jsonModel.h"

@implementation jsonModel

-(id)initWithDict:(NSDictionary*)dict
{
    self = [super init];
    if(self) {
        self.Title = [dict objectForKey:@"Title"];
        self.plot = [dict objectForKey:@"Plot"];
        self.genre = [dict objectForKey:@"Genre"];
    }
    return self;
}

@end
