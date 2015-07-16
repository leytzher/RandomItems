//
//  main.m
//  RandomItems
//
//  Created by Family on 7/16/15.
//  Copyright (c) 2015 Leytzher Muro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //Send a message addObject to the NSMutableArray pointed to by
        // the variable items, passing a string each time:
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        
        //Send another message, insertObject:atIndex, to that same array object:
        [items insertObject:@"Zero" atIndex:0];
        [items insertObject:@"Four" atIndex:4];
        
        for (NSString *item in items){
            NSLog(@"%@",item);
        }
        
        BNRItem *item = [[BNRItem alloc] init];
        
        item.itemName = @"Red Sofa";
        item.serialNumber = @"A!@";
        item.valueInDollars=100;
        

        NSLog(@"%@ %@ %@ %d", item.itemName, item.serialNumber, item.dateCreated, item.valueInDollars);
        
        //Destroy the mutable array object
        items = nil;
    }
    return 0;
}
