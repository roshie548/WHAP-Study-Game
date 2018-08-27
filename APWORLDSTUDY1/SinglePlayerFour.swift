//
//  SinglePlayerFour.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 5/8/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//

import UIKit
import iAd

class SinglePlayerFour: UIViewController, ADBannerViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomQuestions()
        
        Banner.isHidden = true
        Banner.delegate = self
        self.canDisplayBannerAds = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var questionbox: UIButton!
    @IBOutlet weak var answerbox1: UIButton!
    @IBOutlet weak var answerbox2: UIButton!
    @IBOutlet weak var answerbox3: UIButton!
    @IBOutlet weak var answerbox4: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    var CorrectAnswer = String()
    
    @IBOutlet weak var Banner: ADBannerView!
    
    
    @IBAction func exit(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextQuestion(_ sender: AnyObject) {
        RandomQuestions()
        answerbox1.backgroundColor = UIColor.white
        answerbox2.backgroundColor = UIColor.white
        answerbox3.backgroundColor = UIColor.white
        answerbox4.backgroundColor = UIColor.white
    }
    
    
    func RandomQuestions(){
        var RandomNumber = arc4random() % 20
        RandomNumber += 1
        
        let image = UIImage(named: "blank.png")
        imageView.image = image
        
        switch(RandomNumber){
        case 1:
            questionbox.setTitle("Which characteristics influenced the design of the Portugese caravel?", for: UIControlState())
            answerbox1.setTitle("The Chinese rudder", for: UIControlState())
            answerbox2.setTitle("The Arab Lanteen sail", for: UIControlState())
            answerbox3.setTitle("Square sails of English ships", for: UIControlState())
            answerbox4.setTitle("All of the above", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named:"Caravela_de_armada_of_Joao_Serrao.jpg")
            imageView.image = image
            //"Caravela de armada of Joao Serrao" by Unknown - Livro das Armadas. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Caravela_de_armada_of_Joao_Serrao.jpg#/media/File:Caravela_de_armada_of_Joao_Serrao.jpg
            break
        case 2:
            questionbox.setTitle("Whose work put the Portugese at the front of maritime exploration in the mid-15th century?", for: UIControlState())
            answerbox1.setTitle("Prince Henry the Navigator", for: UIControlState())
            answerbox2.setTitle("Christopher Columbus", for: UIControlState())
            answerbox3.setTitle("Bartolomeu Dias", for: UIControlState())
            answerbox4.setTitle("Vasco da Gama", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 3:
            questionbox.setTitle("Who developed enclaves in East Africa to control their trade in the Indian Ocean Trade Network?", for: UIControlState())
            answerbox1.setTitle("Spain", for: UIControlState())
            answerbox2.setTitle("Portugal", for: UIControlState())
            answerbox3.setTitle("France", for: UIControlState())
            answerbox4.setTitle("Russia", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 4:
            questionbox.setTitle("Which of the following was called the 'poor man's crop'?", for: UIControlState())
            answerbox1.setTitle("Indigo", for: UIControlState())
            answerbox2.setTitle("Sugar", for: UIControlState())
            answerbox3.setTitle("Tobacco", for: UIControlState())
            answerbox4.setTitle("Rum", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 5:
            questionbox.setTitle("Which of the following was called the 'rich man's crop", for: UIControlState())
            answerbox1.setTitle("Tobacco", for: UIControlState())
            answerbox2.setTitle("Rum", for: UIControlState())
            answerbox3.setTitle("Indigo", for: UIControlState())
            answerbox4.setTitle("Sugar", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 6:
            questionbox.setTitle("Which of the following would most likely be exported from the Caribbean in the Triangle Trade?", for: UIControlState())
            answerbox1.setTitle("Sugar", for: UIControlState())
            answerbox2.setTitle("Cotton Textiles", for: UIControlState())
            answerbox3.setTitle("African Slaves", for: UIControlState())
            answerbox4.setTitle("Potatoes", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 7:
            questionbox.setTitle("Which of the following did Europeans primarily use to trade in Asian markets?", for: UIControlState())
            answerbox1.setTitle("Gold", for: UIControlState())
            answerbox2.setTitle("Silver", for: UIControlState())
            answerbox3.setTitle("Silk", for: UIControlState())
            answerbox4.setTitle("Bronze", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 8:
            questionbox.setTitle("Which of the following animals transformed the Plains Indians in this time period", for: UIControlState())
            answerbox1.setTitle("Pigs", for: UIControlState())
            answerbox2.setTitle("Buffaloes", for: UIControlState())
            answerbox3.setTitle("Horses", for: UIControlState())
            answerbox4.setTitle("Cattle", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 9:
            questionbox.setTitle("What staple crop was grown on chinampas", for: UIControlState())
            answerbox1.setTitle("Maize", for: UIControlState())
            answerbox2.setTitle("Wheat", for: UIControlState())
            answerbox3.setTitle("Rice", for: UIControlState())
            answerbox4.setTitle("Potato", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 10:
            questionbox.setTitle("After the fall of the Golden Horde, Russian leaders took the name 'tzar' to mimic which empire?", for: UIControlState())
            answerbox1.setTitle("Mongol Empire", for: UIControlState())
            answerbox2.setTitle("Roman Empire", for: UIControlState())
            answerbox3.setTitle("Byzantine Empire", for: UIControlState())
            answerbox4.setTitle("An Islamic Caliphate", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 11:
            questionbox.setTitle("What was the most significant effect of the Columbian Exchange?", for: UIControlState())
            answerbox1.setTitle("Increased African global power", for: UIControlState())
            answerbox2.setTitle("Increased European Cooperation", for: UIControlState())
            answerbox3.setTitle("Population changes", for: UIControlState())
            answerbox4.setTitle("Spread of Christianity", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 12:
            questionbox.setTitle("What was the general status of women in the Mughal Empire?", for: UIControlState())
            answerbox1.setTitle("They were superior to men", for: UIControlState())
            answerbox2.setTitle("Sati was not practiced anymore", for: UIControlState())
            answerbox3.setTitle("Women's statuses were extremely raised", for: UIControlState())
            answerbox4.setTitle("They remained low, with a few exceptions", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 13:
            //Taj Mahal
            questionbox.setTitle("This structure was made to serve as a...?", for: UIControlState())
            answerbox1.setTitle("Mausoleum", for: UIControlState())
            answerbox2.setTitle("Capital", for: UIControlState())
            answerbox3.setTitle("Palace", for: UIControlState())
            answerbox4.setTitle("Church", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Taj_Mahal_in_March_2004.jpg")
            imageView.image = image
            //"Taj Mahal in March 2004" by Dhirad. Licensed under CC BY-SA 3.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Taj_Mahal_in_March_2004.jpg#/media/File:Taj_Mahal_in_March_2004.jpg
            break
        case 14:
            questionbox.setTitle("Which empire's religious beliefs led to their ultimate demise?", for: UIControlState())
            answerbox1.setTitle("Inca", for: UIControlState())
            answerbox2.setTitle("Aztec", for: UIControlState())
            answerbox3.setTitle("Mayan", for: UIControlState())
            answerbox4.setTitle("Olmec", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 15:
            questionbox.setTitle("Who were the only Europeans to be allowed to trade with Japan from 1638 to 1854?", for: UIControlState())
            answerbox1.setTitle("Portugese", for: UIControlState())
            answerbox2.setTitle("Spanish", for: UIControlState())
            answerbox3.setTitle("Dutch", for: UIControlState())
            answerbox4.setTitle("French", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 16:
            questionbox.setTitle("Which of the following is NOT associated with the end of the Thirty Years' War?", for: UIControlState())
            answerbox1.setTitle("Balance of Power", for: UIControlState())
            answerbox2.setTitle("State Sovereignty", for: UIControlState())
            answerbox3.setTitle("Emergence of Prussian militarism", for: UIControlState())
            answerbox4.setTitle("Religious Tolerance", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 17:
            questionbox.setTitle("What dynasty did the Manchus establish?", for: UIControlState())
            answerbox1.setTitle("Qing", for: UIControlState())
            answerbox2.setTitle("Tang", for: UIControlState())
            answerbox3.setTitle("Song", for: UIControlState())
            answerbox4.setTitle("Ming", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 18:
            questionbox.setTitle("What was the status of the Manchus in the Qing dynasty?", for: UIControlState())
            answerbox1.setTitle("Minority", for: UIControlState())
            answerbox2.setTitle("Elite class", for: UIControlState())
            answerbox3.setTitle("All of the above", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 19:
            questionbox.setTitle("What was the new ruling class in Latin America?", for: UIControlState())
            answerbox1.setTitle("Creoles", for: UIControlState())
            answerbox2.setTitle("Peninsulares", for: UIControlState())
            answerbox3.setTitle("Mestizos", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 20:
            questionbox.setTitle("Who started the Protestant Reformation?", for: UIControlState())
            answerbox1.setTitle("Martin Luther", for: UIControlState())
            answerbox2.setTitle("Peter the Great", for: UIControlState())
            answerbox3.setTitle("Catherine the Great", for: UIControlState())
            answerbox4.setTitle("King Henry VIII", for: UIControlState())
            CorrectAnswer = "1"
            break
        default:
            break
        }
        questionbox.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox1.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox2.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox3.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox4.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    func answer1pressed(_ sender: AnyObject) {
        if (CorrectAnswer == "1"){
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "2"){
            answerbox1.backgroundColor = UIColor.red
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "3"){
            answerbox1.backgroundColor = UIColor.red
            answerbox3.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "4"){
            answerbox1.backgroundColor = UIColor.red
            answerbox4.backgroundColor = UIColor.green
        }
    }
    func answer2pressed(_ sender: AnyObject) {
        if (CorrectAnswer == "2"){
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "1"){
            answerbox2.backgroundColor = UIColor.red
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "3"){
            answerbox2.backgroundColor = UIColor.red
            answerbox3.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "4"){
            answerbox2.backgroundColor = UIColor.red
            answerbox4.backgroundColor = UIColor.green
        }
    }
    func answer3pressed(_ sender: AnyObject) {
        if (CorrectAnswer == "3"){
            answerbox3.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "1"){
            answerbox3.backgroundColor = UIColor.red
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "2"){
            answerbox3.backgroundColor = UIColor.red
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "4"){
            answerbox3.backgroundColor = UIColor.red
            answerbox4.backgroundColor = UIColor.green
        }
    }
    func answer4pressed(_ sender: AnyObject) {
        if (CorrectAnswer == "4"){
            answerbox4.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "1"){
            answerbox4.backgroundColor = UIColor.red
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "2"){
            answerbox4.backgroundColor = UIColor.red
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == "3"){
            answerbox4.backgroundColor = UIColor.red
            answerbox3.backgroundColor = UIColor.green
        }
    }
    
    func bannerViewWillLoadAd(_ banner: ADBannerView!) {
    }
    
    func bannerView(_ banner: ADBannerView!, didFailToReceiveAdWithError error: Error!) {
        NSLog("There was an error loading the ad!")
    }
    
    func bannerViewActionShouldBegin(_ banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerViewDidLoadAd(_ banner: ADBannerView!) {
        Banner.isHidden = false
    }
    
    

}
