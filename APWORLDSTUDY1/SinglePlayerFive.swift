//
//  SinglePlayerFive.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 5/8/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//
//testinggggg alksdfjasjdflasdf

import UIKit
import iAd

class SinglePlayerFive: UIViewController, ADBannerViewDelegate {
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
            questionbox.setTitle("What event does this painting represent?", for: UIControlState())
            answerbox1.setTitle("The Haitain Revolution", for: UIControlState())
            answerbox2.setTitle("The formation of Gran Colombia", for: UIControlState())
            answerbox3.setTitle("The French Revolution", for: UIControlState())
            answerbox4.setTitle("The Cold War", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Eugène_Delacroix_-_La_liberté_guidant_le_peuple.jpg")
            imageView.image = image
            //"Eugène Delacroix - La liberté guidant le peuple" by Eugène Delacroix - This page from this gallery.. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Eug%C3%A8ne_Delacroix_-_La_libert%C3%A9_guidant_le_peuple.jpg#/media/File:Eug%C3%A8ne_Delacroix_-_La_libert%C3%A9_guidant_le_peuple.jpg
            break
        case 2:
            questionbox.setTitle("What political idea is this person associated with?", for: UIControlState())
            answerbox1.setTitle("Free market economy", for: UIControlState())
            answerbox2.setTitle("Socialism", for: UIControlState())
            answerbox3.setTitle("Communism", for: UIControlState())
            answerbox4.setTitle("Mercantilism", for: UIControlState())
            CorrectAnswer = "1"
            let image = UIImage(named: "Adam_Smith_The_Muir_portrait.jpg")
            imageView.image = image
            //"Adam Smith The Muir portrait" by Unknown - http://www.nationalgalleries.org/object/PG 1472. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Adam_Smith_The_Muir_portrait.jpg#/media/File:Adam_Smith_The_Muir_portrait.jpg
            break
        case 3:
            questionbox.setTitle("What event is Matthew Perry credited with?", for: UIControlState())
            answerbox1.setTitle("The Nanking Massacre", for: UIControlState())
            answerbox2.setTitle("The opening of Japan", for: UIControlState())
            answerbox3.setTitle("The foundation of Canada", for: UIControlState())
            answerbox4.setTitle("The Discovery of the New World", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "Commodore_Matthew_Calbraith_Perry.png")
            imageView.image = image
            //"Commodore Matthew Calbraith Perry" by Mathew Brady (1823–1896) - http://www.metmuseum.org/works_of_art/collection_database/all/commodore_matthew_calbraith_perry_mathew_b_brady/objectview_enlarge.aspx?page=13&sort=0&sortdir=asc&keyword=daguerreotype&fp=11&dd1=0&dd2=0&vw=1&collID=0&OID=190036376&vT=1&hi=0&ov=0. Licensed under Public Domain via Wikimedia Commons - http://commons.wikimedia.org/wiki/File:Commodore_Matthew_Calbraith_Perry.png#/media/File:Commodore_Matthew_Calbraith_Perry.png
            break
        case 4:
            questionbox.setTitle("Which document did 'The Declaration of the Rights of Man' closely mimic?", for: UIControlState())
            answerbox1.setTitle("'The Communist Manifesto'", for: UIControlState())
            answerbox2.setTitle("'On the Social Contract'", for: UIControlState())
            answerbox3.setTitle("'The Spirit of Laws'", for: UIControlState())
            answerbox4.setTitle("'The Declaration of Independence'", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 5:
            questionbox.setTitle("Copernicus, Newton, and Galileo are all leaders of...?", for: UIControlState())
            answerbox1.setTitle("The Scientific Revolution", for: UIControlState())
            answerbox2.setTitle("The French Revolution", for: UIControlState())
            answerbox3.setTitle("The Enlightenment", for: UIControlState())
            answerbox4.setTitle("None of the Above", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 6:
            questionbox.setTitle("Which group of people primarily led the wars of independence in Latin America?", for: UIControlState())
            answerbox1.setTitle("Peninsulares", for: UIControlState())
            answerbox2.setTitle("Creoles", for: UIControlState())
            answerbox3.setTitle("Mestizos", for: UIControlState())
            answerbox4.setTitle("Mulattos", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 7:
            questionbox.setTitle("Which of the following was a vicim of imperial powers?", for: UIControlState())
            answerbox1.setTitle("Prussia", for: UIControlState())
            answerbox2.setTitle("Britain", for: UIControlState())
            answerbox3.setTitle("China", for: UIControlState())
            answerbox4.setTitle("France", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 8:
            questionbox.setTitle("What was the long term cause of the downfall of the Ottoman Empire?", for: UIControlState())
            answerbox1.setTitle("Attacks from Russia", for: UIControlState())
            answerbox2.setTitle("Financial problems", for: UIControlState())
            answerbox3.setTitle("World War I", for: UIControlState())
            answerbox4.setTitle("Nationalism", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 9:
            questionbox.setTitle("What region of the world did the United States primarily control?", for: UIControlState())
            answerbox1.setTitle("Latin America", for: UIControlState())
            answerbox2.setTitle("Western Europe", for: UIControlState())
            answerbox3.setTitle("Australia", for: UIControlState())
            answerbox4.setTitle("Southeast Asia", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 10:
            questionbox.setTitle("Which of the following were not Enlightenment thinkers?", for: UIControlState())
            answerbox1.setTitle("John Locke", for: UIControlState())
            answerbox2.setTitle("Toussaint Louverture", for: UIControlState())
            answerbox3.setTitle("Voltaire", for: UIControlState())
            answerbox4.setTitle("Rousseau", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 11:
            //Great Wave of Kanagawa
            questionbox.setTitle("From where does this painting originate?", for: UIControlState())
            answerbox1.setTitle("China", for: UIControlState())
            answerbox2.setTitle("Vietnam", for: UIControlState())
            answerbox3.setTitle("Japan", for: UIControlState())
            answerbox4.setTitle("Philippines", for: UIControlState())
            CorrectAnswer = "3"
            var image = UIImage(named: "Great_Wave_off_Kanagawa2.jpg")
            imageView.image = UIImage(named: "Great_Wave_off_Kanagawa2.jpg")
            //"Great Wave off Kanagawa2" by Katsushika Hokusai (葛飾北斎) - Restored version of File:Great Wave off Kanagawa.jpg (rotated and cropped, dirt, stains, and smudges removed. Creases corrected. Histogram adjusted and color balanced.). Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Great_Wave_off_Kanagawa2.jpg#/media/File:Great_Wave_off_Kanagawa2.jpg
            break
        case 12:
            //American Progress, Gast, 1872 CE (USA)
            questionbox.setTitle("What event does this picture represent?", for: UIControlState())
            answerbox1.setTitle("French Revolution", for: UIControlState())
            answerbox2.setTitle("Meiji Restoration", for: UIControlState())
            answerbox3.setTitle("American Revolution", for: UIControlState())
            answerbox4.setTitle("Manifest Destiny", for: UIControlState())
            CorrectAnswer = "4"
            let image = UIImage(named: "American_progress.jpeg")
            imageView.image = image
            //"American progress" by John Gast (painter) - scan or photograph of 1872 painting. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:American_progress.JPG#/media/File:American_progress.JPG
            break
        case 13:
            questionbox.setTitle("Which of the following gave England much of Africa?", for: UIControlState())
            answerbox1.setTitle("Berlin Conference", for: UIControlState())
            answerbox2.setTitle("Congress of Vienna", for: UIControlState())
            answerbox3.setTitle("Treaty of Paris", for: UIControlState())
            answerbox4.setTitle("Treaty of Versailles", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 14:
            questionbox.setTitle("This cartoon describes what ideology?", for: UIControlState())
            answerbox1.setTitle("Enlightenment", for: UIControlState())
            answerbox2.setTitle("White man's burden", for: UIControlState())
            answerbox3.setTitle("Renaissance", for: UIControlState())
            answerbox4.setTitle("None of the Above", for: UIControlState())
            CorrectAnswer = "2"
            let image = UIImage(named: "White_mans_burden_the_journal_detroit.jpeg")
            imageView.image = image
            //"White mans burden the journal detroit". Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:White_mans_burden_the_journal_detroit.JPG#/media/File:White_mans_burden_the_journal_detroit.JPG
            break
        case 15:
            questionbox.setTitle("Which of the following was a major leader of the Haitain Revolution?", for: UIControlState())
            answerbox1.setTitle("Robespierre", for: UIControlState())
            answerbox2.setTitle("John Locke", for: UIControlState())
            answerbox3.setTitle("Toussaint Louverture", for: UIControlState())
            answerbox4.setTitle("Karl Marx", for: UIControlState())
            CorrectAnswer = "3"
            break
        case 16:
            questionbox.setTitle("Which of the following movements was not influenced by religious ideas?", for: UIControlState())
            answerbox1.setTitle("Taiping Rebellion", for: UIControlState())
            answerbox2.setTitle("The Ghost Dance", for: UIControlState())
            answerbox3.setTitle("The Xhosa Cattle Killing Movement", for: UIControlState())
            answerbox4.setTitle("The French Revolution", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 17:
            questionbox.setTitle("Which of the following was not created from discontent of monarchist rule.", for: UIControlState())
            answerbox1.setTitle("Imperialism", for: UIControlState())
            answerbox2.setTitle("Liberalism", for: UIControlState())
            answerbox3.setTitle("Socialism", for: UIControlState())
            answerbox4.setTitle("Communism", for: UIControlState())
            CorrectAnswer = "1"
            break
        case 18:
            questionbox.setTitle("What drove the capitalist system?", for: UIControlState())
            answerbox1.setTitle("Taxes and trade regulation", for: UIControlState())
            answerbox2.setTitle("Supply and demand", for: UIControlState())
            answerbox3.setTitle("Employment and labor unions", for: UIControlState())
            answerbox4.setTitle("Government determination and production", for: UIControlState())
            CorrectAnswer = "2"
            break
        case 19:
            questionbox.setTitle("Which of the following led to mass production during the Industrial Revolution?", for: UIControlState())
            answerbox1.setTitle("Division of work", for: UIControlState())
            answerbox2.setTitle("The spinning jenny", for: UIControlState())
            answerbox3.setTitle("Interchangeable parts", for: UIControlState())
            answerbox4.setTitle("All of the above", for: UIControlState())
            CorrectAnswer = "4"
            break
        case 20:
            questionbox.setTitle("What event is depicted in this picture?", for: UIControlState())
            answerbox1.setTitle("French Revolution", for: UIControlState())
            answerbox2.setTitle("Haitian Revolution", for: UIControlState())
            answerbox3.setTitle("American Revolution", for: UIControlState())
            answerbox4.setTitle("Latin American Revolutions", for: UIControlState())
            CorrectAnswer = "3"
            let image = UIImage(named: "Declaration_independence.jpg")
            imageView.image = image
            //"Declaration independence" by John Trumbull - US Capitol. Licensed under Public Domain via Wikimedia Commons - https://commons.wikimedia.org/wiki/File:Declaration_independence.jpg#/media/File:Declaration_independence.jpg
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
