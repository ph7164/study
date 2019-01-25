//
//  ViewController.swift
//  add
//
//  Created by ph7164 on 2019. 1. 24..
//  Copyright © 2019년 ph7164. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var input1: UITextField!
    @IBOutlet var input2: UITextField!
    @IBOutlet var result: UILabel!
    
    @IBAction func addClicked(_ sender: Any) {
        let aStr=input1.text
        let bStr=input2.text
        
        let a:Int! = Int(aStr!)
        let b:Int! = Int(bStr!)
        
        let addResult = add(a:a, b:b)
        result.text = String(addResult)
    }
    func add(a:Int, b:Int)->Int{
        return a+b
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

