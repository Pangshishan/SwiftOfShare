//: [Previous](@previous)

import Foundation

// 函数
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//}
//
//var fn = {
//    (v1: Int, v2: Int) -> Int in
//    return v1 + v2
//}
//fn(10, 20)

/* 闭包
 
 {
    (参数列表) -> 返回值类型 in
    函数体代码
 }
 
 */

// 闭包表达式的缩写
//func exec(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
//    print(fn(v1, v2))
//}
//
//exec(v1: 10, v2: 20, fn: {
//    (v1: Int, v2: Int) -> Int in
//    return v1 + v2
//})
//
//exec(v1: 10, v2: 20, fn: {
//    v1, v2 in
//    return v1 + v2
//})
//
//exec(v1: 10, v2: 20, fn: {
//    v1, v2 in
//    v1 + v2
//})
//
//exec(v1: 10, v2: 20, fn: {$0 + $1})
//
//
//exec(v1: 10, v2: 20, fn: + )


// 闭包最为最后一个实参的时候，可以使用尾随闭包。（代码提示直接回车）

//exec(v1: 10, v2: 20) {$0 + $1}

// 如果闭包表达式是函数的唯一实参，而且 使用了尾随闭包的语法，那就不需要在函数名后边写圆括号了

//func exec_test(fn: (Int, Int) -> Int) {
//    print(fn(1, 2))
//}
//exec_test { (v1, v2) -> Int in
//    v1 + v2
//}
//exec_test {
//    $0 + $1
//}


// 数组排序
var arr = [2, 3, 1, 5, 4]

//arr.sort()

// 返回true 第一个参数排在前面
//arr.sort { (i1, i2) -> Bool in
//    i1 > i2
//}
//
//arr.sort { i1, i2 in
//    i1 > i2
//}
//
//arr.sort() { $0 > $1 }
//arr.sort { $0 > $1 }


//arr.sort(by: >)

print(arr)

// 忽略参数 用 _
//exec_test { v1 v2 in
//    return 10
//}

// (Int, Int) -> Int
//var fn: = {$0 + $1}
//fn(1, 2)


/*
 一个函数 和 它所捕获的变量\常量环境 结合起来，成为闭包。
 一般指定义在函数内部的函数
 一般它捕获的是外层函数的局部变量\常量
 */

//typealias Fn = (Int) -> Int
//
//func getFn() -> Fn {
//    var num = 0
//    func plus(_ i: Int) -> Int {
//        num += i
//        return num
//    }
//    return plus;
//}
//var fn = getFn()
//print(fn(1))
//print(fn(2))
//print(fn(3))
//print(fn(4))


//: [Next](@next)

