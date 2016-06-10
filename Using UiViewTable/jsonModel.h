//
//  jsonModel.h
//  Using UiViewTable
//
//  Created by Abhishek Vora on 10/06/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface jsonModel : NSObject

@property (nonatomic, strong) NSString *Title;
@property (nonatomic, strong) NSString *plot;
@property (nonatomic, strong) NSString *genre;

-(id)initWithDict:(NSDictionary*)dict;

@end
