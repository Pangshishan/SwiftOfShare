//: [Previous](@previous)

// 报错
//let age
//age = 10

// 指定类型
//let age: Int
//age = 10
//age = 20 // 常量不能2次赋值了

// 常量值 不要求再编译时期确定，使用前赋值就行了
//var num = 10
//num += 20
//num += 30
//let age = num
//print(age)

//let age: Int
//var num = 10
//num += 20
//num += 30
//age = num
//print(age)

// 常量、变量在初始化之前是不能使用的
//let age: Int = 10
//var height: Float = 10
//print(age)
//print(height)

//print("\(age)" + "666")

// 标识符
let 年龄_😀 = 18
print(年龄_😀)

//let 1_年龄_😀 = 18
//print(1_年龄_😀)

//Int
//print(Int.min)
//print(Int.max)

//let num: Float = 10
//let num1 = 20
//let bool = true
//let string = "hha"

// 字符 可存储ASCII，必须标明类型
//let character: Character = "A"

// 整数
//let intD = 17       // 10进制
//let intB = 0b10001  // 2
//let intO = 0o21     // 8
//let intH = 0x11     // 16

// 浮点数
//let doubleD = 125.0 // 10进制 等于 1.25e2

// 浮点数和整数 可以添加额外的 0 或者 下划线 来增强可读性
//let money = 100_0000
//let money1 = 1000 000

// 整数转换
//let int1: UInt16 = 2000
//let int2: UInt8 = 1
//let int3 = int1 + UInt16(int2) // 转换成占空间多的

// 整数浮点数转换
//let int1 = 3
//let double1 = 0.2131
//let a = Double(int1) + double1 // 直接加会报错的

// 字面量就可以直接相加
//let result = 3 + 0.1415926


// 数组
//let array = [1, 3, 5, 7, 9]
//let dictionary = ["age": 18]

// 元组，不同类型组合在一起
//let error = (404, "Not Found")
//error.0
//error.1

//let http200Status = (statusCode: 200, description: "OK")
//http200Status.statusCode
//http200Status.description

//let http404Error = (404, "not found")
//
//let (statusCode, statusMsg) = http404Error
//
//let (justCode, _) = http404Error;

//: [Next](@next)

