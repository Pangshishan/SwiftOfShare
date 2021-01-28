//: [Previous](@previous)


//enum Direction {
//    case north
//    case south
//    case east
//    case west
//}
//enum Direction {
//    case north, south, east, west
//}

//var dir = Direction.west
//dir = Direction.east
//dir = .north
//print(dir)

/*
 关联值
 可以将枚举的成员值 跟 其他类型的 关联存储在一起
 */
//enum Score {
//    case points(Int)
//    case grade(Character)
//}
//var score = Score.points(99)
//score = .grade("S")
//
//switch score {
//case let .points(i):
//    print(i, "point")
//case let .grade(i):
//    print("grade", i)
//}

//enum Date {
//    case digit(year: Int, month: Int, day: Int)
//    case string(String)
//}
//var date = Date.digit(year: 2021, month: 01, day: 18)
//date = .string("20210118")
//switch date {
//// 把 let 或 var 写 .digit 前面，相当于三个全是同样的
//case .digit(let year, let month, var day):
//    print(year, month, day)
//case let .string(value):
//    print(value)
//}
//print(date)

/*
 举个例子，密码可分为数字密码 和 手势密码
 */
//enum Password {
//    case number(Int, Int, Int, Int)
//    case gesture(String)
//}

/*
 原始值
 枚举成员可以使用 相同类型 的默认值预先关联，这个默认值叫做：原始值
 */
//enum SomeCharacter : Character {
//    case a = "♥"
//    case b = "😝"
//    case c = "C"
//}
//var char1 = SomeCharacter.a
//print(char1)
//print(char1.rawValue)


/*
 隐式原始值
 如果枚举的原始值是 Int String, swift会自动分配原始值
 */
//enum Direction : String {
//    case north = "north"
//    case south = "south"
//    case east = "east"
//    case west = "west"
//}
//enum Direction : String {
//    case north, south, east, west
//}
//print(Direction.north)
//print(Direction.north.rawValue)

// Int 从0开始，跟OC一样了就

/*
 递归枚举  indirect前面加
 就是，把枚举当做它的关联值
 */
//indirect enum ArithExpr { // 算数表达式
//    case number(Int)
//    case sum(ArithExpr, ArithExpr)
//    case diff(ArithExpr, ArithExpr)
//}

//enum ArithExpr { // 算数表达式
//    case number(Int)
//    indirect case sum(ArithExpr, ArithExpr)
//    indirect case diff(ArithExpr, ArithExpr)
//}
//
//func calculate(_ expr: ArithExpr) -> Int {
//    switch expr {
//    case let .number(value):
//        return value
//    case let .sum(left, right):
//        return calculate(left) + calculate(right)
//    case let .diff(left, right):
//        return calculate(left) - calculate(right)
//    }
//}
//
//let five = ArithExpr.number(5)
//let one = ArithExpr.number(1)
//let sum = ArithExpr.sum(one, five)
//let diff = ArithExpr.diff(five, one)
//calculate(sum)
//calculate(diff)

/*
 MemoryLayout
 获取数据类型占用的内存大小
 */
//var age = 10
//
// 泛型
//MemoryLayout<Int>.size
//MemoryLayout<Int>.stride
//MemoryLayout<Int>.alignment
//
//MemoryLayout.size(ofValue: age)
//MemoryLayout.stride(ofValue: age)
//MemoryLayout.alignment(ofValue: age)
//
//enum Password {
//    case number(Int, Int, Int, Int) // 32
//    case other
//}
//
//var pwd = Password.number(5, 6, 4, 7) // 33
//pwd = .other // 0
//
//var pwd2 = Password.number(10, 9, 100, 19999)
//
//var pwd3 = Password.number(111, 222, 100, 19999)
//
//MemoryLayout<Password>.size // 实际占用到的空间大小
//MemoryLayout<Password>.stride // 分配占用的空间大小
//MemoryLayout<Password>.alignment // 字节对齐参数

// 加原始值试试 Int String
//enum Season {
//    case spring, summer, autumn, winter
//}
//var s = Season.spring //
//var s1 = Season.spring //
//var s2 = Season.spring //
//
//MemoryLayout<Season>.size
//MemoryLayout<Season>.stride
//MemoryLayout<Season>.alignment

// 关联值、原始值的区别
/*
 原始值是不会存到枚举变量内存里的
 关联值会
 */

//: [Next](@next)
