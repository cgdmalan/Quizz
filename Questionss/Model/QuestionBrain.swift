//
//  QuestionBrain.swift
//  Questionss
//
//  Created by Çiğdem Alan on 30.11.2023.
//

import Foundation



struct QuestionBrain {
    
    
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    
    var questionNum = 0
    var score = 0
    
    mutating func getNewQestion () -> String {
        
        
        if questionNum + 1 < quiz.count{
            
            questionNum += 1
            
            
        }else {
            questionNum = 0
            score = 0
        }
        return quiz[questionNum].question
    }
    
    func answersBut(choice: Int ) -> String {
        
        let choices =  quiz[questionNum].answer[choice]
        return choices
        
        
    }
    
    mutating func correctAns (_ userAns:String) -> Bool {
        
        
        
        if userAns == quiz[questionNum].correctAns {
            score += 1
            return true
        }else{
            return false
        }
        
        
        
    }
    
    func getScore() -> Int{
        
        return score
        
    }
    
    
    func progressBar() -> Float{
        
        let progress = Float (questionNum + 1) / Float(quiz.count)
        return progress
        
    }
    
}
