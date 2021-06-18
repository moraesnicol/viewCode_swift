//
//  ViewController.swift
//  viewCode_swift
//
//  Created by Gabriel on 18/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    let screen = ViewControllerScreen()
    
    
    override func loadView() {
        self.view = screen
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

