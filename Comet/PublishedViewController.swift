//
//  PublishedViewController.swift
//  Comet
//
//  Created by Lucien on 5/7/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class PublishedViewController: UIViewController {
    var storyTitleString: String = ""
    var category: String = ""
    
    @IBOutlet weak var storyTitle: UILabel!
    @IBOutlet weak var cateString: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        storyTitle.text = storyTitleString
        cateString.text = category
        navigationController?.navigationItem.leftBarButtonItem = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func exit(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationController?.popToRootViewController(animated: true)
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
