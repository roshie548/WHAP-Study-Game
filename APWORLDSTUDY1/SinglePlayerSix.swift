//
//  SinglePlayerSix.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 5/10/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//

import UIKit
import iAd

class SinglePlayerSix: UIViewController, ADBannerViewDelegate {

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
            questionbox.setTitle("Who was the first man in space?", for: UIControlState())
            answerbox1.setTitle("Yuri Gagarin", for: UIControlState())
            answerbox2.setTitle("Buzz Aldrin", for: UIControlState())
            answerbox3.setTitle("Alan Shepard", for: UIControlState())
            answerbox4.setTitle("Neil Armstrong", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Gagarin_in_Sweden.jpg")
            imageView.image = image
            //"Gagarin in Sweden" by Arkiv: Sydsvenskan - sydsvenskan.se. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Gagarin_in_Sweden.jpg#/media/File:Gagarin_in_Sweden.jpg
            break
        case 2:
            questionbox.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Jinnah", for: UIControlState())
            answerbox2.setTitle("Joseph Stalin", for: UIControlState())
            answerbox3.setTitle("Max Planck", for: UIControlState())
            answerbox4.setTitle("Sigmund Freud", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "CroppedStalin1943.jpg")
            imageView.image = image
            //"CroppedStalin1943" by U.S. Signal Corps photo. - http://hdl.loc.gov/loc.pnp/cph.3a33351. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:CroppedStalin1943.jpg#/media/File:CroppedStalin1943.jpg
            break
        case 3:
            //Oil from Arabs Cartoon
            questionbox.setTitle("What is the point of view of this cartoon?", for: UIControlState())
            answerbox1.setTitle("Arab countries are not democratic", for: UIControlState())
            answerbox2.setTitle("Gas prices are too high", for: UIControlState())
            answerbox3.setTitle("Western Democracies are dependent on Arab oil", for: UIControlState())
            answerbox4.setTitle("Arab countries do not share their profits", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "3514895311_2169a6f20d_o.gif")
            imageView.image = image
            //Uncle Sam Being Weaned by Middle East Oil Teet. Digital image. Flickr. Flickr, 9 May 2009. Web. 20 June 2015. <https://www.flickr.com/photos/11574201@N04/3514895311/>.
            break
        case 4:
            questionbox.setTitle("Which of the following has been the most significant result of 20th century medical innovations?", for: UIControlState())
            answerbox1.setTitle("Availability of medicine", for: UIControlState())
            answerbox2.setTitle("Eradication of famine", for: UIControlState())
            answerbox3.setTitle("Eradication of AIDS", for: UIControlState())
            answerbox4.setTitle("The increase of lifespans", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 5:
            questionbox.setTitle("Sputnik represents a victory for the Soviets in the...", for: UIControlState())
            answerbox1.setTitle("Cold War", for: UIControlState())
            answerbox2.setTitle("Korean War", for: UIControlState())
            answerbox3.setTitle("World War II", for: UIControlState())
            answerbox4.setTitle("Vietnam War", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 6:
            questionbox.setTitle("What totalitarian dictator is known for establishing an authoritarian state in the Soviet Union?", for: UIControlState())
            answerbox1.setTitle("Lenin", for: UIControlState())
            answerbox2.setTitle("Stalin", for: UIControlState())
            answerbox3.setTitle("Kruschev", for: UIControlState())
            answerbox4.setTitle("Trotsky", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 7:
            questionbox.setTitle("What did Nelson Mandela fight to oppose?", for: UIControlState())
            answerbox1.setTitle("The Caste System", for: UIControlState())
            answerbox2.setTitle("The Holocaust", for: UIControlState())
            answerbox3.setTitle("The Apartheid", for: UIControlState())
            answerbox4.setTitle("All of the above", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 8:
            questionbox.setTitle("What does Gandhi's change of apparel in this picture show about him?", for: UIControlState())
            answerbox1.setTitle("His support of the caste system", for: UIControlState())
            answerbox2.setTitle("His support of Muslim Pakistan", for: UIControlState())
            answerbox3.setTitle("His rejection of Great Britain", for: UIControlState())
            answerbox4.setTitle("All of the above", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Gandhi_South-Africa.jpg")
            imageView.image = image
            //"Gandhi South-Africa" by Unknown - http://www.resurgence.org/resurgence/pictures/Gandhi214.jpg. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Gandhi_South-Africa.jpg#/media/File:Gandhi_South-Africa.jpg
            break
        case 9:
            questionbox.setTitle("All of the following revolutionaries followed Gandhi's strategy except for...", for: UIControlState())
            answerbox1.setTitle("Martin Luther King Jr.", for: UIControlState())
            answerbox2.setTitle("Nelson Mandela", for: UIControlState())
            answerbox3.setTitle("Cesar Chavez", for: UIControlState())
            answerbox4.setTitle("Ho Chi Minh", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 10:
            questionbox.setTitle("What power does the Organization of Petroleum Exporting Countries on developed nation?", for: UIControlState())
            answerbox1.setTitle("It can raise the price of oil", for: UIControlState())
            answerbox2.setTitle("It can establish the price of U.S. oil", for: UIControlState())
            answerbox3.setTitle("It can dictate trade regulations", for: UIControlState())
            answerbox4.setTitle("It has almost no impact", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 11:
            questionbox.setTitle("What can be inferred by this image?", for: UIControlState())
            answerbox1.setTitle("American had superior athletes", for: UIControlState())
            answerbox2.setTitle("The Olympics can be used to stage political statements.", for: UIControlState())
            answerbox3.setTitle("The Olympics symbolizes unity", for: UIControlState())
            answerbox4.setTitle("African athletes are superior", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Owens.jpg")
            imageView.image = image
            //While silver medalist Lutz Long hailed Hitler, along with German officials and spectators, Jesse Owens saluted America at the 1936 Berlin Olympics. Digital image. Los Angeles Sentinal. Bakewell Media, 18 Feb. 2011. Web. 20 June 2015. <http://lasentinel.net/Black-History-Political-and-social-statements-at-the-Olympics.html>.
            break
        case 12:
            questionbox.setTitle("Russia lagged behind other European powers until which event?", for: UIControlState())
            answerbox1.setTitle("Russo-Japanese War", for: UIControlState())
            answerbox2.setTitle("World War I", for: UIControlState())
            answerbox3.setTitle("World War II", for: UIControlState())
            answerbox4.setTitle("Fall of the Berlin Wall", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 13:
            questionbox.setTitle("What does this image represent?", for: UIControlState())
            answerbox1.setTitle("A military drill", for: UIControlState())
            answerbox2.setTitle("The impact of globalization", for: UIControlState())
            answerbox3.setTitle("A government reaction to invaders", for: UIControlState())
            answerbox4.setTitle("A government reaction to a protester", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "Tianasquare.jpg")
            imageView.image = image
            //"Tianasquare" by Published by The Associated Press, originally photographed by Jeff Widener. Via Wikipedia - https://en.wikipedia.org/wiki/File:Tianasquare.jpg#/media/File:Tianasquare.jpg
            break
        case 14:
            questionbox.setTitle("What is the point of view of this image?", for: UIControlState())
            answerbox1.setTitle("There are not enough resources for the current population growth", for: UIControlState())
            answerbox2.setTitle("Population growth affects Asian countries the most", for: UIControlState())
            answerbox3.setTitle("The One Child Policy in China is not effective", for: UIControlState())
            answerbox4.setTitle("The Green Revolution was a mistake", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "PopulationTrain_500px.jpg")
            imageView.image = image
            //Human Population Growth Chart. Digital image. The Yodeler. Wordpress, 8 Jan. 2013. Web. 20 June 2015. <http://theyodeler.org/?p=6300>.
            break
        case 15:
            questionbox.setTitle("This map shows Eastern Europe after which of the following?", for: UIControlState())
            answerbox1.setTitle("The fall of the Golden Horde", for: UIControlState())
            answerbox2.setTitle("The fall of the Soviet Union", for: UIControlState())
            answerbox3.setTitle("The invasion of Napoleon", for: UIControlState())
            answerbox4.setTitle("The 1947 surrender of Nazi Germany", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "map11.gif")
            imageView.image = image
            //European Map After fall of USSR. Digital image. BBC News. BBC, n.d. Web. 20 June 2015. <http://news.bbc.co.uk/2/shared/spl/hi/europe/02/euro_borders/html/11.stm>.
            break
        case 16:
            questionbox.setTitle("Which of the following is NOT a humanitarian organization?", for: UIControlState())
            answerbox1.setTitle("UNICEF", for: UIControlState())
            answerbox2.setTitle("World Trade Organization", for: UIControlState())
            answerbox3.setTitle("Red Cross", for: UIControlState())
            answerbox4.setTitle("World Health Organization", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 17:
            questionbox.setTitle("Which of the following was NOT a regional trade agreement?", for: UIControlState())
            answerbox1.setTitle("European Union", for: UIControlState())
            answerbox2.setTitle("NAFTA", for: UIControlState())
            answerbox3.setTitle("UNICEF", for: UIControlState())
            answerbox4.setTitle("Mercosur", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 18:
            questionbox.setTitle("Who is this?", for: UIControlState())
            answerbox1.setTitle("Morgan Freeman", for: UIControlState())
            answerbox2.setTitle("Martin Luther King Jr.", for: UIControlState())
            answerbox3.setTitle("Gandhi", for: UIControlState())
            answerbox4.setTitle("Nelson Mandela", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "Nelson_Mandela-2008_(edit).jpg")
            imageView.image = image
            //"Nelson Mandela-2008 (edit)" by South Africa The Good News / www.sagoodnews.co.za. Licensed under CC BY 2.0 via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Nelson_Mandela-2008_(edit).jpg#/media/File:Nelson_Mandela-2008_(edit).jpg
            break
        case 19:
            questionbox.setTitle("Who was the founder of Pakistan", for: UIControlState())
            answerbox1.setTitle("Muhammed Ali Jinnah", for: UIControlState())
            answerbox2.setTitle("Mohandas Gandhi", for: UIControlState())
            answerbox3.setTitle("Adi Amin", for: UIControlState())
            answerbox4.setTitle("Pinochet", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 20:
            questionbox.setTitle("Which of the following was the most major social result of increased interactions among diverse peoples.", for: UIControlState())
            answerbox1.setTitle("New governments", for: UIControlState())
            answerbox2.setTitle("Xenophobia", for: UIControlState())
            answerbox3.setTitle("New religions", for: UIControlState())
            answerbox4.setTitle("Increased polution", for: UIControlState())
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
