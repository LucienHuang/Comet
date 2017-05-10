//
//  WriteStoryViewController.swift
//  Comet
//
//  Created by Lucien on 5/6/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class WriteStoryViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet weak var publishBtn: UIButton!
    @IBOutlet weak var exitBtn: UIButton!
    
    @IBOutlet weak var chapterTitle: UITextField!
    @IBOutlet weak var chapterText: UITextView!
    
    
    @IBOutlet weak var storyTitle: UIButton!
    var storyTitleString: String = ""
    var category: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.tabBarController?.tabBar.isHidden = true
        
        storyTitle.setTitle(storyTitleString, for: .normal)
        self.chapterText.delegate = self
        self.chapterTitle.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func exit(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "publish"{
            if let vc = segue.destination as?PublishedViewController{
                vc.storyTitleString = self.storyTitleString
                vc.category = self.category
            }
        }
    }

}
