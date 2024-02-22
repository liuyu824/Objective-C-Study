//
//  main.m
//  Day01-OC基础语法
//
//  Created by 刘宇 on 2024/1/26.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    NSString *_name;
    int _age;
    float _height;
}
-(void)run;
-(void)eat:(NSString*) str;
-(void)die:(NSString *)str0 : (NSString *)str1;
-(int)sum: (int)num0 and: (int)num1;
-(void)selfIntroduction;
@end

@implementation Person
// 定义Person类的run()方法
-(void)run
{
    NSLog(@"调用Person类的run()方法");
}

// 定义Person类的eat()方法
-(void)eat:(NSString *)str
{
    NSLog(@"类中方法可直接访问 类的属性");
    NSLog(@"今天早晨我吃了%@",_name);
    NSLog(@"-------------");
    NSLog(@"调用Person类的eat()方法，吃了%@",str);
}

// 定义Person类的die()方法
-(void)die:(NSString *)str0 : (NSString *)str1
{
    NSLog(@"调用Person类的死亡方法，%@吃了%@",str0,str1);
}

// 定义Person类的sum()方法
-(int)sum:(int)num0 and:(int)num1
{
    int sum = num0 + num1;
    return sum;
}

// 定义Person类的selfIntroduction方法
-(void)selfIntroduction
{
    NSLog(@"大家好，我叫%@，我今年%d岁了。", _name, _age);
}

@end

int main (int argc, const char * argv[]){
    @autoreleasepool {
        NSLog(@"类与对象");
        Person *person0 = [Person new];
        person0->_name = @"刘宇";
        person0->_age = 26;
        person0->_height = 181.5f;
        NSLog(@"----------");
        NSLog(@"person0的姓名是：%@",person0->_name);
        NSLog(@"person0的年龄是：%d",person0->_age);
        NSLog(@"person0的身高是：%f",person0->_height);
        NSLog(@"----------");
        Person *person1 = [Person new];
        (*person1)._name = @"刘宇";
        (*person1)._age = 18;
        (*person1)._height = 179;
        NSLog(@"----------");
        NSLog(@"person1的姓名是：%@",person1->_name);
        NSLog(@"person1的年龄是：%d",person1->_age);
        NSLog(@"person1的身高是：%f",person1->_height);
        NSLog(@"----------");
        [person1 run];
        [person1 eat:@""];
        [person1 die:@"":@""];
        int sum = [person1 sum: 225 and:225];
        NSLog(@"调用Person类的sum()方法，值为%d",sum);
        
        Person *person3 = [Person new];
        person3->_name = @"刘宇";
        person3->_age = 90;
        person3->_height = 160;
        NSLog(@"即将调用person3的self-introduction方法");
        [person3 selfIntroduction];
    }
    return 0;
}
