//
//  WritingViewController.swift
//  Comet
//
//  Created by Lucien on 5/6/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class WritingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet var saveButton: UIBarButtonItem!
    @IBOutlet weak var back: UIBarButtonItem!
    
    @IBOutlet weak var coverBtn: UIButton!
    @IBOutlet weak var coverImg: UIImageView!
    
    @IBOutlet var categoryPicker: UIPickerView!
    
    @IBOutlet var exitBtn: UIButton!
    
    @IBOutlet weak var storyTitle: UITextField!
    var thisTitle: String?
    
    
    let categories = ["Fanfiction","Romance","Horror","Sci-fi","Adventure","Classics","Fantasy","Humor","Poetry","Mystery","Teen fiction"]
    var picked:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        coverImg.isHidden = true
        navigationController?.tabBarController?.tabBar.isHidden = true
        navigationController?.navigationItem.rightBarButtonItem = nil
        self.storyTitle.delegate = self
    }

    @IBAction func goBack(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func exit(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
    @IBAction func addCover(_ sender: Any) {
        coverImg.isHidden = false
        coverBtn.isHidden = true
    }
    
    @IBAction func showNext(_ sender: Any) {
        navigationController?.navigationItem.rightBarButtonItem = saveButton
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categories[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = categories[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSForegroundColorAttributeName:UIColor.white])
        return myTitle
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        picked = categories[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startWriting"{
            if let vc = segue.destination as?WriteStoryViewController{
                vc.storyTitleString = self.storyTitle.text!
                vc.category = self.picked
            }
        }
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
