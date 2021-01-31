//
//  main.m
//  BlockExplore
//
//  Created by lvjianxiong on 2020/11/12.
//

#import <Foundation/Foundation.h>

int b = 100;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 10;
        void(^ block1)(void) = ^{
            NSLog(@"--- block---a=%lu",(unsigned long)a);
        };
        
        void(^ block2)(void) = ^{
            NSLog(@"---block---b=%lu",(unsigned long)b);
        };
        
        __block int c = 20;
        void(^ block3)(void) = ^{
            c = 30;
            NSLog(@"---malloc block---b=%lu",(unsigned long)c);
        };
        
        NSLog(@"block1=%@",block1);
        
        NSLog(@"block2=%@",block2);
        
        NSLog(@"block3=%@",block3);
        
        block1();
        
        block2();
        
        block3();
    }
    return 0;
}
/*
- (void)blockGlobalDemo{
    //__NSGlobalBlock__
    void(^block)(void) = ^{
        NSLog(@"---global block---");
    };
    NSLog(@"block=%@",block);
}
 
- (void)blockMallocDemo{
    //__NSMallocBlock__
 NSUInteger a = 10;
 void(^block)(void) = ^{
     NSLog(@"---malloc block---a=%lu",(unsigned long)a);
 };
 NSLog(@"block=%@",block);
}
 
- (void)blockStackDemo{
    NSUInteger a = 10;
    void(^__weak block)(void) = ^{
        NSLog(@"---malloc block---a=%lu",(unsigned long)a);
    };
    NSLog(@"block=%@",block);
}
*/
