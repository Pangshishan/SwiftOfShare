//: [Previous](@previous)



//var num = 5
//if num > 1 {
//    print("11")
//}

//var num = 5
//while num > 0 {
//    //num-- // --不让用了。。
//    num -= 1
//    print("num is \(num)")
//}

//let num = -1
//repeat {
//
//} while num > 0 // 相当于do-while

let names = ["a", "s", "d", "f"]
//for i in 0...3 {
//    print(names[i])
//}

//let range = 1...3
//for i in range {
//    print(names[i])
//}
//
//let a = 1
//let b = 2
//for i in a...b {
//    print(names[i])
//}
//
//for _ in 1...3 {
//    print("11111")
//}

// i 默认是let，也可以声明为var
//for var i in 1...3 {
//    i += 5
//    print(i)
//}
//
//for name in names[0...3] {
//    print(name)
//}

// 半开区间 1..<b , 没有左开的

// 单侧区间，让区间朝一个方向尽可能的远
//for name in names[1...] {
//    print(name)
//}
//for name in names[...2] {
//    print(name)
//}
//
//for name in names[..<2] {
//    print(name)
//}

//let range = ...5 // 去穷小 到 5
//range.contains(7)
//range.contains(1)
//range.contains(-2)

//ClosedRange 开区间
//Range 半开区间
//PartialRangeThrough 单侧区间

// 字符、字符串 也能使用区间运算符，但默认不能用在for-in中
//let stringRange = "cc"..."ff"
//stringRange.contains("cb")
//stringRange.contains("dz")
//stringRange.contains("fg")

// 带间隔的区间
//let hours = 11
//let hourInterval = 2
//for tickMark in stride(from: 4, through: hours, by: hourInterval) {
//    print(tickMark)
//} // 4 6 8 10

//var number = 1;
//switch number {
//case 1:
//    print(1)
//    break
//case 2:
//    print(2)
//    break
//default:
//    print("other")
//    break
//}
// case、default 后面不能写大括号{}

//switch number {
//case 1:
//    print(1)
//case 2:
//    print(2)
//default:
//    print("other")
//}
// 默认可以不写break，并不会贯穿到后面的条件

//switch number {
//case 1:
//    print(1)
//    fallthrough
//case 2:
//    print(2)
//    fallthrough
//default:
//    print("other")
//}
// fallthrough 用来实现贯穿效果

//switch number {
//case 1:
//    print(1)
//case 2:
//    print(2)
//}
// switch要保证处理所有情况

// case、default后面至少要有一条语句，如果不想做任何事，价格break即可
//switch number {
//case 1:
//    print(1)
//case 2:
//    print(2)
//default:
//    break
//}

// 如果能保证所有情况都处理了，可以不加default
//enum Answer { case right, wrong }
//let answer = Answer.right
//switch answer {
//case .right:
//    print("right")
//case .wrong:
//    print("wrong")
//}

// switch 支持 String、Character
//let string = "aaaa"
//switch string {
//case "aaaa":
//    fallthrough
//case "bbbb":
//    print("right")
//default:
//    break
//}
//
//switch string {
//case "aaaa", "bbbb":
//    print("right")
//default:
//    break
//}

// 区间匹配，元组匹配，都可以用switch

// 值绑定
//let point = (2, 0)
//switch point {
//case (let x, 0):
//    print("\(x), 0")
//case (0, let y):
//    print("0, \(y)")
//case (let x, let y):
//    print("\(x), \(y)")
//}

// where
//let point = (2, 0)
//switch point {
//case let (x, y) where x == y:
//    print("x == y")
//case let (x, y) where x == -y:
//    print("x == -y")
//case let (_, _):
//    print("others")
//}

//var numbers = [10, -20, 30, -40]
//var sum = 0
//for num in numbers where num > 0 {
//    sum += num
//}
//print(sum)

// 标签语句
//outer: for i in 1...4 {
//    for k in 1...4 {
//        if k == 3 {
//            continue outer
//        }
//        if i == 3 {
//            break outer
//        }
//        print("i == \(i), k == \(k)")
//    }
//}


//: [Next](@next)
