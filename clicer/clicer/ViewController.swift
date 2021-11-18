//
//  ViewController.swift
//  clicer
//
//  Created by user on 23.10.21.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0 {
        didSet {
            print("Current counret : \(counter)")
            updateLabel()
        }
    }
    
    func updateLabel() {
        label.text = "Counter: \(counter)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func IncButton(_ sender: Any) {
        if let sender = sender as? UIButton{
            counter += sender.tag
        }
        
    }
    @IBOutlet weak var label: UILabel!
    
}

