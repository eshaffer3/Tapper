//
//  ViewController.swift
//  tapper
//
//  Created by Eve Shaffer on 11/26/18.
//  Copyright © 2018 Eve Shaffer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var tapCountLabel: UILabel!
    
    var count = 0
    
//    convenience init() {
//        super.init()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // Set the color before the view loads
    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.yellow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateCount()
    }
    
    @IBAction func increment() {
        count = count + 1
        updateCount()
    }
    
    func updateCount() {
        tapCountLabel.text = String(count)
    }
    
    @IBAction func ResetCount() {
        count = 0
        updateCount()
    }
    
}

