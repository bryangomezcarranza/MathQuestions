//
//  ViewController.swift
//  MathQuestions
//
//  Created by Bryan Gomez on 8/18/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    
    var question = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       updateViews()
    }
    
   @objc func updateViews() {
        questionLabel.text = question.currentQuestion()
        
        let answerChoices = question.answers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        choice4.setTitle(answerChoices[3], for: .normal)
        
        scoreLabel.text = "Score: \(question.getScore())"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        choice4.backgroundColor = UIColor.clear
        
        
    }
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = question.getAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        question.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateViews), userInfo: nil, repeats: false)
    }
    


}

