

// 可选类型
//var str: String = "122"
//str = nil;

//var str: String? = "aaa"
//str = nil

// 可选类型初始值就是nil
//var age: Int?
//age = 10
//age = nil

//var array = [1, 2, 3, 4]
//func get(_ index: Int) -> Int? {
//    if index < 0 || index >= array.count {
//        return nil
//    }
//    return array[index]
//}
//
//print(get(1))
//print(get(-1))

// 强制解包 用 ！，如果对nil强制解包，崩溃
//var age = get(-1)
//print(age!)

//var num = Int("s123")
//if num == nil {
//    print("nil")
//} else {
//    print("\(num!)")
//}

/*
 可选绑定
 能解包就自动解包，并赋值给let或var。
 不能解包就走else
 */
//var num = Int("s123")
//if let value = num {
//    print("\(value)")
//} else {
//    print("nil")
//}

//enum Season : Int {
//    case spring = 1, summer, autumn, winter
//}
//
//if let season = Season(rawValue: 16) {
//    switch season {
//    case .spring:
//        print("spring")
//    default:
//        print("\(season)")
//    }
//} else {
//    print("啥也不是")
//}
//
//var season1 = Season(rawValue: 16);
//var season2 = Season(rawValue: 16);
//// 可选绑定时，不能用 &&
//if let first = season1,
//   let second = season2,
//   first == .spring {
//    print(first, second)
//} else {
//    print("啥也不是")
//}


/*
 空合并运算符 ??
 a ?? b
 a 是可选项
 b 是可选项 或 不是可选项
 b 跟 a的存储类型，必须相同
 
 如果 a 不为nil，返回a，如果是nil返回b。相当于给默认值
 如果 b 不是可选项，a会自动解包
 */

//let a: Int? = 1
//let b: Int? = 2
//let c = a ?? b
//print(c)

//let a: Int? = 10
//let b = a ?? 100
//print(a)
//print(b)

//let a: Int? = 1
//let b: Int? = 2
//let c = a ?? b ?? 3
//print(c)

//let a: Int? = nil
//let b: Int? = 2
//if let c = a ?? b {
//    print(c)
//}
// 类似于 if a != nil || b != nil

// 字典取出来的值是可选值，数组取出来的不是可选值
//var dict = ["key": "value"]
//var value = dict["key"]
//value = dict["aaa"]
//print(value)

/*
 guard 条件 else {
    // do something
    退出当前作用域
    // return、break、continue、throw error
 }
 条件为fause是，执行大括号，用于提前退出
 */

//func test() {
//    let dict = ["key": "value"]
//    guard let value = dict["key"] else {
//        return
//    }
//    print(value)
//}
//test()


/*
 隐式解包
 用 ！
 在某些情况下，可选项一旦被设定了值之后，就一定有值
 最好是在，确保他一直有值，肯定不为nil的时候再用，比如给个默认值，之后不再赋值成nil
 */
//var num1: Int! = 10
//let num2: Int = num1 // 相当于使用的时候，就强制解包
//
//print(num2 + 7)
//
////num1 = nil
//
//if num1 != nil {
//    print(num1 + 6)
//}
//
//if let num3 = num1 {
//    print(num3 + 6)
//}

// 消除打印可选项的警告
//let num: Int? = 10
//print("\(num)")
//print("\(num!)")
//print(String(describing: num))
//print("\(num ?? 0)")

// 多重可选项
//var num1: Int? = 10
//var num2: Int?? = num1
//var num3: Int?? = 10

//var num1: Int? = nil
//var num2: Int?? = num1
//var num3: Int?? = nil
//print(num2 == num3)

/*
 查看 变量层级
 frame variable -R
 简写成 fr v -R
 */

