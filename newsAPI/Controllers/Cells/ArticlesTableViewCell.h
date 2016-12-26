//
//  ArticlesTableViewCell.h
//  newsAPI
//
//  Created by Maksim Kigan on 26/12/16.
//  Copyright © 2016 Maxim Keegan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticlesTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *titleTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionTextLabel;

@end
