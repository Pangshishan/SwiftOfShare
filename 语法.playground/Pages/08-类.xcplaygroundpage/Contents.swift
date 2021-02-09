//: [Previous](@previous)

import Foundation

/*
 - 类的定义 和 结构体类似，但编译器不会为类自动生成可以传入成员值的初始化器。
 - 如果成员都是有初始值的，会生成个无参数的初始化器。实际上，初始值也是在无参数的初始化器里赋值的。
 */

//class Point {
//    var x: Int = 0
//    var y: Int = 0
//}
//let p1 = Point()
////let p2 = Point(x: 1, y: 1)

// 下面代码就会报错，对象创建出来，也必须保证都有初始值。
//class Point {
//    var x: Int
//    var y: Int
//}
//let p1 = Point()


/* 类 和 结构体的区别
 结构体是值类型，枚举也是值类型
 类是引用类型（指针类型）
 */
//struct Size {
//    var w: Int = 0
//    var h: Int = 0
//}
//func test() {
//    var s   = Size()    // 16
//    var p   = Point()   // 栈8  堆32  前面8个类型信息，第二个8个放引用计数的 后面16个放俩Int
//}
//test()


//var s1 = s
//s1.w = 10;
//print(s.w)
//
//var p1 = p
//p1.x = 1
//print(p1.x)

// 值类型的赋值操作
//
//var s1 = "111"
//var s2 = s1
//s2.append("_222")
//print(s1)
//print(s2)

//
//var dict1 = ["max": 10, "min": 0]
//var dict2 = dict1
//dict1["other"] = 7
//print(dict1)
//print(dict2)

//
//var arr1 = [1, 2, 3]
//var arr2 = arr1
//arr2.append(4)
//print(arr1)
//print(arr2)

/*
 在Swift标准库中，为了提升性能，String，Array， Dictionary, Set采取了Copy On Write。
 比如仅当有"写"操作时，才会真正执行拷贝操作。
 对于标准库值类型的赋值操作，Swift能确保最佳性能，所以没必要为了保证最佳性能来避免赋值。
 不需要修改的尽量定义成 let
 */

//struct Point {
//    var x: Int
//    var y: Int
//}
//var p1 = Point(x: 10, y: 10)
//p1 = Point(x: 20, y: 20) // 覆盖原来的内存
//
//class Size {
//    var width: Int
//    var height: Int
//    init(width: Int, height: Int) {
//        self.width = width
//        self.height = height
//    }
//}
//func test() {
//    var s1 = Size(width: 10, height: 10)
//    var s2 = s1
//}
//test()

//var s1 = Size(width: 10, height: 10)
//s1 = Size(width: 10, height: 10) // 创建新对象
//
//
//func changeV(point: Point, size: Size) {
////    point.x = 100
////    point.y = 100
//    size.width = 200
//    size.height = 200
//}
//changeV(point: p1, size: s1)
//print(p1, " ", s1.width, s1.height)
// 引用类型的赋值，同OC



// 值类型、引用类型的 let
//struct Point {
//    var x: Int
//    var y: Int
//}
//let p1 = Point(x: 10, y: 10)
//p1 = Point(x: 20, y: 20) // 覆盖原来的内存
//p1.x = 10
//p1.y = 20

//class Size {
//    var width: Int
//    var height: Int
//    init(width: Int, height: Int) {
//        self.width = width
//        self.height = height
//    }
//}
//let s1 = Size(width: 10, height: 10)
//s1 = Size(width: 10, height: 10)
//s1.width = 20
//s1.height = 20

//let str = "111"
//str.append("222")
//let arr = [1, 2, 3]
//arr.append(4)


// 嵌套类型 内部类型
struct Person {
    enum Gender: String {
        case man = "man"
        case woman
    }
    func test() {
        
    }
}
print(Person.Gender.man.rawValue)

var gender = Person.Gender.man
gender = .woman // 已经确定类型，就可以直接 点了


// 定义在枚举、结构体、类里面叫方法，外面叫函数，方法的本质也是函数





//: [Next](@next)
