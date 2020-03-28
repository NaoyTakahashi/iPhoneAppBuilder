//
//  ThirdTableViewController.h
//  iPhoneAppBuilder
//
//  Created by 高橋直也 on 2020/01/04.
//  Copyright © 2020 高橋直也. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThirdTableViewController : UIViewController 

<UITableViewDelegate, UITableViewDataSource>{
    __weak IBOutlet UITableView *tableView;
//    NSArray *mydata1;
//    NSArray *mydata2;
    NSArray *myData;
}


@end

NS_ASSUME_NONNULL_END
