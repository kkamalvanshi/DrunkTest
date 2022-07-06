//
//  ViewController.swift
//  FingerCount
//
//  Created by Kanishk Kamalvanshi on 7/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var numInput: UITextField!
    
    
    @IBAction func guess(_ sender: Any) {
        let fingerNum = String(arc4random_uniform(6))
        
        
        if numInput.text == fingerNum {
            output.text = "You are right!"
        } else if numInput.text == "" {
            output.text = "Please enter a number"
        } else {
            output.text = "Wrong, it's \(fingerNum)"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

