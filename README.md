## iOS开发Objective-C语言学习

### Day01 Objective-C基础语法

#### 1. Objective-C概述

- Objective-C简称Obj-C或OC，面向对象的C语言




#### 2. OC简要发展历史

- C语言优势，NextStep改命Cocoa，2014年WWDC大会推出Swift，面向对象语法，如果选择cocoa Application，就是选择开发了一个带界面的程序。


- OC源文件后缀名为.m




#### 3. OC的未来

- ​      OC相对于C：
  - 在C的基础上新增了一小部分面对对象的语法；
  - 将C的复杂的，繁琐的语法封装的更为简单；
  - OC完全兼容C语言。



#### 5. 第一个OC程序

```objective-c
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *str = @"helloWorld";
        NSString *str1 = @"helloWorld";
        
        float f1 = 12.12f;
        NSLog(@"jack f1 = %f",f1);
        NSLog(@"Hello, World!");
    }
    return 0;
}
```



#### 6. 源文件后缀名和main函数

- OC程序的源文件的后缀名是 .m 代表message，代表oc中重要机制，消息机制：C程序的源文件后缀名 .c。


- main函数仍然是OC程序的入口和出口，仍然存在int类型返回值，代表程序的结束状态。 main函数的参数：接收用户在运行程序的时候传递数据给程序，参数也可以不要。




#### 7. #import指令

1. 以#号开头，是一个预处理指令，在编译之前执行。
2. 作用：是#include指令增强版，将文件的内容在预编译的时候拷贝到写指令的地方。
3. 增强：同一个文件，无论import多少次，只会包含一次；如果#include指令要实现这个效果，就必须要配合条件编译指令来实现，而#import指令只需要直接包含即可。
4. 简要原理：#import指令在包含文件时，底层会先判断这个文件是否被包含。



#### 8. Foundation框架

a. 是一个功能集合，苹果或者第三方事先将开发时经常用到的功能事先写好这些函数和类的集合，就叫做框架。

 b. Foundation框架，提供了最基础的功能，如：输入、输出、一些数据类型。Foundation：基础、基本，包含了Foundation.h 就相当于包含了foundation框架中All头文件。



#### 9. 自动释放池和NSLog函数

@autoreleasepool 是自动释放池，把代码写在池子里。

NSLog()函数

  a. 作用：是printf函数的增强版，向控制台输出信息。

  b. 语法：NSLog(@"格式控制字符串"，变量列表)

​    	      最简单的语法：NSLog(@"要输出的信息")

  c. 增强：

​    1）printf()会输出一些和调试相关的信息：

​          执行日期时间 + 程序名称 + 线程编号 + NSLog输出信息

​    2）会自动换行，在输出完信息之后会自动换行。

​    3）OC当中其实新增了一些数据类型，只能使用NSLog来输出值。

  d. 用法，和printf差不多，一样可以输出变量值，占位符和用法一样。

  e. 使用注意：

​    1）NSLog函数的第一个参数前必须添加一个 @符号

​    2）如果手动添加 '\n',函数自动换行功能会失效



#### 10. NSString

1. C语言的字符串的存储方式

​    a)  使用字符数组存储

​    b)  使用字符指针

2. 在OC中专门设计了一个NSString类型来存储字符串。

3. 字符串分为C字符串和OC字符串。

4. OC中设计了1个更为好用的用来存储字符串的1个类型: NSString。

​	NSString 类型的指针变量 专门用来存储OC字符串的地址

5. OC字符串常量必须要使用1个前缀 @符号：

​    	"jack" 这是一个C语言的字符串。

   	 @"jack" 这是一个OC的字符串常量



#### 11. NS前缀和@符号

(1) NextStep -> cocoa -> NS前缀

(2) @符号

​	a. 将c语言字符串 转换为 oc语言字符串

 ```objc
 "jack";  //c语言字符串
 @"jack"; //oc语言字符串
 ```

​	b. OC中绝大部分关键字都是以@符号开头。



#### 12. 注释和函数的定义和调用

1. 注释：

OC中的注释和C语言的注释一模一样，分为单行注释与多行注释。

2. 函数的定义和调用：

与C语言的函数定义与调用是一样的。



#### 13. OC程序的编译链接

1. OC程序的编译、连接、执行：

   1）在.m文件中写上符合OC语法规范的源代码。

   2）使用编译器将源代码编译为目标文件

   ​	a. 预处理

   ​	b. 检查语法

   ​	c. 编译

   3）链接

   ​	cc xx.o

​		如果程序中使用到了框架中的函数或者类，

​		那么在链接时候，

​		必须要告诉编译器去哪一个框架中找到函数或者类。

​		cc xx.o -framework 框架名称。

​     例如：cc main.o -framework Foundation

​		程序中用到了哪一个框架中的功能，

​		那么就在这个地方告诉编译器。

​	4）链接成功以后，

​		就会生成一个a.out可执行文件，执行就可以了。



#### 14. OC的数据类型

1. OC支持C语言中所有的数据类型

   a. 基本数据类型：int double float char

   b. 构造类型：数组 结构 枚举

   c. 指针类型：int *p1；

   d. 空类型：void

   e. typedef自定义类型

2. 新增Boolean类型：

   a. 可以存储YES或者NO中的任意1个数据。

   b. 一般情况下BOOL类型的变量用来存储条件表达式的结果。

   ​    如果条件表达式成立，那么结果就是YES；

   ​    如果条件表达式不成立，那结果就是NO。

   c. BOOL的本质。

   ​    typedef signed char BOOL;

   ​    实际上BOOL类型的变量，是1个有符号的char变量。

   ​    #define YES ((BOOL)1)   => YES 实际上就是1

   ​    #define NO  ((BOOL)0)   => NO 实际上就是0

3. Boolean

   a. Boolean类型的变量可以存储true或者false 

   b. 一般情况下BOOL类型的变量用来存储条件表达式的结果，如果条  

   件表达式成立，那么结果就是YES，如果条件表达式不成立，结果就是NO。

4. class类型，类。

5. id类型 万能指针。

6. nil 与 NULL 差不多。

7. SEL 方法选择器。

8. block 代码段类型。

#### 15. OC语言完全兼容C语言

- OC语言支持C语言中的所有的运算符
  - 赋值运算符 =
  - 算术运算符 +，-，*，/，%
  - 复合赋值运算符 +=，-=，*=，/=，%=
  - 自增与自减 ++，--
  - 关系运算符 >，>=，<，<=，==，!=
  - 逻辑运算符 &&，||，！
  - 取地址运算符 &
  - 指针访问运算符 *
  - 位运算符 &，|， ~
- OC语言支持C语言所有的控制语句
  - IF结构
  - switch-case结构
  - while
  - do-while
  - for
  - 数组
  - 指针
  - 函数

#### 16 & 17 &18. 面向过程与面向对象

1. 面向过程

在遇到一个需求时，实现这个需求的每一个步骤，都是自己写代码亲自的去一步步实现，这样的解决问题的方式，叫做面向过程方式。

2. 面向对象

在遇到一个需求时，不是亲自去实现，而是找1个专门做这件事情的人来帮助完成，这样的解决方式叫做 面向对象的解决方式。

3. 面向对象 和 面向过程 的 优缺点分析

​	C语言是1门面向过程的语言，有功能的概念，但是没有人的概念。

​	OC语言是1门面向对象的语言。

4. 使用面向对象方式设计我们的程序，可以让我们的程序在后期的维护和修改中更加的方便快捷。

5. 如何使用面向对象来设计程序呢？

#### 19. 类和对象

1. 什么是对象：

   对象是现实生活中的1个具体存在，看得见、摸得着、拿过来就可以使用。

2. 什么是类：

​	类是对一群具有相同特征或者行为的事物的1个统称，抽象的。

#### 20. 类和对象之间的关系

类是模板，类的对象是根据这个模板创建出来的。

类模板中有什么，对象中就有什么，绝不可能多，也绝不可能少。

对象是根据模子制造出来的。

#### 21. 类的设计和名词提炼法

类的作用：用来描述一群具有相同特征和行为的事物。

设计类的三要素：

- 类的名字，要描述的这类事物叫什么名字；
- 这类事物具有的相同的特征是什么；
- 这类事物具有的共同的行为。

#### 22. 类的定义

- 位置：直接写在源文件中，不要写在main函数之中

- 语法：类的定义分为两个部分。

  - 类的声明：

    @interface 类名 ： NSObject

    {

    ​	这类事物具有的共同的特征，将他们定义为变量。

    }

    功能就是一个方法，将方法的声明写在这里

  ​	@end

  ​	实现：

  ```objc
  @interface Person : NSObject
  {
      NSString *name;
      int _age;
      float _height;
  }
  @end
  ```

  

  - 类的实现

    @implementation 类名

    将方法的实现写在这里。

    @end

    ```objc
    @implementation Person
    
    @end
    ```

    

  - 注意

    - 类必须要有声明与实现；

    - 类名用描述的事物名称来命名就可以了，

      类名每一个单词首字母，必须要以大写开头；

    - NSObject是什么意思不用管；

    - 用来表示这类事物共同特征变量，必须定义在@interface{}；

    - 事物共同特征的变量 叫做 属性。

      - 属性名，必须要以“_”下划线开头。

#### 23. 类的对象的创建

- 类是无法直接使用的，如果非要使用这个类的话，就必须要先找到这个类中的1个具体存在，再使用这个对象。

- 类和对象的关系：类中有的东西，这个类的对象也有，不会多也不会少。

- 如何创建一个类的对象

  ```objc
  类名 *对象名 = [类名 new];
  Person *person = [Person new];
  ```

  根据Person类这个模板，创建了一个对象名字叫 person。

#### 24. 访问对象的属性

- 创建完对象后，如何对内部属性赋值取值。
  - 默认情况下，对象属性不允许被外界直接访问的；
  - 如果允许对象的属性，可以被外界访问；
  - 声明属性时添加@public关键字。
- 访问对象属性的方式：
  - 第一种赋值方式：

```objc
对象名 -> 属性名 = 值；
Person *person0  = [Person new];
person0->_name   = @"你爸爸";
person0->_age    = 26;
person0->_height = 181.5f;
NSLog(@"----------");
NSLog(@"person0的姓名是：%@",person0->_name);
NSLog(@"person0的年龄是：%d",person0->_age);
NSLog(@"person0的身高是：%f",person0->_height);
```

第二种赋值方式：

```objc
(*对象名).属性名，平时尽量使用箭头；
Person *person1 = [Person new];
(*person1)._name = @"always爸爸";
(*person1)._age = 18;
(*person1)._height = 179;
```

#### 25 & 26. 方法的声明实现调用

一类事物不仅具有相同的特征，还具有相同的行为。

行为就是1个功能，C语言中使用函数来表示1个功能。

OC的类具有的行为，我们用方法来表示，方法和函数都表示1个功能。

【使用】

方法的声明写在@interface{}后，@end前。

方法的实现写在@implementation后，@end前。

1. 无参数方法的声明

   - 声明

     - 位置：写在@interface大括弧的外面。

     - 语法：

       - -(返回值类型) 方法名称；

       ```objc
       @interface Person : NSObject
       {
           @public
           NSString *_name;
           int _age;
           float _height;
       }
       -(void)run; // 定义方法
       @end
       ```

       - 声明了1个无返回值并且无参数的方法，方法名字叫做run

   - 实现

     - 位置：@implementation中实现

     - 实现的语法：

       - 将方法声明copy至@implementation之中，去掉分号，追加大括弧，将方法实现代码写在大括弧中。

       ```objc
       @implementation Person
       -(void)run{
           NSLog(@"实现Person类的run()方法");
       }
       @end
       ```

   - 调用

     - 不能直接调用，因为方法是写在类里面的；必须要先创建对象，再调用对象的方法。

     - 调用对象的方法：

       - [对象名 方法名]；

       ```objc
       Person *person1 = [Person new];
       (*person1)._name = @"always爸爸";
       (*person1)._age = 18;
       (*person1)._height = 179;
       [person1 run];
       ```

2. 带一个参数方法的声明

   - 声明

     - 位置：写在@interface大括弧的外面。

     - 语法：

       -（返回值类型）方法名称：（参数类型）型参名称；

       ```objc
       // 类中定义
       -(void)eat:(NSString*) str;
       ```

       

   - 实现

     - 位置：@implementation中实现

     - 语法：将方法声明copy至@implementation之中，去掉分号，追加大括弧，将方法实现代码写在大括弧中。

       ```objc
       // 类中实现
       -(void)eat:(NSString *)str{
           NSLog(@"调用了Person类的eat()方法，吃了%@",str);
       }
       ```

   - 调用

     - 调用对象的方法：

       - [对象名 方法名]；

       ```objc
       // 代码中创建对象，调用方法
       [person1 eat:@"屎"];
       ```

3. 带多个参数的方法

   - 声明

     - 位置：写在@interface大括弧的外面。

     - 语法：

       -(返回类型)方法名称:(参数类型)型参1 :(参数类型)型参2;

       ```objc
       // 类中定义
       -(void)eat:(NSString*) str : (NSString*) str;
       -(int)sum: (int) num0 : (int) num1;
       ```

       表示声明了一个方法，这个方法的返回值类型是int类型的，

       方法的名称叫做 sum；

       有两个参数，是int类型，参数名称为num0 和 num1。

   - 实现

     - 位置：@implementation中实现

     - 语法：将方法声明copy至@implementation之中，去掉分号，追加大括弧，将方法实现代码写在大括弧中。

       ```objc
       // 定义Person类的sum()方法
       -(int)sum:(int)num0 :(int)num1
       {
           int sum = num0 + num1;
           return sum;
       }
       ```

   - 调用

     - 调用对象的方法：

       - [对象名 方法名]；

         ```objc
         int sum = [person1 sum:225 :225];
         NSLog(@"调用Person类的sum()方法，值为%d",sum);
         ```

##### 带参数方法的声明规范

- 如果方法只有一个参数，要求最好这个方法的名字叫做 xxxWith，

  这样写的话，调用方法的时候看起来就像是1条完整的语句，提高了代码的阅读性。

- 如果方法有多个参数，建议方法名称：
  - 方法名With()

#### 27. 同一个类的多个对象之间毫无关系

#### 28. 方法中直接访问属性

在方法的实现当中可以直接访问属性

```objc
// 定义Person类的selfIntroduction方法
-(void)selfIntroduction
{
    NSLog(@"大家好，我叫%@，我今年%d岁了。", _name, _age);
}
// 调用Person类的selfIntroduction方法
[person3 selfIntroduction];  
```



### Day02 类与对象

#### 1. 课程复习

- OC在C的基础之上做了2件事情：

​	a. 增加了面向对象的语法，

​	b. 将C语言中复杂的繁琐的语法封装的更为简单。

- 更简单：

​	a. #import指令：同一个文件无论被import多少次，最终都只会包含一次，不会出现重复包含的情况。

​	b. NSLog函数：自动换行，输出其他调试信息。

​	c. NSString函数：

​	    1）OC字符串常量 & C的字符串常量。

​	    2）字符串常量前面必须要加1个前缀@符号，这才是OC字符串

​	    3）NSString只能存储OC字符串常量。

​	d. 数据类型。

​	    BOOL  YES  NO

​	    Boolean  true  false

- 面向对象的语法：

#### 2. 类加载



#### 3. 对象在内存中是如何存储的



#### 4. nil与NULL



#### 5. 多个指针指向同1个对象



#### 6. 分组导航标记



#### 7. 函数与方法的对比



#### 8. 都是你的错



#### 9. 多文件开发



#### 10. 对象作为方法的参数
