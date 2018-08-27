//
//  SinglePlayerTwo.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 4/18/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//

import UIKit
import iAd

class SinglePlayerTwo: UIViewController, ADBannerViewDelegate {

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
    
    @IBOutlet weak var questionboxtwo: UIButton!
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
            questionboxtwo.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Cyrus of Persia", for: UIControlState())
            answerbox2.setTitle("Constantine", for: UIControlState())
            answerbox3.setTitle("Alexander", for: UIControlState())
            answerbox4.setTitle("Jesus of Nazareth", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Constantine.jpg")
            imageView.image = image;
            //"Rome-Capitole-StatueConstantin" by I, Jean-Christophe BENOIST. Licensed under CC BY 2.5 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Rome-Capitole-StatueConstantin.jpg#/media/File:Rome-Capitole-StatueConstantin.jpg
            break
        case 2:
            questionboxtwo.setTitle("What is this building?", for: UIControlState())
            answerbox1.setTitle("A Mosque", for: UIControlState())
            answerbox2.setTitle("A Parthenon", for: UIControlState())
            answerbox3.setTitle("A Monastery", for: UIControlState())
            answerbox4.setTitle("A Stupa", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "Sanchi_Stupa_from_Eastern_gate,_Madhya_Pradesh.jpg")
            imageView.image = image
            //"Sanchi Stupa from Eastern gate, Madhya Pradesh" by http://www.flickr.com/photos/chromatic_aberration/ - http://www.flickr.com/photos/chromatic_aberration/3311834772/. Licensed under CC BY-SA 2.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Sanchi_Stupa_from_Eastern_gate,_Madhya_Pradesh.jpg#/media/File:Sanchi_Stupa_from_Eastern_gate,_Madhya_Pradesh.jpg
            break
        case 3:
            questionboxtwo.setTitle("This is sculpture of Greco-Roman culture and Buddhism is an example of what?", for: UIControlState())
            answerbox1.setTitle("Syncretism", for: UIControlState())
            answerbox2.setTitle("Hybridism", for: UIControlState())
            answerbox3.setTitle("Mixtureism", for: UIControlState())
            answerbox4.setTitle("Diffusion", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Gandhara_Buddha_(tnm).jpeg")
            imageView.image = image
            //"Gandhara Buddha (tnm)". Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Gandhara_Buddha_(tnm).jpeg#/media/File:Gandhara_Buddha_(tnm).jpeg
            break
        case 4:
            questionboxtwo.setTitle("Which religion/philosophy was created by this person?", for: UIControlState())
            answerbox1.setTitle("Legalism", for: UIControlState())
            answerbox2.setTitle("Daoism:", for: UIControlState())
            answerbox3.setTitle("Confucianism", for: UIControlState())
            answerbox4.setTitle("Buddhism", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Confucius_Tang_Dynasty.jpg")
            imageView.image = image
            //"Confucius Tang Dynasty". Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Confucius_Tang_Dynasty.jpg#/media/File:Confucius_Tang_Dynasty.jpg
            break
        case 5:
            questionboxtwo.setTitle("Where did these structures originate?", for: UIControlState())
            answerbox1.setTitle("Rome", for: UIControlState())
            answerbox2.setTitle("Greece", for: UIControlState())
            answerbox3.setTitle("China", for: UIControlState())
            answerbox4.setTitle("India", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Pont_du_Gard_Oct_2007.jpg")
            imageView.image = image
            //"Pont du Gard Oct 2007" by Emanuele - Flickr: Pont du Gard. Licensed under CC BY-SA 2.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Pont_du_Gard_Oct_2007.jpg#/media/File:Pont_du_Gard_Oct_2007.jpg
            break
        case 6:
            questionboxtwo.setTitle("Who founded Buddhism?", for: UIControlState())
            answerbox1.setTitle("Buddha", for: UIControlState())
            answerbox2.setTitle("Laozi", for: UIControlState())
            answerbox3.setTitle("Siddhartha Gautama", for: UIControlState())
            answerbox4.setTitle("Confucious", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Buddha_in_Sarnath_Museum_(Dhammajak_Mutra).jpg")
            imageView.image = image
            //"Buddha in Sarnath Museum (Dhammajak Mutra)" by พระมหาเทวประภาส วชิรญาณเมธี (ผู้ถ่าย-ปล่อยสัญญาอนุญาตภาพให้นำไปใช้ได้เพื่อการศึกษาโดยอยู่ภา่ยใต้ cc-by-sa-3.0)ผู้สร้างสรรค์ผลงาน/ส่งข้อมูลเก็บในคลังข้อมูลเสรีวิกิมีเดียคอมมอนส์ - เทวประภาส มากคล้าย - Tevaprapas Makklay (พระมหาเทวประภาส วชิรญาณเมธี). Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Buddha_in_Sarnath_Museum_(Dhammajak_Mutra).jpg#/media/File:Buddha_in_Sarnath_Museum_(Dhammajak_Mutra).jpg
            break
        case 7:
            questionboxtwo.setTitle("What religion was Buddhism a 'reform' of?", for: UIControlState())
            answerbox1.setTitle("Animism", for: UIControlState())
            answerbox2.setTitle("Hinduism", for: UIControlState())
            answerbox3.setTitle("Zoroastrianism", for: UIControlState())
            answerbox4.setTitle("Judaism", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Buddha_in_Sarnath_Museum_(Dhammajak_Mutra).jpg")
            imageView.image = image
            //"Buddha in Sarnath Museum (Dhammajak Mutra)" by พระมหาเทวประภาส วชิรญาณเมธี (ผู้ถ่าย-ปล่อยสัญญาอนุญาตภาพให้นำไปใช้ได้เพื่อการศึกษาโดยอยู่ภา่ยใต้ cc-by-sa-3.0)ผู้สร้างสรรค์ผลงาน/ส่งข้อมูลเก็บในคลังข้อมูลเสรีวิกิมีเดียคอมมอนส์ - เทวประภาส มากคล้าย - Tevaprapas Makklay (พระมหาเทวประภาส วชิรญาณเมธี). Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Buddha_in_Sarnath_Museum_(Dhammajak_Mutra).jpg#/media/File:Buddha_in_Sarnath_Museum_(Dhammajak_Mutra).jpg
            break
        case 8:
            questionboxtwo.setTitle("What religion was Christianity a 'reform' of?", for: UIControlState())
            answerbox1.setTitle("Animism", for: UIControlState())
            answerbox2.setTitle("Hinduism", for: UIControlState())
            answerbox3.setTitle("Zoroastrianism", for: UIControlState())
            answerbox4.setTitle("Judaism", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "StJohnsAshfield_StainedGlass_GoodShepherd_Portrait.jpg")
            imageView.image = image
            //"StJohnsAshfield StainedGlass GoodShepherd Portrait" by Stained glass: Alfred Handel, d. 1946[2], photo:Toby Hudson - Own work. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:StJohnsAshfield_StainedGlass_GoodShepherd_Portrait.jpg#/media/File:StJohnsAshfield_StainedGlass_GoodShepherd_Portrait.jpg
        case 9:
            questionboxtwo.setTitle("What was the justification for the rule of Chinese emperors?", for: UIControlState())
            answerbox1.setTitle("The Mandate of Heaven", for: UIControlState())
            answerbox2.setTitle("Consent of the population", for: UIControlState())
            answerbox3.setTitle("Magical powers", for: UIControlState())
            answerbox4.setTitle("Veneration of ancestors", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Qinshihuang.jpg")
            imageView.image = image
            //"Qinshihuang" by Unknown (18??–18??) - Yuan, Zhongyi. China's terracotta army and the First Emperor's mausoleum: the art and culture of Qin Shihuang's underground palace. Paramus, New Jersey: Homa & Sekey Books, 2010. ISBN 978-1-931907-68-2 (p.140). Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Qinshihuang.jpg#/media/File:Qinshihuang.jpg            
            break
        case 10:
            questionboxtwo.setTitle("What religion is represented by this social structure?", for: UIControlState())
            answerbox1.setTitle("Judaism", for: UIControlState())
            answerbox2.setTitle("Hinduism", for: UIControlState())
            answerbox3.setTitle("Zoroastrianism", for: UIControlState())
            answerbox4.setTitle("Legalism", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "caste-system.jpg")
            imageView.image = image
            break
        case 11:
            questionboxtwo.setTitle("Which of the following is NOT a part of the Four Noble Truths?", for: UIControlState())
            answerbox1.setTitle("In life, there is suffering", for: UIControlState())
            answerbox2.setTitle("Suffering comes from selfish desires", for: UIControlState())
            answerbox3.setTitle("Karma helps end suffering", for: UIControlState())
            answerbox4.setTitle("The Eight-Fold Path ends suffering", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Astasahasrika_Prajnaparamita_Dharmacakra_Discourse.jpeg")
            imageView.image = image
            //"Astasahasrika Prajnaparamita Dharmacakra Discourse" by Asia Society created the file. Artwork created by an anonymous ancient source. - http://asiasocietymuseum.org/region_object.asp?RegionID=1&CountryID=2&ChapterID=10&ObjectID=479. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Astasahasrika_Prajnaparamita_Dharmacakra_Discourse.jpeg#/media/File:Astasahasrika_Prajnaparamita_Dharmacakra_Discourse.jpeg
            break
        case 12:
            questionboxtwo.setTitle("Why did Buddhism appeal greatly in China and India?", for: UIControlState())
            answerbox1.setTitle("It was popular at the time elsewhere", for: UIControlState())
            answerbox2.setTitle("It was supposed to end suffering", for: UIControlState())
            answerbox3.setTitle("It taught the spiritual equality of all", for: UIControlState())
            answerbox4.setTitle("Both B and C", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "Astasahasrika_Prajnaparamita_Dharmacakra_Discourse.jpeg")
            imageView.image = image
            //"Astasahasrika Prajnaparamita Dharmacakra Discourse" by Asia Society created the file. Artwork created by an anonymous ancient source. - http://asiasocietymuseum.org/region_object.asp?RegionID=1&CountryID=2&ChapterID=10&ObjectID=479. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Astasahasrika_Prajnaparamita_Dharmacakra_Discourse.jpeg#/media/File:Astasahasrika_Prajnaparamita_Dharmacakra_Discourse.jpeg
            break
        case 13:
            questionboxtwo.setTitle("Who officially accepted Christianity as a religion in the Roman empire?", for: UIControlState())
            answerbox1.setTitle("Emperor Constantine", for: UIControlState())
            answerbox2.setTitle("Julius Caesar", for: UIControlState())
            answerbox3.setTitle("Octavius", for: UIControlState())
            answerbox4.setTitle("Jesus of Nazareth", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Rome-Capitole-StatueConstantin.jpg")
            imageView.image = image
            //"Rome-Capitole-StatueConstantin" by I, Jean-Christophe BENOIST. Licensed under CC BY 2.5 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Rome-Capitole-StatueConstantin.jpg#/media/File:Rome-Capitole-StatueConstantin.jpg
            break
        case 14:
            questionboxtwo.setTitle("What did Confucianism emphasize?", for: UIControlState())
            answerbox1.setTitle("Relations with nature", for: UIControlState())
            answerbox2.setTitle("Family relations", for: UIControlState())
            answerbox3.setTitle("Strict laws and punishments", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "2"
            // TODO: Image
            break
        case 15:
            questionboxtwo.setTitle("What did Daoism emphasize?", for: UIControlState())
            answerbox1.setTitle("Strict laws and punishments", for: UIControlState())
            answerbox2.setTitle("Family relations", for: UIControlState())
            answerbox3.setTitle("Relations with Nautre", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "3"
            // TODO: Image
            break
        case 16:
            questionboxtwo.setTitle("What did Legalism emphasize?", for: UIControlState())
            answerbox1.setTitle("Relations with nature", for: UIControlState())
            answerbox2.setTitle("Family relations", for: UIControlState())
            answerbox3.setTitle("Strict laws and punishments", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "3"
            // TODO: Image
            break
        case 17:
            questionboxtwo.setTitle("What philosophy/religion is represented in this picture?", for: UIControlState())
            answerbox1.setTitle("Daoism", for: UIControlState())
            answerbox2.setTitle("Confucianism", for: UIControlState())
            answerbox3.setTitle("Legalism", for: UIControlState())
            answerbox4.setTitle("Buddhism", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Birth_of_Laozi.png")
            imageView.image = image
            //"Birth of Laozi" by Nyo - Gray Goat Temple, Chengdu, Sichuan, China. Photo: own work.. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Birth_of_Laozi.PNG#/media/File:Birth_of_Laozi.PNG
            break
        case 18:
            questionboxtwo.setTitle("How did Persian emperors watch over their enormous empire?", for: UIControlState())
            answerbox1.setTitle("Through spies", for: UIControlState())
            answerbox2.setTitle("Through satraps", for: UIControlState())
            answerbox3.setTitle("Through military power", for: UIControlState())
            answerbox4.setTitle("Through a system of rewards", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 19:
            questionboxtwo.setTitle("What ultimately led to the decline of the Achaemenid Empire?", for: UIControlState())
            answerbox1.setTitle("Rebellions", for: UIControlState())
            answerbox2.setTitle("Economic disruptions", for: UIControlState())
            answerbox3.setTitle("Overextention of territory", for: UIControlState())
            answerbox4.setTitle("All of the above", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 20:
            questionboxtwo.setTitle("What Chinese political philosophy was used in the Qin Dynasty?", for: UIControlState())
            answerbox1.setTitle("Buddhism", for: UIControlState())
            answerbox2.setTitle("Confucianism", for: UIControlState())
            answerbox3.setTitle("Daoism", for: UIControlState())
            answerbox4.setTitle("Legalism", for: UIControlState())
            CorrectAnswer = "4"
            break
        default:
            break
        }
        questionboxtwo.titleLabel?.adjustsFontSizeToFitWidth = true
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
