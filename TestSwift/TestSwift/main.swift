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
        var width = 1
        var height = 2
    }
    struct Point {
        var x = 3
        var y = 4
    }

//    // stride 不是获类型占多少内存，是获取创建出来的变量占多少内存
//    print("MemoryLayout<Size>.stride", MemoryLayout<Size>.stride)
//    print("MemoryLayout<Point>.stride", MemoryLayout<Point>.stride)
//
//
//    var size = Size()
//    print("size变量的地址", Mems.ptr(ofVal: &size))
//    print("size变量的内存", Mems.memStr(ofVal: &size))
//    print("size所指向内存的地址", Mems.ptr(ofRef: size))
//    print("size所指向内存的内容", Mems.memStr(ofRef: size))
//
//    print(Mems.size(ofRef: size))
//    print("--------------------")
//
//    var point = Point()
//    print("point变量的地址", Mems.ptr(ofVal: &point))
//    print("point变量的内存", Mems.memStr(ofVal: &point))
    
    
    // alloc malloc
    
    // Foundation框架下的方法，返回堆空间地址大小，非堆空间返回0
    //malloc_size(<#T##ptr: UnsafeRawPointer!##UnsafeRawPointer!#>)
    
    var ptr = malloc(16)
    print(malloc_size(ptr))
    
    // 在 Mac、iOS中，malloc函数分配的内存大小总是16的倍数
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




