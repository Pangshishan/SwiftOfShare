//
//  main.swift
//  TestSwift
//
//  Created by 泡泡 on 2021/1/17.
//

import Foundation

//print("Hello, World!")

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
//func testClassAndStruct() {
//    class Size {
//        var width = 1
//        var height = 2
//    }
//    struct Point {
//        var x = 3
//        var y = 4
//    }

//    // stride 是获取创建出来的指针变量占多少内存
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
    
//    var ptr = malloc(16)
//    print(malloc_size(ptr))
    
    // 在 Mac、iOS中，malloc函数分配的内存大小总是16的倍数
    
//    print(unsafeBitCast(size, to: UInt.self))
//    let size1 = Size()
//    print(malloc_size(UnsafeRawPointer(bitPattern: unsafeBitCast(size1, to: UInt.self))!))
    
    /*
     unsafeBitCast 是非常危险的操作，它会将一个指针指向的内存强制按位转换为目标的类型。因为这种转换是在 Swift 的类型管理之外进行的，因此编译器无法确保得到的类型是否确实正确，你必须明确地知道你在做什么
     */
//}
//testClassAndStruct()

//func testInstanceSize() {
//    class Point {
//        var x = 11
//        var test = true
//        var y = 22
//    }
//    var p = Point()
//    print(Mems.size(ofRef: p)) // malloc
//
//    print(class_getInstanceSize(Point.self))
//    print(class_getInstanceSize(type(of: p)))
//}
//testInstanceSize()

//func show1() {
//    print("show1")
//}
//
//class Point {
//    var x = 11
//    var y = 22
//    func show() {
//        var a = 10
//        print("局部变量（栈空间）", Mems.ptr(ofVal: &a))
//        print(x, y)
//    }
//}
//var p = Point()
//p.show()
//show1()
//print("全局变量", Mems.ptr(ofVal: &p))
//print("堆空间", Mems.ptr(ofRef: p))

/*
 Point.show             0x100002540
 show1                  0x1000020d8
 全局变量                0x1000088d8
 堆空间                  0x1005057b0
 局部变量（栈空间） 0x00007ffeefbff318
 */

// MARK:- 闭包
//typealias Fn = (Int) -> Int
//
//func getFn() -> Fn {
//    var num = 0
//    func plus(_ i: Int) -> Int {
//        num += i
//        return num
//    }
//    //num = 10
//    return plus;
//}
//var fn1 = getFn()
//fn1(3)
//var fn2 = getFn()
//
//print(fn1(1))
//print(fn1(2))
//print(fn1(3))
//print(fn1(4))
//
//print(fn2(5))
//print(fn2(6))

//func getFn() -> Fn {
//    var num = 0
//    return {
//        num += $0
//        return num
//    }
//}
//var fn1 = getFn()
//print(fn1(10))
//print(fn1(20))

// 看下函数作为变量时，变量占用多少内存
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//}
//var fn = sum
//fn(3, 4)
//print(MemoryLayout.stride(ofValue: fn))

/*
 回看闭包汇编
 如果未捕获外部变量，后8字节为0
 如果捕获外部变量，后8字节放捕获变量堆空间地址值
 
 闭包对象的前8个字节不是plus的地址值，但是会间接调用到plus，会有一层包装而已
 
 调用plus的时候，实际上是传递了两个参数，一个是i，一个是堆空间地址值。放在参数寄存器里（rdi、rsi、rdx、rcx、r8、r9等）
 
 fn1 和 fn2 前8字节一样，但后8字节不一样。因为他们调用的都是plus，后面的堆空间分配的不一样。
 
 在getFn返回时，plus才捕获num，如果返回的不是plus，则不会捕获，也不会申请堆空间内存。
 
 如果num是全局变量，不会捕获num了，不会申请堆空间内存了。申请堆空间是为了避免num是局部变量时被释放掉
 
 */


//
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//}
//var fn = sum
//print(MemoryLayout.stride(ofValue: fn))



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






