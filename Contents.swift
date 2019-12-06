import UIKit

//Pass Data from View Controller to another ViewController

protocol passDataDelegate
{
    func passData(data :String)
}

class FirstVc
{
    var delegate : passDataDelegate?
}

class SecondVc : passDataDelegate
{
    func passData(data: String) {
        print("The Data is : \(data)")
    }
}

let firstVc = FirstVc()
let secondVc = SecondVc()


firstVc.delegate = SecondVc()


firstVc.delegate?.passData(data: "Ahmed Elmemy")
