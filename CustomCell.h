//
//  CustomCell.h
//  Using UiViewTable
//
//  Created by Abhishek Vora on 06/06/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *myLogo;

@property (strong, nonatomic) IBOutlet UILabel *myLabel;

@property (strong, nonatomic) IBOutlet UITextView *textArea;

@property (strong, nonatomic) IBOutlet UIButton *myButton;

@end
