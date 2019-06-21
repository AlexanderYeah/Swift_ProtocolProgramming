import UIKit


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


