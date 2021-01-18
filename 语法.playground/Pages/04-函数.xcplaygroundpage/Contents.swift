

//func pi() -> Double {
//    return 3.14
//}

// 形参默认是let，也只能是let
//func sum(v1: Int, v2: Int) -> Int {
//    return v1 + v2;
//}
//sum(v1: 10, v2: 20)

// 无返回值
//func sayHello() -> Void {
//    print("Hello")
//}
//func sayHello1() -> () {
//    print("Hello")
//}
//func sayHello2() {
//    print("Hello")
//}

// 隐式返回: 如果整个函数体是一个单一表达式，那么函数会隐式返回这个表达式
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}

// 返回元组
//func calculate(v1: Int, v2: Int) -> (sum: Int, diff: Int, avg: Int) {
//    let sum = v1 + v2
//    return (sum, v1 - v2, sum >> 1)
//}
//let result = calculate(v1: 20, v2: 40)
//result.sum
//result.diff
//result.avg

// 函数的文档注释

/// 加和
/// - Parameters:
///   - v1: 第1个整数
///   - v2: 第2个整数
/// - Returns: 和
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}
//sum(v1: 1, v2: 2)

// 修改参数标签
//func goToWork(at time: String) {
//    print("this time is \(time)")
//}
//goToWork(at: "8:00")

// _ 省略参数标签
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//}
//sum(1, 2)

// 默认参数值，有默认值得可以传，每个位置的参数都可以有默认值，也可以某个没有
//func check(name: String = "张三", age: Int = 18, job: String = "none") {
//    print(name + "\(age)" + job)
//}
//check(name: "李四", age: 20, job: "混子")
//check(name: "李四", job: 20)
//check(name: "李四")
//check()

// 可变参数, 一个函数只能有一个可变参数，紧跟可变参数后面的参数不能省略参数标签，省略了有歧义
//func sum(_ numbers: Int...) -> Int {
//    var total = 0
//    for number in numbers {
//        total += number
//    }
//    return total;
//}
//sum(10, 20, 30, 40)

// 看下print
//print(123, 456, 789)
//print(123, 456, 789)
//print(123, 456, 789, separator: " - ");

// 可以用inout 定义一个输入参数：可以在函数内部修改外部实参的值
// inout参数不能有默认值
// inout参数的本质是地址传递
// inout参数只能传入可以被多次赋值的
//var num = 2
//func add(_ num: inout Int) {
//    num += 1
//}
//add(&num)
////add(40) // 不能是字面量，let也不行
//var numbers = [10, 20, 30]
//add(&numbers[0])

// 函数重载
/*
 规则：
 函数名相同
 参数个数不同 || 参数类型不同 || 参数标签不同
 */
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}
//func sum(v1: Int, v2: Int, v3: Int) -> Int {
//    v1 + v2 + v3;
//} // 个数不同
//func sum(v1: Int, v2: Double) -> Double {
//    Double(v1) + v2;
//} // 类型不同
//func sum(v1: Double, v2: Int) -> Double {
//    v1 + Double(v2)
//} // 类型不同
//
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//} // 标签不同
//
//func sum(a: Int, b: Int) -> Int {
//    a + b
//} // 标签不同

// 返回值类型与函数重载无关
//func sum(v1: Int, v2: Int) {
//    v1 + v2
//    print(111);
//} // 与第一个不构成重载
//sum(v1: 1, v2: 2)

// 默认参数值 和 函数重载 一起使用产生二义性时，编译器不会报错。
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}
//func sum(v1: Int, v2: Int, v3: Int = 20) -> Int {
//    v1 + v2 + v3;
//}
//// 会调用 sum(v1: Int, v2: Int)
//sum(v1: 10, v2: 20)

// 可变参数、省略参数标签、函数重载一起产生二义性时，编译器有可能会报错
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//}
//func sum(_ numbers: Int...) -> Int {
//    var total = 0
//    for number in numbers {
//        total += number
//    }
//    return total
//}
//// error: Ambiguous use of 'sum'
//sum(10, 20)

// 内联函数
/*
 如果开启了编译器优化（Release模式默认会开启优化），编译器会自动将某些函数编程内联函数。
 将函数调用展开成函数体。
 
 不会内联的函数：
 1.函数体较长
 2.包含递归
 3.包含动态派发
 */
//func test() {
//    print(11111)
//}
//test() // buildsetting optimization

// @inline，不会被内联，即便开启了编译器优化
//@inline(never) func test() {
//    print("test")
//}
// @inline，开启编译器优化后，即使代码很长，也会被内联（递归调用函数，动态派发的函数 除外）
//@inline(__always) func test() {
//    print("test")
//}

// 函数类型
//func test() {
//    print("test")
//}
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}
//var fn: (Int, Int) -> Int = sum
//fn(2, 3) // 调用时不需要参数标签

// 函数类型 作为 函数参数
//func sum(v1: Int, v2: Int) -> Int {
//    v1 + v2
//}
//func diff(v1: Int, v2: Int) -> Int {
//    v1 - v2
//}
//func printResult(_ mathFn: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("Result: \(mathFn(a, b))")
//}
//printResult(sum, 5, 2)
//printResult(diff, 5, 2)

// 函数还可以作为属性

// 函数作为返回值
//func next(_ input: Int) -> Int {
//    input + 1
//}
//func previous(_ input: Int) -> Int {
//    input - 1
//}
//func forward(_ forward: Bool) -> (Int) -> Int {
//    forward ? next : previous
//}
//forward(true)(3)
//forward(false)(3)

// 返回值是函数类型的函数，叫 高阶函数

// typealias 用来给类型起别名
//typealias Short = Int16

//typealias Date = (year: Int, month: Int, day: Int)
//func test(_ date: Date) {
//    print(date.0)
//    print(date.month)
//    print(date.day)
//}
//test((2021, 01, 18))

// Void 就是空元组
//Void
//func test() -> Void { }
//func test1() { }

// 嵌套函数
//func forward(_ forward: Bool) -> (Int) -> Int {
//    func next(_ input: Int) -> Int {
//        input + 1
//    }
//    func previous(_ input: Int) -> Int {
//        input - 1
//    }
//    return forward ? next : previous
//}
//forward(true)(3)
//forward(false)(3)
