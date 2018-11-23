//
//  SinglePlayerFour.swift
//  APWORLDSTUDY
//
//  Created by Roshan Kumaraswamy on 5/8/15.
//  Copyright (c) 2015 RoshWare. All rights reserved.
//

import UIKit
import iAd

var questionArrayFour: [QuestionObj] = []

class SinglePlayerFour: UIViewController, ADBannerViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomQuestions(array: questionArrayFour)
    }
    
    func parseJson() {
        let jsonURLString = "https://whap-db.herokuapp.com/?q=TimePeriodFour"
        guard let url = URL(string: jsonURLString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let model = try decoder.decode([QuestionObj].self, from: data)
                for question in model {
                    questionArrayFour.append(question)
                }
                
                for question in questionArrayFour {
                    print(question.qID)
                }
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
            
            }.resume()
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
    
    var CorrectAnswer = Int()
    
    @IBAction func exit(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextQuestion(_ sender: AnyObject) {
        RandomQuestions(array: questionArrayFour)
        answerbox1.backgroundColor = UIColor.white
        answerbox2.backgroundColor = UIColor.white
        answerbox3.backgroundColor = UIColor.white
        answerbox4.backgroundColor = UIColor.white
    }
    
    func getDataFromUrl(_ url:URL, completion: @escaping ((_ data: Data?, _ response: URLResponse?, _ error: NSError? ) -> Void)) {
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            completion(data, response, error as? NSError)
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
    
    func RandomQuestions(array: [QuestionObj]){
        let RandomNumber = Int.random(in: 0 ... 19)
        
        let image = UIImage(named: "blank.png")
        imageView.image = image
        
        questionbox.setTitle(array[RandomNumber].Question, for: UIControlState())
        answerbox1.setTitle(array[RandomNumber].Answer1, for: UIControlState())
        answerbox2.setTitle(array[RandomNumber].Answer2, for: UIControlState())
        answerbox3.setTitle(array[RandomNumber].Answer3, for: UIControlState())
        answerbox4.setTitle(array[RandomNumber].Answer4, for: UIControlState())
        CorrectAnswer = array[RandomNumber].CorrectChoice
        if let checkedUrl = URL(string: array[RandomNumber].URL ?? "blank") {
            imageView.contentMode = .scaleAspectFit
            if checkedUrl != URL(string: "blank") {
                downloadImage(checkedUrl)
            }
        }
        
        questionbox.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox1.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox2.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox3.titleLabel?.adjustsFontSizeToFitWidth = true
        answerbox4.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    func answer1pressed(_ sender: AnyObject) {
        if (CorrectAnswer == 1){
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 2){
            answerbox1.backgroundColor = UIColor.red
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 3){
            answerbox1.backgroundColor = UIColor.red
            answerbox3.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 4){
            answerbox1.backgroundColor = UIColor.red
            answerbox4.backgroundColor = UIColor.green
        }
    }
    func answer2pressed(_ sender: AnyObject) {
        if (CorrectAnswer == 2){
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 1){
            answerbox2.backgroundColor = UIColor.red
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 3){
            answerbox2.backgroundColor = UIColor.red
            answerbox3.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 4){
            answerbox2.backgroundColor = UIColor.red
            answerbox4.backgroundColor = UIColor.green
        }
    }
    func answer3pressed(_ sender: AnyObject) {
        if (CorrectAnswer == 3){
            answerbox3.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 1){
            answerbox3.backgroundColor = UIColor.red
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 2){
            answerbox3.backgroundColor = UIColor.red
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 4){
            answerbox3.backgroundColor = UIColor.red
            answerbox4.backgroundColor = UIColor.green
        }
    }
    func answer4pressed(_ sender: AnyObject) {
        if (CorrectAnswer == 4){
            answerbox4.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 1){
            answerbox4.backgroundColor = UIColor.red
            answerbox1.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 2){
            answerbox4.backgroundColor = UIColor.red
            answerbox2.backgroundColor = UIColor.green
        }
        else if (CorrectAnswer == 3){
            answerbox4.backgroundColor = UIColor.red
            answerbox3.backgroundColor = UIColor.green
        }
    }

}
