//
//  ViewController.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 12/22/14.
//  Copyright (c) 2014 RoshWare. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let pickerData = ["Select a Time Period","Time Period 1","Time Period 2", "Time Period 3","Time Period 4", "Time Period 5", "Time Period 6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.periodPicker.dataSource = self;
        self.periodPicker.delegate = self;
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        if Reachability.isConnectedToNetwork() == true {
//            print("Internet connection OK")
//        } else {
//            print("Internet connection FAILED")
//            let alertController = UIAlertController(title: "No Internet Connection", message: "Images may not load", preferredStyle: .Alert)
//            let Cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
//                UIAlertAction in
//                print("Connection Failure Aknowledged")
//            }
//            alertController.addAction(Cancel)
//            self.presentViewController(alertController, animated: true, completion: nil)
//        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var periodPicker: UIPickerView!
    
    @IBOutlet weak var goToTP: UIButton!
    @IBOutlet weak var homeSignBtn: UIButton!
    
    var selected = String()
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (row == 0){
            selected = ""
        }
        if (row == 1){
            selected = "1"
        }
        if (row == 2){
            selected = "2"
        }
        if (row == 3){
            selected = "3"
        }
        if (row == 4){
            selected = "4"
        }
        if (row == 5){
            selected = "5"
        }
        if (row == 6){
            selected = "6"
        }
    }
    
    
    @IBAction func goToTP(_ sender: AnyObject) {
        if (selected == "1"){
            self.performSegue(withIdentifier: "segue1", sender: nil)
        }
        if (selected == "2"){
            self.performSegue(withIdentifier: "segue2", sender: nil)
        }
        if (selected == "3"){
            self.performSegue(withIdentifier: "segue3", sender: nil)
        }
        if (selected == "4"){
            self.performSegue(withIdentifier: "segue4", sender: nil)
        }
        if (selected == "5"){
            self.performSegue(withIdentifier: "segue5", sender: nil)
        }
        if (selected == "6"){
            self.performSegue(withIdentifier: "segue6", sender: nil)
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return pickerData[row]
    }
    
}
