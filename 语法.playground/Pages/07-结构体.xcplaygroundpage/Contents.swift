//: [Previous](@previous)

import Foundation

/*
 结构体
 
 - 在Swift中，绝大多数的公开类型都是结构体，而枚举和，类只占很小一部分

 - 所有结构体都有一个编译器自动生成的初始化器，需要传入所有成员

 - 编译器会根据情况，可能会为结构体生成多个初始化器，宗旨是：保证所有成员都有初始化值

 - 结构体也是可以定义方法的
 
 */

//struct Point {
//    var x: Int
//    var y: Int
//}
//var p = Point(x: 1, y: 2)
//
//struct Point1 {
//    var x: Int = 0
//    var y: Int
//}
//var p1 = Point1(y: 0)
//p1 = Point1(x: 0, y: 1)

// 一下代码是否能编译通过呢
//struct Point {
//    var x: Int?
//    var y: Int?
//}
//var p1 = Point(x: 1, y: 2)
//var p2 = Point(x: 1)
//var p3 = Point()

/*
 自定义初始化器
 一旦自定义了初始化器，编译器就不会再帮自动生成其他初始化器了
 */
//struct Point {
//    var x: Int = 0
//    var y: Int = 0
//    init(x: Int, y: Int) {
//        self.x = x
//        self.y = y
//    }
//}
//var p1 = Point.init(x: 10, y: 10)
//var p1 = Point(x: 10)

// 一下两段代码是等效的
//struct Point {
//    var x: Int = 0
//    var y: Int = 0
//}
//var p = Point()
//struct Point {
//    var x: Int
//    var y: Int
//    init() {
//        // self 是可以省略的
//        self.x = 0
//        self.y = 0
//    }
//}
//var p1 = Point()




//: [Next](@next)
