//
//  AppDelegate.h
//  iPhoneAppBuilder
//
//  Created by 高橋直也 on 2019/12/26.
//  Copyright © 2019 高橋直也. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

