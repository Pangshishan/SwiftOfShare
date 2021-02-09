//
//  File.swift
//  TestSwift
//
//  Created by 泡泡 on 2021/2/9.
//

/*
 汇编语言的种类：
 - 8086汇编   （16bit）
 - x86汇编    （32bit）
 - x64汇编    （64bit）
 - ARM汇编    （嵌入式，移动设备）
 等等
 
 x86和x64汇编根据编译器的不同，有两种书写形式
 - Intel：Windows派系
 - AT&T：Unix派系
 
 在iOS中，最主要的汇编语言是：
 - AT&T 汇编  ->  iOS模拟器
 - ARM 汇编   ->  iOS真机设备
 
 */


// MARK:- 常用寄存器
/*
 
 有16个常用寄存器
 rax、rbx、rcx 、rdx、rsi、rdi、rbp、rsp
 r8、r9、r10、r11、r12、r13、r14、r15
 
 寄存器的具体用途
 rax、rdx 常作为函数返回值使用
 rdi、rsi、rdx、rcx、r8、r9等寄存器常用于存放函数参数
 rsp、rbp用于栈操作
 rip 作为指令指针
 存储着CPU下一条要执行的指令的地址
 一旦CPU读取一条指令，rip会自动指向下一条指令(存储下一条指令的地址)
 
 
 8字节    低四字节    低2字节      高八位   低八位
 %rax    %eax       %ax         %ah     %al
 %r8     %r8d       %r8w                %r8b
 
 只有 %rax %rbx %rcx %rdx 有 %ah %bh %ch %dh

 */

// MARK:- lldb常见指令

/* lldb常见指令
 
 读取寄存器的值
 register read/格式
 register read/x
 
 修改寄存器的值
 pregister write 寄存器名称 数值
 register write rax 0
 
 读取内存中的值
 x/数量-格式-字节大小 内存地址
 x/3xw 0x0000010
 
 修改内存中的值
 memory write 内存地址 数值
 memory write 0x0000010 10
 
 格式
 x是16进制，f是浮点，d是十进制
 
 字节大小
 b – byte 1字节
 h – half word 2字节
 w – word 4字节
 g – giant word 8字节
 
 expression 表达式
 可以简写:expr 表达式
 expression $rax
 expression $rax = 1
 
 po 表达式
 print 表达式
 
 po/x $rax
 po (int)$rax
 
 
 thread step-over、next、n
 单步运⾏行行，把子函数当做整体⼀一步执⾏行行(源码级别)
 
 thread step-in、step、s
 单步运⾏行行，遇到子函数会进⼊入子函数(源码级别)
 
 thread step-inst-over、nexti、ni
 单步运⾏行行，把子函数当做整体⼀一步执⾏行行(汇编级别)
 
 thread step-inst、stepi、si
 单步运⾏行行，遇到子函数会进⼊入子函数(汇编级别)
 
 thread step-out、finish
 直接执⾏行行完当前函数的所有代码，返回到上一个函数(遇到断点会卡住)
 
 */

// MARK:- 规律
/*
 内存地址格式为:0x4bdc(%rip)，一般是全局变量，全局区(数据段)
 内存地址格式为:-0x78(%rbp)，一般是局部变量，栈空间
 内存地址格式为:0x10(%rax)，一般是堆空间
 
 */
