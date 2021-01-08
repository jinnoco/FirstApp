//
//  NextViewController.swift
//  FirstApp
//
//  Created by J on 2021/01/06.
//

import UIKit

class NextViewController: UIViewController {

    var count = 0
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     countLabel.text = "0"

    }
    
    @IBAction func plus(_ sender: Any) {
        count = count + 1
        changeColor()
        back()
        countLabel.text = String(count)
    }

    @IBAction func minus(_ sender: Any) {
        count = count - 1
        changeColor()
        countLabel.text = String(count)
    }
    
    func changeColor(){
        if count >= 10 {
            self.view.backgroundColor = .cyan
        }else if count >= 9{
            self.view.backgroundColor = .darkGray
        }
    }
    
    
    func back(){
        if count == 20 {
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        count = 0
        countLabel.text = String(count)
    }
    
}
