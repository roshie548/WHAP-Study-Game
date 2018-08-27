//
//  SinglePlayerTwo.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 4/18/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//

import UIKit
import iAd

class SinglePlayerThree: UIViewController, ADBannerViewDelegate {
    
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
            questionbox.setTitle("Which of the following are NOT technilogical advancements that led to increased trade overseas?", for: UIControlState())
            answerbox1.setTitle("Caravans", for: UIControlState())
            answerbox2.setTitle("Compass", for: UIControlState())
            answerbox3.setTitle("Astrolabe", for: UIControlState())
            answerbox4.setTitle("Larger ship designs", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 2:
            questionbox.setTitle("Which of the following helped to culturally unite China?", for: UIControlState())
            answerbox1.setTitle("The Hanseatic League", for: UIControlState())
            answerbox2.setTitle("The Grand Canal", for: UIControlState())
            answerbox3.setTitle("Saharan Trade Network", for: UIControlState())
            answerbox4.setTitle("Indian Ocean Trade Network", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 3:
            questionbox.setTitle("Which of the following did NOT write about their international travels?", for: UIControlState())
            answerbox1.setTitle("Ibn Battuta", for: UIControlState())
            answerbox2.setTitle("Marco Polo", for: UIControlState())
            answerbox3.setTitle("Mansa Musa", for: UIControlState())
            answerbox4.setTitle("Xuanzang", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 4:
            questionbox.setTitle("Which of the following led to an expolsion of population growth in China?", for: UIControlState())
            answerbox1.setTitle("Potatoes", for: UIControlState())
            answerbox2.setTitle("Chinampas", for: UIControlState())
            answerbox3.setTitle("Waru Waru", for: UIControlState())
            answerbox4.setTitle("Champa Rice", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 5:
            questionbox.setTitle("What led to the spread of the Black Death?", for: UIControlState())
            answerbox1.setTitle("Increased trade among empires", for: UIControlState())
            answerbox2.setTitle("Bioterrorist attacks", for: UIControlState())
            answerbox3.setTitle("Peasant revolts", for: UIControlState())
            answerbox4.setTitle("Cow infestations", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 6:
            questionbox.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Marco Polo", for: UIControlState())
            answerbox2.setTitle("Xuanzang", for: UIControlState())
            answerbox3.setTitle("Ibn Battuta", for: UIControlState())
            answerbox4.setTitle("Genghis Khan", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Marco_Polo_portrait.jpg")
            imageView.image = image
            //"Marco Polo portrait" by [1], but also many other copies online.. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Marco_Polo_portrait.jpg#/media/File:Marco_Polo_portrait.jpg
            break
        case 7:
            questionbox.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Marco Polo", for: UIControlState())
            answerbox2.setTitle("Xuanzang", for: UIControlState())
            answerbox3.setTitle("Ibn Battuta", for: UIControlState())
            answerbox4.setTitle("Genghis Khan", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Xuanzang_w.jpg")
            imageView.image = image
            //"Xuanzang w". Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Xuanzang_w.jpg#/media/File:Xuanzang_w.jpg
            break
        case 8:
            questionbox.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Marco Polo", for: UIControlState())
            answerbox2.setTitle("Xuanzang", for: UIControlState())
            answerbox3.setTitle("Ibn Battuta", for: UIControlState())
            answerbox4.setTitle("Genghis Khan", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "ibnBattuta.png")
            imageView.image = image
            //Ibn Battuta. Digital image. Freeman-Pedia. Squarespace, n.d. Web. 20 June 2015. <http://www.freeman-pedia.com/early-modern-600-ce-to-1450-ce>.
            break
        case 9:
            questionbox.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Marco Polo", for: UIControlState())
            answerbox2.setTitle("Xuanzang", for: UIControlState())
            answerbox3.setTitle("Ibn Battuta", for: UIControlState())
            answerbox4.setTitle("Genghis Khan", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "YuanEmperorAlbumGenghisPortrait.jpg")
            imageView.image = image
            //"YuanEmperorAlbumGenghisPortrait" by unknown / (of the reproduction) National Palace Museum in Taipei - Dschingis Khan und seine Erben (exhibition catalogue), München 2005, p. 304. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:YuanEmperorAlbumGenghisPortrait.jpg#/media/File:YuanEmperorAlbumGenghisPortrait.jpg
            break
        case 10:
            questionbox.setTitle("What empire is this? (Picture shows its greatest extent)", for: UIControlState())
            answerbox1.setTitle("Roman Empire", for: UIControlState())
            answerbox2.setTitle("Mongol Empire", for: UIControlState())
            answerbox3.setTitle("Tang China", for: UIControlState())
            answerbox4.setTitle("Abbasid Dynasty", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Mongol_Empire_map.png")
            imageView.image = image
            //"Mongol Empire map" by User:Astrokey44 - Based on the freely licenced Image:Genghis khan empire at his death.png using information from maps of the Mongol Empire in atlases and on the web such as [1], [2], [3], [4], [5]. Made in Photoshop and Painter.. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Mongol_Empire_map.gif#/media/File:Mongol_Empire_map.gif
            break
        case 11:
            questionbox.setTitle("What empire is this?", for: UIControlState())
            answerbox1.setTitle("Aztec Empire", for: UIControlState())
            answerbox2.setTitle("Inca Empire", for: UIControlState())
            answerbox3.setTitle("Olmec", for: UIControlState())
            answerbox4.setTitle("Maya", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "aztecempire.png")
            imageView.image = image
            //"Aztec Empire 1519 map-fr" by Provincias_tributarias_de_la_Triple_Alianza_(s._XVI).svg: YavidaxiuAztec_Empire_(orthographic_projection).svg:File:Provincias tributarias de la Triple Alianza (s. XVI).svg : YavidaxiuFile:Mexico (orthographic projection).svg : SsolbergjDerivative work : Keepscases and Sémhur - Provincias_tributarias_de_la_Triple_Alianza_(s._XVI).svg, from the Atlas del México prehispánico, special edition of Arqueología Mexicana, 2000-07-05, México.Aztec_Empire_(orthographic_projection).svg. Licensed under CC BY-SA 3.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Aztec_Empire_1519_map-fr.svg#/media/File:Aztec_Empire_1519_map-fr.svg
            break
        case 12:
            questionbox.setTitle("What empire is this?", for: UIControlState())
            answerbox1.setTitle("Aztec Empire", for: UIControlState())
            answerbox2.setTitle("Inca Empire", for: UIControlState())
            answerbox3.setTitle("Olmec", for: UIControlState())
            answerbox4.setTitle("Maya", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Inca_Empire_South_America.png")
            imageView.image = image
            //"Inca Empire South America" by EuroHistoryTeacher (talk), cropped to South America only by Kintetsubuffalo (talk) 15:36, 18 July 2010 (UTC) - I, the copyright holder of this work, hereby publish it under the following licenses:This file is licensed under the Creative Commons Attribution-Share Alike 3.0 Unported license.You are free:to share – to copy, distribute and transmit the workto remix – to adapt the workUnder the following conditions:attribution – You must attribute the work in the manner specified by the author or licensor (but not in any way that suggests that they endorse you or your use of the work).share alike – If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.Permission is granted to copy, distribute and/or modify this document under the terms of the GNU Free Documentation License, Version 1.2 or any later version published by the Free Software Foundation; with no Invariant Sections, no Front-Cover Texts, and no Back-Cover Texts. A copy of the license is included in the section entitled GNU Free Documentation License.You may select the license of your choice.. Licensed under CC BY-SA 3.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Inca_Empire_South_America.png#/media/File:Inca_Empire_South_America.png
            break
        case 13:
            questionbox.setTitle("Who is the 'Prophet of Islam'?", for: UIControlState())
            answerbox1.setTitle("Jesus of Nazareth", for: UIControlState())
            answerbox2.setTitle("Emperor Constantine", for: UIControlState())
            answerbox3.setTitle("Muhammad", for: UIControlState())
            answerbox4.setTitle("Allah", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 14:
            questionbox.setTitle("Which of the following luxury goods was not a new, emerging commodity in this time period?", for: UIControlState())
            answerbox1.setTitle("Astrolabe", for: UIControlState())
            answerbox2.setTitle("Gunpowder", for: UIControlState())
            answerbox3.setTitle("Paper", for: UIControlState())
            answerbox4.setTitle("Silk", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 15:
            questionbox.setTitle("Novgorod is the eastern most city in this trade network, known as the...", for: UIControlState())
            answerbox1.setTitle("Hanseatic League", for: UIControlState())
            answerbox2.setTitle("Viking League", for: UIControlState())
            answerbox3.setTitle("Baltic Trade Network", for: UIControlState())
            answerbox4.setTitle("Northern Trade Network", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Ausbreitung_der_Hanse_um_das_Jahr_1400-Droysens_28.jpg")
            imageView.image = image
            //"Ausbreitung der Hanse um das Jahr 1400-Droysens 28" by Droysen/Andrée - Plate 28 of Professor G. Droysens Allgemeiner Historischer Handatlas, published by R. Andrée, 1886. Licensed under CC BY-SA 3.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Ausbreitung_der_Hanse_um_das_Jahr_1400-Droysens_28.jpg#/media/File:Ausbreitung_der_Hanse_um_das_Jahr_1400-Droysens_28.jpg
            break
        case 16:
            questionbox.setTitle("This image depicts a marketplace in what city?", for: UIControlState())
            answerbox1.setTitle("Cahokia", for: UIControlState())
            answerbox2.setTitle("Tenochtitlan", for: UIControlState())
            answerbox3.setTitle("Melacca", for: UIControlState())
            answerbox4.setTitle("Calicut", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Tlatelolco_Marketplace.jpeg")
            imageView.image = image
            //"Tlatelolco Marketplace" by Joe Ravi. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Tlatelolco_Marketplace.JPG#/media/File:Tlatelolco_Marketplace.JPG
            break
        case 17:
            questionbox.setTitle("Which of the following was not considered a luxury good between 600 to 1450 CE?", for: UIControlState())
            answerbox1.setTitle("Spices", for: UIControlState())
            answerbox2.setTitle("Silk", for: UIControlState())
            answerbox3.setTitle("Domesticated animals", for: UIControlState())
            answerbox4.setTitle("Cotton Textiles", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 18:
            questionbox.setTitle("What was primary the effect on Eurasia of Tang expansion into central Asia?", for: UIControlState())
            answerbox1.setTitle("Confucianism spread to Vietnam", for: UIControlState())
            answerbox2.setTitle("China and India engaged in war", for: UIControlState())
            answerbox3.setTitle("Chinese people relocated and took more control", for: UIControlState())
            answerbox4.setTitle("The Silk Roads were reopened and protected", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 19:
            questionbox.setTitle("Which area was completely outside of the Pax Mongolica?", for: UIControlState())
            answerbox1.setTitle("Japan", for: UIControlState())
            answerbox2.setTitle("China", for: UIControlState())
            answerbox3.setTitle("India", for: UIControlState())
            answerbox4.setTitle("Russia", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 20:
            questionbox.setTitle("What was the nature of the government in this area?", for: UIControlState())
            answerbox1.setTitle("It was a Nation State", for: UIControlState())
            answerbox2.setTitle("It was a Caliphate", for: UIControlState())
            answerbox3.setTitle("It was a Khanate", for: UIControlState())
            answerbox4.setTitle("It was a Confederation", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Mohammad_adil-Rashidun-empire-at-its-peak-close.png")
            imageView.image = image
            //"Mohammad adil-Rashidun-empire-at-its-peak-close" by Mohammad adil at English Wikipedia - Transferred from en.wikipedia to Commons.. Licensed under CC BY-SA 3.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Mohammad_adil-Rashidun-empire-at-its-peak-close.PNG#/media/File:Mohammad_adil-Rashidun-empire-at-its-peak-close.PNG
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
    
    @IBAction func answer1pressed(_ sender: AnyObject) {
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
    @IBAction func answer2pressed(_ sender: AnyObject) {
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
    @IBAction func answer3pressed(_ sender: AnyObject) {
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
    @IBAction func answer4pressed(_ sender: AnyObject) {
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
