//
//  StoryReadViewController.swift
//  Comet
//
//  Created by Lucien on 5/6/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class StoryReadViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var chapter2Btn: UIButton!
    @IBOutlet weak var chapter2: UILabel!
    @IBOutlet weak var saveBtn: UIBarButtonItem!
    var chapter2Count: Int = 0
    
    @IBOutlet weak var back: UIBarButtonItem!
    
    @IBOutlet weak var chapter2Title: UITextField!
    @IBOutlet weak var chapter2Text: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        navigationController?.navigationItem.rightBarButtonItem?.accessibilityElementsHidden = true
        chapter2Count = 0
        chapter2Btn.setBackgroundImage(#imageLiteral(resourceName: "6title2"), for: UIControlState())
        chapter2Title.isHidden = true
        chapter2Text.isHidden = true
        navigationController?.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
        
        self.chapter2Title.delegate = self as UITextFieldDelegate
        self.chapter2Text.delegate = self as UITextViewDelegate
    }
    
    @IBAction func Begin(_ sender: Any) {
        saveBtn.accessibilityElementsHidden = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
    func changeChapter2(chapter2Count:Int){
        print(chapter2Count)
        
        if chapter2Count==0 {
            self.chapter2Btn.setBackgroundImage(#imageLiteral(resourceName: "6title2"), for: UIControlState())
            self.chapter2.text = "On January 18th, 2143, our spaceship landed on the Mars safely. But we couldn’t get in touch with NASA at that time. We tried for several times but all ended failed. We stayed in the spaceship for a few hours until we finally got off in our spacesuit.\n\n\"Now we are really gonna stepping on the Mars now, I hope you are ready. Don’t walk too far from the spaceship. And we will meet here again in an hour. I will go with Lena and Lucas. Gene and Nick, you guys will go together. Don’t be late! If you face any problems, contact me with the radio. All clear?\""
            self.chapter2.isHidden = false
            self.chapter2Title.isHidden = true
            self.chapter2Text.isHidden = true
        }else if chapter2Count==1{
            self.chapter2Btn.setBackgroundImage(#imageLiteral(resourceName: "6title3"), for: UIControlState())
            self.chapter2.text = "Instead of happiness, big sorrow and scare came to me on January 18th, 2143 because of the horrible incisdent. Right when we were about to land on Mars, there was a dust storm that we didn’t predict of. The rocks were flying very fast in the thin air like bullets and cannonballs.\n\n\"We can’t land now! It’s too dangerous!”\" Serena argued with Lucas.\n\n\n\n\n\n\n\n"
            self.chapter2.isHidden = false
            self.chapter2Title.isHidden = true
            self.chapter2Text.isHidden = true
        }else{
            self.chapter2Btn.setBackgroundImage(#imageLiteral(resourceName: "6title4"), for: UIControlState())
            self.chapter2.isHidden = true
            self.chapter2Title.isHidden = false
            self.chapter2Text.isHidden = false
        }
    }
    @IBAction func tap(_ sender: Any) {
        chapter2Count += 1
        if chapter2Count>2 {
            chapter2Count = 0
        }
        changeChapter2(chapter2Count: chapter2Count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        chapter2Count += 1
        if chapter2Count>2 {
            chapter2Count = 0
        }
        changeChapter2(chapter2Count: chapter2Count)
    }
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        chapter2Count -= 1
        if chapter2Count<0 {
            chapter2Count = 2
        }
        changeChapter2(chapter2Count: chapter2Count)
    }
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationController?.popViewController(animated: true)
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

extension StoryReadViewController:UIScrollViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        chapter2Title.resignFirstResponder()
        chapter2Text.resignFirstResponder()
    }
}
