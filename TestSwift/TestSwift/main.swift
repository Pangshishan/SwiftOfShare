//
//  main.swift
//  TestSwift
//
//  Created by 泡泡 on 2021/1/17.
//

import Foundation

print("Hello, World!")

//for var i in 1...3 {
//    i += 5
//    print(i)
//}

// MARK: - 内联函数

//func test() {
//    print("hello")
//}
//test()


//class Person {
//    func test() {
//        print("-- Person")
//    }
//}
//class Doctor: Person {
//    override func test() {
//        print("-- Doctor")
//    }
//}
//
//var doc: Person = Doctor()
////doc = Person()
//doc.test()

// MARK: - 闭包结构
//var num1: Int? = nil
//var num2: Int?? = num1
//var num3: Int?? = nil
//print(num2 == num3)


// MARK: - Enum 内存
// 原始值 关联值
//enum TestEnum {
//    case test1, test2, test3
//}
//var test: TestEnum = .test1
//print(Mems.ptr(ofVal: &test))
//print(MemoryLayout<TestEnum>.size)
//print(MemoryLayout<TestEnum>.stride)
//print(MemoryLayout<TestEnum>.alignment)
//test = .test3
//test = .test3


//enum TestEnum {
//    case test1(Int, Int, Int)
//    case test2(Int, Int)
//    case test3(Int)
//    case test4(Bool)
//    case test5
//}
//
//var e = TestEnum.test1(2, 3, 4)
//print(Mems.ptr(ofVal: &e))
//print(MemoryLayout<TestEnum>.size)
//print(MemoryLayout<TestEnum>.stride)
//print(MemoryLayout<TestEnum>.alignment)
//e = .test2(6, 7)
//e = .test3(8)
//e = .test4(true)
//e = .test5
//e = .test5

/*
 总结：
 1个字节存储成员值
 其他的存储关联值
 */

//
//enum TestEnum {
//    case test
//}
//print(MemoryLayout<TestEnum>.size)
//print(MemoryLayout<TestEnum>.stride)
//print(MemoryLayout<TestEnum>.alignment)


//
//enum TestEnum {
//    case test(Int)
//}
//print(MemoryLayout<TestEnum>.size)
//print(MemoryLayout<TestEnum>.stride)
//print(MemoryLayout<TestEnum>.alignment)


// MARK: - 结构体
//func testStruct() {
//    struct Point {
//        var x = 10
//        var y = 20
//    }
//    var p = Point()
//    print(MemoryLayout<Point>.size)
//    print(MemoryLayout<Point>.stride)
//    print(MemoryLayout<Point>.alignment)
//    print(Mems.memStr(ofVal: &p))
//}
//testStruct()

// MARK: - 类
func testClassAndStruct() {
    class Size {
        var width = 0
        var height = 0
    }
    struct Point {
        var x = 0
        var y = 0
    }
    var size = Size()
//    var point = Point()
    // alloc malloc
}
testClassAndStruct()


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




