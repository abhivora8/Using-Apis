//
//  CustomCell.h
//  Using UiViewTable
//
//  Created by Abhishek Vora on 06/06/16.
//  Copyright © 2016 Abhishek Vora. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myLogo;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UITextView *textArea;

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end
