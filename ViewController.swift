//
//  ViewController.swift
//  FirstApp
//
//  Created by Release on 2016. 3. 4..
//  Copyright © 2016년 Release. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    let messageArray = ["May the force be with you", "Live long and prosper", "To infinity and beyond", "Space is big. You just won't believe how vastly, hugely, mindbogglinly big it is", 10]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doButtonTap(sender: AnyObject) {
        print("Button touched")
        if let nextString = self.messageArray[index] as? String{
            self.messageLabel.text = nextString
        }
        index++
        index %= self.messageArray.count
    }
}

