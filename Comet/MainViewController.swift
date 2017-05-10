//
//  MainViewController.swift
//  Comet
//
//  Created by Lucien on 5/4/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tabBar.tintColor = UIColor.white
        selectedIndex = 1
        
        UIApplication.shared.setStatusBarHidden(false, with:.fade)
        UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true)
        
        for one in self.tabBar.items!{
            one.badgeColor = UIColor.init(red: 1, green: 0.15, blue: 0.15, alpha: 1)
            //            one.badgeValue = "50"f
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
