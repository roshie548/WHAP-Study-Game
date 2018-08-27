//
//  SinglePlayerOne.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 2/9/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//
import UIKit
import iAd

class SinglePlayerOne: UIViewController, ADBannerViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        question(questionbox)
        RandomQuestions()
        
        
        Banner.isHidden = true
        Banner.delegate = self
        self.canDisplayBannerAds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func next(_ sender: AnyObject) {
    }
    @IBOutlet weak var questionbox: UIButton!
    @IBOutlet weak var answerbox1: UIButton!
    @IBOutlet weak var answerbox2: UIButton!
    @IBOutlet weak var answerbox3: UIButton!
    @IBOutlet weak var answerbox4: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var Banner: ADBannerView!
    
    var CorrectAnswer = String()
    
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
    
    func getDataFromUrl(_ url:URL, completion: @escaping ((_ data: Data?, _ response: URLResponse?, _ error: NSError? ) -> Void)) {
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            completion(data, response, error as! NSError)
            }) .resume()
    }
    
    func downloadImage(_ url: URL){
        print("Download Started")
        print("lastPathComponent: " + (url.lastPathComponent ?? ""))
        getDataFromUrl(url) { (data, response, error)  in
            DispatchQueue.main.async { () -> Void in
                guard let data = data, error == nil else { return }
                print(response?.suggestedFilename ?? "")
                print("Download Finished")
                self.imageView.image = UIImage(data: data)
            }
        }
    }

    
    func RandomQuestions(){
        
        var RandomNumber = arc4random() % 20
        RandomNumber += 1
        
        let image = UIImage(named: "blank.png")
        imageView.image = image
        
        switch(RandomNumber){
            
        case 1:
            questionbox.setTitle("What was human's most important tool?", for: UIControlState())
            answerbox1.setTitle("Food", for: UIControlState())
            answerbox2.setTitle("Arrowheads", for: UIControlState())
            answerbox3.setTitle("Fire", for: UIControlState())
            answerbox4.setTitle("Iron", for: UIControlState())
            CorrectAnswer = "3"
            if let checkedUrl = URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/8a/Caveman_5.jpg") {
                imageView.contentMode = .scaleAspectFit
                downloadImage(checkedUrl)
            }
            //var image = UIImage(named: "Caveman_5.jpg")
            //imageView.image = image;
            //"Caveman 5" by Margaret A. McIntyre - "The cave boy of the age of stone"[1]. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Caveman_5.jpg#mediaviewer/File:Caveman_5.jpg
            break
        case 2:
            questionbox.setTitle("  Who is this?", for: UIControlState())
            answerbox1.setTitle("Hammurabi", for: UIControlState())
            answerbox2.setTitle("Gilgamesh", for: UIControlState())
            answerbox3.setTitle("King Ramses", for: UIControlState())
            answerbox4.setTitle("Aristotle", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "hammurabi.jpg")
            imageView.image = image;
            //Martin, Phillip Martin. Hammurabi_photo. Digital image. Phillip Martin Clip Art. Phillip Martin, n.d. Web. <http://www.phillipmartin.info/hammurabi/hammurabi_photo.jpg>.
            break
        case 3:
            questionbox.setTitle("Which civilization created these giant heads?", for: UIControlState())
            answerbox1.setTitle("The Aztec", for: UIControlState())
            answerbox2.setTitle("The Mayans", for: UIControlState())
            answerbox3.setTitle("The Olmec", for: UIControlState())
            answerbox4.setTitle("The Inca", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "olmechead.jpg")
            imageView.image = image;
            //http://media-1.web.britannica.com/eb-media/92/102292-004-883B7FB0.jpg
            break
        case 4:
            questionbox.setTitle("Where were oracle bones like these used?", for: UIControlState())
            answerbox1.setTitle("Mesopotamia", for: UIControlState())
            answerbox2.setTitle("Shang China", for: UIControlState())
            answerbox3.setTitle("Kush", for: UIControlState())
            answerbox4.setTitle("Egypt", for: UIControlState())
            let image = UIImage(named: "oraclebones.jpg")
            CorrectAnswer = "2"
            imageView.image = image;
            //"Shang dynasty inscribed scapula" by BabelStone - Own work. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Shang_dynasty_inscribed_scapula.jpg#mediaviewer/File:Shang_dynasty_inscribed_scapula.jpg
            break
        case 5:
            questionbox.setTitle("What did the Hittites have that allowed them to conquer lands?", for: UIControlState())
            answerbox1.setTitle("Gods", for: UIControlState())
            answerbox2.setTitle("Alliances", for: UIControlState())
            answerbox3.setTitle("Superior brains", for: UIControlState())
            answerbox4.setTitle("Iron and Chariots", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "hittites.jpg")
            imageView.image = image;
            //"Hittite Chariot" by from Paul Volz: Die biblischen Altertümer (1914), p. 514. copied from de:Hethitischer Streitwagen.jpg.. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Hittite_Chariot.jpg#/media/File:Hittite_Chariot.jpg
            break
        case 6:
            questionbox.setTitle("What was the first monotheistic religion?", for: UIControlState())
            answerbox1.setTitle("Judaism", for: UIControlState())
            answerbox2.setTitle("Hinduism", for: UIControlState())
            answerbox3.setTitle("Zoroastrianism", for: UIControlState())
            answerbox4.setTitle("Egyptian", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "judaism.jpg")
            imageView.image = image;
            //"YemeniJew1914". Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:YemeniJew1914.jpg#/media/File:YemeniJew1914.jpg
            break
        case 7:
            questionbox.setTitle("Other than Judaism, what was the other major religion?", for: UIControlState())
            answerbox1.setTitle("Buddhism", for: UIControlState())
            answerbox2.setTitle("Hinduism", for: UIControlState())
            answerbox3.setTitle("Zoroastrianism", for: UIControlState())
            answerbox4.setTitle("Jainism", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Shiva_Bangalore.jpg")
            imageView.image = image;
            //"Shiva Bangalore" by Kalyan Kumar - originally posted to Flickr as ShivMandir , Kemp Fort. Licensed under CC BY-SA 2.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Shiva_Bangalore.jpg#/media/File:Shiva_Bangalore.jpg
            break
        case 8:
            questionbox.setTitle("What was the main religion of hunter-gatherers?", for: UIControlState())
            answerbox1.setTitle("Animism", for: UIControlState())
            answerbox2.setTitle("Confucianism", for: UIControlState())
            answerbox3.setTitle("Judaism", for: UIControlState())
            answerbox4.setTitle("Agrarianism", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Jarai_tomb_(guardian_spirit_sculpture).jpg")
            imageView.image = image;
            //"Jarai tomb (guardian spirit sculpture)" by Rdavout - Own work. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Jarai_tomb_(guardian_spirit_sculpture).jpg#/media/File:Jarai_tomb_(guardian_spirit_sculpture).jpg
            break
        case 9:
            questionbox.setTitle("What did the locations of where all early civilizations settled have in common?", for: UIControlState())
            answerbox1.setTitle("They had steady water supplies", for: UIControlState())
            answerbox2.setTitle("They had good, fertile soil", for: UIControlState())
            answerbox3.setTitle("They were in South America", for: UIControlState())
            answerbox4.setTitle("Both A and B", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "KageraRuvubu.jpg")
            imageView.image = image;
            //"KageraRuvubu" by SteveRwanda aka Amakuru - Own work. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:KageraRuvubu.jpg#/media/File:KageraRuvubu.jpg
            break
        case 10:
            questionbox.setTitle("What material were the most advanced tools made of in the Paleolithic Era?", for: UIControlState())
            answerbox1.setTitle("Iron", for: UIControlState())
            answerbox2.setTitle("Bronze", for: UIControlState())
            answerbox3.setTitle("Stone", for: UIControlState())
            answerbox4.setTitle("Wood", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Bifaz_de_Atapuerca_(TG10).jpg")
            imageView.image = image
            //"Bifaz de Atapuerca (TG10)" by José-Manuel Benito Álvarez (España) —> Locutus Borg - Own work. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Bifaz_de_Atapuerca_(TG10).jpg#/media/File:Bifaz_de_Atapuerca_(TG10).jpg
            break
        case 11:
            questionbox.setTitle("What is an important aspect to Paleolithic peoples represented in this statue.", for: UIControlState())
            answerbox1.setTitle("Fertility", for: UIControlState())
            answerbox2.setTitle("Strength", for: UIControlState())
            answerbox3.setTitle("Charisma", for: UIControlState())
            answerbox4.setTitle("Intellect", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Wien_NHM_Venus_von_Willendorf.jpg")
            imageView.image = image
            //"Wien NHM Venus von Willendorf" by Oke - Own work. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Wien_NHM_Venus_von_Willendorf.jpg#/media/File:Wien_NHM_Venus_von_Willendorf.jpg
            break
        case 12:
            questionbox.setTitle("What initially allowed hunting-foraging bands to settle down and abandon their nomadic ways?", for: UIControlState())
            answerbox1.setTitle("Trade", for: UIControlState())
            answerbox2.setTitle("Agriculture", for: UIControlState())
            answerbox3.setTitle("Alliances", for: UIControlState())
            answerbox4.setTitle("War", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Maler_der_Grabkammer_des_Sennudem_001.jpg")
            imageView.image = image
            //"Maler der Grabkammer des Sennudem 001" by Painter of the burial chamber of Sennedjem - The Yorck Project: 10.000 Meisterwerke der Malerei. DVD-ROM, 2002. ISBN 3936122202. Distributed by DIRECTMEDIA Publishing GmbH.. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Maler_der_Grabkammer_des_Sennudem_001.jpg#/media/File:Maler_der_Grabkammer_des_Sennudem_001.jpg
            break
        case 13:
            questionbox.setTitle("Which of the following did NOT lead to an increase of the efficiency of agricultural production?", for: UIControlState())
            answerbox1.setTitle("Domestication of animals", for: UIControlState())
            answerbox2.setTitle("Slash and burn techniques", for: UIControlState())
            answerbox3.setTitle("Increased transfer of diseases", for: UIControlState())
            answerbox4.setTitle("Trade of goods and technology", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Trilla_del_trigo_en_el_Antiguo_Egipto1.jpg")
            imageView.image = image
            //"Trilla del trigo en el Antiguo Egipto" by Carlos E. Solivérez - fotografía propia. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Trilla_del_trigo_en_el_Antiguo_Egipto.jpg#/media/File:Trilla_del_trigo_en_el_Antiguo_Egipto.jpg
            break
        case 14:
            questionbox.setTitle("Which of the following was NOT an effect of the Neolithic Revolution", for: UIControlState())
            answerbox1.setTitle("Increased population", for: UIControlState())
            answerbox2.setTitle("Development of social structures", for: UIControlState())
            answerbox3.setTitle("Development of specialized labor", for: UIControlState())
            answerbox4.setTitle("The development of animism", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "Egyptian_Domesticated_Animals.jpg")
            imageView.image = image
            //"Egyptian Domesticated Animals" by Unknown - Scanned from 1000 Fragen an die Natur, via The Metropolitan Museum of Art, Rogers Fund, 1948.. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Egyptian_Domesticated_Animals.jpg#/media/File:Egyptian_Domesticated_Animals.jpg
            break
        case 15:
            questionbox.setTitle("What was the purpose of these structures?", for: UIControlState())
            answerbox1.setTitle("Religious rituals", for: UIControlState())
            answerbox2.setTitle("To serve as a palace of the ruler", for: UIControlState())
            answerbox3.setTitle("Housing", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Ancient_ziggurat_at_Ali_Air_Base_Iraq_2005.jpg")
            imageView.image = image
            //"Ancient ziggurat at Ali Air Base Iraq 2005" by Hardnfast. Licensed under CC BY 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Ancient_ziggurat_at_Ali_Air_Base_Iraq_2005.jpg#/media/File:Ancient_ziggurat_at_Ali_Air_Base_Iraq_2005.jpg
            break
        case 16:
            questionbox.setTitle("What was the purpose of these structures?", for: UIControlState())
            answerbox1.setTitle("Religious rituals", for: UIControlState())
            answerbox2.setTitle("To decorate the palaces of rulers", for: UIControlState())
            answerbox3.setTitle("To decorate common housing structures", for: UIControlState())
            answerbox4.setTitle("None of the above", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "tumblr_m8izjjCsAb1qa944oo1_1280.jpg")
            imageView.image = image
            break
        case 17:
            questionbox.setTitle("What was the first system of writing?", for: UIControlState())
            answerbox1.setTitle("Hieroglyphics", for: UIControlState())
            answerbox2.setTitle("Phoenician alphabet", for: UIControlState())
            answerbox3.setTitle("Cuneiform", for: UIControlState())
            answerbox4.setTitle("Greek alphabet", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Letter_Luenna_Louvre_AO4238.jpg")
            imageView.image = image
            //"Letter Luenna Louvre AO4238" by Unknown - Jastrow (2005). Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Letter_Luenna_Louvre_AO4238.jpg#/media/File:Letter_Luenna_Louvre_AO4238.jpg
            break
        case 18:
            questionbox.setTitle("What were the roots of the English alphabet?", for: UIControlState())
            answerbox1.setTitle("Hieroglyphics", for: UIControlState())
            answerbox2.setTitle("Greek alphabet", for: UIControlState())
            answerbox3.setTitle("Cuneiform", for: UIControlState())
            answerbox4.setTitle("Phoenician alphabet", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "Phoenician_alphabet.png")
            imageView.image = image
            //"Phoenician alphabet" by Luca - Own work. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Phoenician_alphabet.svg#/media/File:Phoenician_alphabet.svg
            break
        case 19:
            questionbox.setTitle("What is this?", for: UIControlState())
            answerbox1.setTitle("Hammurabi's Code", for: UIControlState())
            answerbox2.setTitle("Rosetta Stone", for: UIControlState())
            answerbox3.setTitle("Egyptian Heiroglyphs", for: UIControlState())
            answerbox4.setTitle("Mesopotamian Decoration", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Milkau_Oberer_Teil_der_Stele_mit_dem_Text_von_Hammurapis_Gesetzescode_369-2.png")
            imageView.image = image
            //"Milkau Oberer Teil der Stele mit dem Text von Hammurapis Gesetzescode 369-2" by Milkau_Oberer_Teil_der_Stele_mit_dem_Text_von_Hammurapis_Gesetzescode_369-2.jpg: Luestlingderivative work: Fred the Oyster (talk) - Milkau_Oberer_Teil_der_Stele_mit_dem_Text_von_Hammurapis_Gesetzescode_369-2.jpg. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Milkau_Oberer_Teil_der_Stele_mit_dem_Text_von_Hammurapis_Gesetzescode_369-2.png#/media/File:Milkau_Oberer_Teil_der_Stele_mit_dem_Text_von_Hammurapis_Gesetzescode_369-2.png
            break
        case 20:
            questionbox.setTitle("Which of the following is not a factor that led to the formation of early empires?", for: UIControlState())
            answerbox1.setTitle("Common language", for: UIControlState())
            answerbox2.setTitle("Former interactions in battle", for: UIControlState())
            answerbox3.setTitle("Common religion", for: UIControlState())
            answerbox4.setTitle("Close proximity of cities", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Egypt_NK_edit.png")
            imageView.image = image
            //"Egypt NK edit" by Original by [[en:User:Andrei Nacu]], edits by Jeff Dahl - Modified from en:Image:Egypt_1450_BC.svg by [[en:User:Andrei Nacu]], modified by uploader. Licensed under CC BY-SA 3.0 via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Egypt_NK_edit.svg#/media/File:Egypt_NK_edit.svg
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
