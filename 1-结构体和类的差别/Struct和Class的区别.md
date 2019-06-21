### 1 为什么swift 推荐使用struct类型

在swift中是推荐使用struct类型的，值类型的变量在赋值的时候会自动进行一次低消耗的值拷贝

对比与对象的拷贝更加高效且不存在线程安全问题。

### 2 Struct 的概述

Swift语言中非常重视结构体，把结构体作为实现面向对象的重要手段。

Swift的Foundation 框架中，String，Array，Dictionary都是基于Struct实现的。



### 3 Struct 和 Class的区别

类和结构体都非常的类似，都具有定义和使用属性，方法，下标，构造器邓面向对象的特性，但是结构体不具有继承性，也不具备运行时强制类型转换等功能。

Class 是引用类型 （Reference Type）

Struct 是值类型  (Value Type)

简单的赋值方式：

a=b;

对于引用类型来讲的话，将a和b的指针指向同一块内存区域，此时改变a的值也会改变b的值

对于值类型来讲的话，是开辟新的内存给a，a和b是没有关系的两个变量，改变b不会改变a

#### class 为类型引用 struct为值引用

```swift

class Person{
    var name:String?;
    init(name:String?) {
        self.name = name;
    }
}

// 创建一个学生
var studentA = Person.init(name: "tom");
var studentB = studentA;

studentB.name = "Alex";
// 都打印Alex
print(studentA.name as Any);
print(studentB.name as Any);



struct Dog{
    var name:String?;
    init(name:String?) {
        self.name = name;
    }
}

var d1 = Dog.init(name: "tom");
var d2 = d1;
d2.name = "Jerry";
// 则d1 和 d2 的打印值不同
print(d1.name as Any);
print(d2.name as Any);

```

#### Struct 没有继承功能  Class 有继承功能

Swift 本质上来讲是面向协议的语言，Struct没有也不需要继承的功能，为了实现某个功能，只需要遵守一个并实现一个协议即可，从一个较高的层次来讲`struct+protocol`是构成swift面向协议语言的两个基石。



### Struct 的特点

* 1 安全性 值类型传递，自动线程安全

* 2 内存，没有引用计数，不会因为循环引用从而导致内存泄漏

* 3 速度    值类型通常是以栈的形式分配的，而不是用堆，比class 要为快

* 4 方法中修改属性，需要添加mutating，而class 不需要

* 5 序列化，不支持序列化，可以用字节转为NSData，而class支持序列化
