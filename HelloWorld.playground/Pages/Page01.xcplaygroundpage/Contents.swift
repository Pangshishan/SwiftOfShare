import UIKit
import PlaygroundSupport

let view = UIView()
view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
view.backgroundColor = UIColor.red
PlaygroundPage.current.liveView = view

//let imageView = UIImageView(image: UIImage(named: "logo"))
//PlaygroundPage.current.liveView = imageView

//let vc = UITableViewController()
//vc.view.backgroundColor = UIColor.lightGray
//PlaygroundPage.current.liveView = vc

// 内联函数
/*
 如果开启了编译器优化（Release模式默认会开启优化），编译器会自动将某些函数编程内联函数。
 将函数调用展开成函数体。
 
 不会内联的函数：
 1.函数体较长
 2.包含递归
 3.包含动态派发
 */
func test() {
    print(11111)
}
test() // buildsetting optimization
