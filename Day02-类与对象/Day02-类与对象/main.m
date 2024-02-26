//
//  main.m
//  Day02-类与对象
//
//  Created by 刘宇 on 2024/2/21.
//

#import <Foundation/Foundation.h>

@interface iPhone : NSObject
{
    @public
    NSString *_phoneNum;
    NSString *_phoneBelonged;
}

-(void)callWithNumber;

@end

@implementation iPhone
-(void)callWithNumber{
    NSLog(@"I make a phone call by %@" , _phoneNum);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        iPhone *iPhone15pm = [iPhone new];
        iPhone15pm->_phoneNum = @"13611244680";
        [iPhone15pm callWithNumber];
        
        iPhone *iPhone14Pro = nil;
        iPhone14Pro->_phoneNum = @"13726284740";
        [iPhone14Pro callWithNumber];
    }
    return 0;
}
