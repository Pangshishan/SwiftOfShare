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
 
 在getFn返回之前，plus才捕获num，如果返回的不是plus，则不会捕获，也不会申请堆空间内存。
 
 如果num是全局变量，不会捕获num了，不会申请堆空间内存了。申请堆空间是为了避免num是局部变量时被释放掉。
 
 如果 将num换成Class，并且Class创建局部变量实例，会是怎样呢。
 
 */


//
//typealias Fn = (Int) -> (Int, Int)
//
//func getFns() -> (Fn, Fn) {
//    var num1 = 0
//    var num2 = 0
//    func plus(_ i: Int) -> (Int, Int) {
//        num1 += i
//        num2 += i << 1
//        return (num1, num2)
//    }
//    func minus(_ i: Int) -> (Int, Int) {
//        num1 -= i
//        num2 -= i << 1
//        return (num1, num2)
//    }
//    return (plus, minus)
//}
//let (p, m) = getFns()
//print(p(5))
//print(m(4))
//print(p(3))
//print(m(2))

/*
 // 以上代码，相当于生成了一个闭包对象，num1和num2是两个成员变量，plus和minus是闭包的两个函数。
 
 num1 和 num2 分别分配了两块内存，都是 8 8 8 ，第三个字节分别存着num1和num2
 */

//var functions: [() -> Int] = []
//for i in 1...3 {
//    functions.append({ i })
//}
//for f in functions {
//    print(f())
//}


//   
//func getNumber() -> Int {
//    let a = 10
//    let b = 20
//    print("getNumber")
//    return a + b
//}
//func getFirstPositive(_ v1: Int, _ v2: Int) -> Int {
//    return v1 > 0 ? v1 : v2;
//}
//getFirstPositive(10, 20)
//getFirstPositive(-10, 20)
//
//getFirstPositive(10, getNumber())

//func getFirstPositive(_ v1: Int, _ v2: () -> Int) -> Int {
//    return v1 > 0 ? v1 : v2();
//}
//getFirstPositive(-10) { () -> Int in
//    let a = 10
//    let b = 20
//    print("block")
//    return a + b
//}
// 也可以简化闭包，或写成简化的隐藏闭包

//func getFirstPositive(_ v1: Int, _ v2: @autoclosure () -> Int) -> Int {
//    return v1 > 0 ? v1 : v2();
//}
//getFirstPositive(-10, 20)
/*
 @autoclosure 会自动将20 封装成闭包表达式{20}
 @autoclosure 只支持 () -> T 这种格式的参数
 @autoclosure 并非只支持最后一个参数
 
 ?? 这个运算符就是使用了 @autoclosure
 有@autoclosure、无@autoclosure 构成了函数重载
 为了避免与期望冲突，使用了@autoclosure的地方最好明确注释清楚：这个值会被推迟执行
 */
//getFirstPositive(10, getNumber()) // 推迟执行

//var a: Int? = 10
//var b: Int? = nil
//print(b ?? a)

// MARK:- 属性
/*
 属性分为实例属性和类型属性
 
 实例属性，只能通过实例去访问，每个实例都有一份；
 
 Swift中跟实例相关的属性可以分为两大类
 
 - 存储属性
    类似于成员变量
    存储在实例的内存中
    结构体和类可以定义存储属性
    枚举 不可以 定义存储属性
 
 - 计算属性
    本质就是方法（函数）
    不占用实例的内存
    结构体、类、枚举 都可以定义存储属性
    计算属性只能用var，不能用let，原因是let修饰的是一个常量，但是计算属性实际上是方法。
    如果只实现了get，就是只读的计算属性。不允许只有set
 
 关于存储属性，Swift有个明确的规定：
 在创建类或结构体实例时，必须为所有存储属性设置一个初始值。
 可以在初始化器里为存储属性设置一个初始值。也可以在定义属性时给个默认值
 */

//struct Circle {
//    // 存储属性
//    var radius: Double
//    // 计算属性
//    var diameter: Double {
//        set {
//            radius = newValue / 2
//        }
//        get {
//            radius * 2
//        }
//    }
//    // 只读计算属性
////    var diameter: Double {
////        get {
////            radius * 2
////        }
////    }
//
////    var diameter: Double { radius * 2 }
//}

//enum Season: Int {
//    case spring = 4, summer, autumn, winter
//    
////    var rawValue: Int {
////        switch self {
////        case .spring:
////            return 4
////        case .summer:
////            return 5
////        case .autumn:
////            return 6
////        case .winter:
////            return 7
////        }
////    }
//}
//let s = Season.spring
//print(s.rawValue) // 实际上rawValue就是Swift生成的只读计算属性


/*
 // 延迟存储属性（懒加载）
 使用 lazy 可以定义一个延迟存储属性，在第一次用到属性的时候才会初始化。
 lazy属性必须是var，不能是let
 Swift规定，let的属性，在实例初始化完成之前必须有值
 
 多线程同时调用lazy的属性，可能会创建多个，不是线程安全的。
 
 */
//class Car {
//    init() {
//        print("Car init")
//    }
//    func run() {
//        print("run ........")
//    }
//}
//class Person {
////    lazy var car = Car()
//    lazy var car: Car = {
//        print("111")
//        print("111")
//        print("111")
//        print("111")
//        return Car()
//    }()
//    init() {
//        print("Person init")
//    }
//    func goOut() {
//        car.run()
//    }
//}
//let p = Person()
//print(p)
//p.goOut()

// 当结构体定义延迟存储属性时，只有var才能访问延迟属性
//struct Point {
//    var x = 0
//    var y = 0
//    lazy var z = 0
//}
//let p = Point() // 将let给成var
//print(p.z)

/*
 属性观察器 Property Observer
 可以为非lazy的var存储属性设置属性观察器。
 在属性观察器中设置属性，不会触发willSet和didSet
 */
//struct Circle {
//    // 存储属性
//    var radius: Double {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue, radius)
//        }
//    }
//    init() {
//        self.radius = 1.0
//        print("Circle init")
//    }
//}

// 属性观察器、计算属性的功能，同样可以应用在全局变量、局部变量身上

/*
 // 计算属性也是可以当成inout参数传到函数中的，而且也会成功调用计算属性的setter方法
 原理是：
 先调用计算属性的getter，将拿到的值存到一个临时变量里；
 然后将生成的临时变量地址值传给inout为参数的方法，并修改临时变量的值
 然后，将临时变量当成参数调用setter
 
 // 如果将 带属性观察器的存储属性 用inout修饰传给函数，当函数内部修改属性值得时候，是会触发属性观察器的。
 也就是说，也会调用存储属性的setter。调用过程同上。
 
 如果不带属性观察器的存储属性，直接就是地址传递。
 
 */

/*
 实例属性，只能通过实例去访问，每个实例都有一份；
 
 类型属性，只能通过类型去访问，程序运行过程中，只有一份；关键字：static，如果是Class关键字是class或static。
 类型属性可以不给初始值。
 类型存储属性，默认就是lazy。
 是线程安全的。
 
 枚举也可以定义类型存储属性。
 
 */

// 单例
//class FileManager {
//    public static let shared: FileManager = FileManager()
//    private init() { }
//}


// MARK:- 方法（Method）
/*
 
 - 枚举、结构体、类都可以定义实例方法、类型方法
 
 实例方法（Instance Method）：通过实例对象调用
 
 类型方法（Type Method）：通过类型调用，用static或者class关键字定义
 
 */

//class Car {
//   static var cout = 0
//   init() {
//       Car.cout += 1
//   }
//   static func getCount() -> Int { cout }
//}
//let c0 = Car()
//let c1 = Car()
//let c2 = Car()
//print(Car.getCount()) // 3
/*
 self
 在实例方法中代表实例对象
 在类型方法中代表类型
 
 在类型方法static func getCount中
 cout等价于self.cout、Car.self.cout、Car.cout
 */

// MARK: mutating关键字

/*
 mutating
 
 结构体和枚举是值类型，默认情况下，值类型的属性不能被自身的实例方法修改
 在func关键字前加mutating可以允许这种修改行为
 
 */
//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveBy(deltaX: Double, deltaY: Double) {
//        x += deltaX
//        y += deltaY
//        // self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}
//enum StateSwitch {
//    case low, middle, high
//    mutating func next() {
//        switch self {
//        case .low:
//            self = .middle
//        case .middle:
//            self = .high
//        case .high:
//            self = .low
//        }
//    }
//}

// MARK: @discardableResult 关键字

/*
 在func前面加个@discardableResult，可以消除：函数调用后返回值未被使用的警告⚠
 */
//struct Point {
//    var x = 0.0, y = 0.0
//    @discardableResult mutating func moveX(deltaX: Double) -> Double {
//        x += deltaX
//        return x
//    }
//}
//var p = Point()
//p.moveX(deltaX: 10)
//@discardableResult func get() -> Int {
//    return 10
//}
//get()

// MARK: 下标 subscripe

/*
 
 使用subscript可以给任意类型(枚举、结构体、类)增加下标功能，有些地方也翻译为:下标脚本 psubscript的语法类似于实例方法、计算属性，本质就是方法(函数)
   
 subscript中定义的返回值类型决定了
 get方法的返回值类型
 set方法中newValue的类型
 subscript可以接受多个参数，并且类型任意
 
 */

//class Point {
//    var x = 0.0, y = 0.0
//    subscript(index: Int) -> Double {
//        set {
//            if index == 0 {
//                x = newValue
//            } else if index == 1 {
//                y = newValue
//            }
//        }
//        get {
//            if index == 0 {
//                return x
//            } else if index == 1 {
//                return y
//            }
//            return 0
//        }
//    }
//}
//var p = Point()
//p[0] = 11.1
//p[1] = 22.2
//print(p.x) // 11.1
//print(p.y) // 22.2
//print(p[0]) // 11.1
//print(p[1]) // 22.2

/*
 - subscript可以没有set方法，但必须要有get方法。
 - 如果只有get方法，可以省略get。
 - 可以设置参数标签。
 - 下标可以是类型方法。
 */

// 结构体、类作为返回值对比
//class Point {
//    var x = 0, y = 0
//}
//class PointManager {
//    var point = Point()
//    subscript(index: Int) -> Point {
//        get { point }
//    }
//}
//struct Point {
//    var x = 0, y = 0
//}
//class PointManager {
//    var point = Point()
//    subscript(index: Int) -> Point {
//        set { point = newValue }
//        get { point } }
//}
//var pm = PointManager()
//pm[0].x = 11
//pm[0].y = 22
//// Point(x: 11, y: 22)
//print(pm[0])
//// Point(x: 11, y: 22)
//print(pm.point)

// MARK:- 继承
// 查看 语法.playground



// MARK:- ---------------- 闭包 ----------------

/// 1. 
//func sum(_ v1: Int, _ v2: Int) -> Int {
//    v1 + v2
//}
//var fn = sum
//print(MemoryLayout.stride(ofValue: fn))

/// 2. 查看捕获 与 未捕获 num
//typealias Fn = (Int) -> Int
//
//func getFn() -> Fn {
//    // 局部变量
//    var num = 10
//    func plus(_ i: Int) -> Int {
//        num += i
//        return num
//    }
//    return plus
//}
//var fn1 = getFn()
//fn1(1) // call rax
//print(fn1(1))
//print(fn1(2))
//print(fn1(3))

// rax plus
// rdx 堆空间地址

//var fn2 = getFn()
//fn2(2)

/// 3. 验证 不返回plus时，不会捕获num的值。捕获是发生在闭包对象创建时
//typealias Fn = (Int) -> Int
//
//func getFn() -> Fn {
//    // 局部变量
//    var num = 10
//    func plus(_ i: Int) -> Int {
//        num += i
//        return num
//    }
//    //num = 14
////    return plus
////    let fn1: Fn = plus
////    _ = fn1(1)
//    return { $0 }
//}
//var fn1 = getFn()
//fn1(1)

/// 4.捕获多个变量时
//typealias Fn = (Int) -> Int
//
//func getFn() -> Fn {
//    // 局部变量
//    var num1 = 10
//    var num2 = 11
//    func plus(_ i: Int) -> Int {
//        num1 += i
//        num2 += i
//        return num1 + num2
//    }
//    return plus
//}
//var fn1 = getFn()
//fn1(1)

// 0x100008738
// 0x100008740



 





