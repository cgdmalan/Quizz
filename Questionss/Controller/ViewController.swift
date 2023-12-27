//
//  ViewController.swift
//  Questionss
//
//  Created by Çiğdem Alan on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scorreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1But: UIButton!
    @IBOutlet weak var choice2But: UIButton!
    @IBOutlet weak var choice3But: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var questionBrain = QuestionBrain()
  
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
       updateUI()
        
        
    }


    @IBAction func userAnsBut(_ sender: UIButton) {
        
        var userAns = sender.currentTitle!
        var correctAnswer = questionBrain.correctAns(userAns)
        
        if correctAnswer {
            
            sender.backgroundColor = UIColor.green
        
        }else{
            
            sender.backgroundColor = UIColor.red
        }
        
        
      
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    
    
    
   @objc func updateUI () {
        
       questionLabel.text = questionBrain.getNewQestion()
       scorreLabel.text = "Score: \(questionBrain.getScore())"
       progressBar.progress = questionBrain.progressBar()
       
       choice1But.setTitle(questionBrain.answersBut(choice: 0), for: .normal)
       choice2But.setTitle(questionBrain.answersBut(choice: 1), for: .normal)
       choice3But.setTitle(questionBrain.answersBut(choice: 2), for: .normal)
        
        
       choice1But.backgroundColor = UIColor.clear
       choice2But.backgroundColor = UIColor.clear
       choice3But.backgroundColor = UIColor.clear
       
        
        
    }
    
    
    
    
    
}

