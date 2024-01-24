//
//  ViewController.swift
//  Week2Part5
//
//  Created by 林佑淳 on 2024/1/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var didYouLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBAction func showButton(_ sender: Any) {
        didTapButton()
    }

    let textColorArray = [ UIColor.green,UIColor.red,UIColor.blue, UIColor.orange, UIColor.purple,UIColor.cyan ,UIColor.yellow ]
    let backgroundColorArray = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green,UIColor.cyan, UIColor.blue, UIColor.purple]
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    var randomNumber = Int.random(in: 0...6)

    func didTapButton(){
        
        var newRandomNumber = Int.random(in: 0...6)
                while newRandomNumber == randomNumber {
                    newRandomNumber = Int.random(in: 0...6)
                }
        let randomNumber = newRandomNumber
        
        textLabel.textColor = textColorArray[randomNumber]
        didYouLabel.textColor = textColorArray[randomNumber]
        colorView.backgroundColor = backgroundColorArray[randomNumber]
        textLabel.text = text[randomNumber]}
    
}

