//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var quizBrain = QuizBrain()

  
    
    
    
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    
    @IBAction func anserButtonPressed(_ sender: UIButton) {
       
 
     
        let userAnswer = sender.currentTitle!;
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
       
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
      
       
    
        
    }
    
    @objc func updateUI() {
            questionLabel.text = quizBrain.getQuestion()
            progressBar.progress = quizBrain.setProgress()
            
            trueButton.backgroundColor = .clear
            falseButton.backgroundColor = .clear
        
        scoreLabel.text = "Score : \(quizBrain.getScore())"
        }
    

}

