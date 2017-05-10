//
//  ViewController.swift
//  Comet
//
//  Created by Lucien on 5/4/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.init(timeInterval: 3.0, target: self, selector: #selector(timeMoveOn), userInfo: nil, repeats: false)
        print("ANYTHING")
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    func timeMoveOn(){
        self.performSegue(withIdentifier: "loaded", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

