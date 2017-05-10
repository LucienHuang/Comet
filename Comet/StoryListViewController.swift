//
//  StoryListViewController.swift
//  Comet
//
//  Created by Lucien on 5/5/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class StoryListViewController: UIViewController {
    @IBOutlet weak var tabs: UISegmentedControl!
    @IBOutlet weak var myStories: UIView!
    @IBOutlet weak var storyList: UIImageView!
    @IBOutlet weak var btnFM: UIButton!
    @IBOutlet weak var drafts: UIView!
    
    @IBAction func indexChanged(_ sender: Any) {
        switch tabs.selectedSegmentIndex {
        case 0:
            storyList.isHidden = false
            btnFM.isHidden = false
            myStories.isHidden = true
            drafts.isHidden = true
            break
        case 1:
            storyList.isHidden = true
            btnFM.isHidden = true
            myStories.isHidden = false
            drafts.isHidden = true
            break
        case 2:
            storyList.isHidden = true
            btnFM.isHidden = true
            myStories.isHidden = true
            drafts.isHidden = false
        default:
            storyList.isHidden = false
            btnFM.isHidden = false
            myStories.isHidden = true
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabs.selectedSegmentIndex = 0
        myStories.isHidden = true
        drafts.isHidden = true
        navigationController?.navigationBar.isHidden = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
