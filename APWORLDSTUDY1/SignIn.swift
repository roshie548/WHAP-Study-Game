//
//  SignIn.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 1/14/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//

import UIKit

class SignIn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //check what the device is
        enum UIUserInterfaceIdiom : Int {
            case unspecified
            
            case phone // iPhone and iPod touch style UI
            case pad // iPad style UI
        }
        
        
        if (UIDevice.current.userInterfaceIdiom == .pad){
            self.backBtn.alpha = 0
            //if ipad, dont show backBtn
        } else {
            self.backBtn.alpha = 1
            //if not ipad, show backBtn
        }
        

        
    }
    
    @IBOutlet weak var backBtn: UIButton!
    
    @IBAction func signBackHome(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
