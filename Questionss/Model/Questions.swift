//
//  Questions.swift
//  Questionss
//
//  Created by Çiğdem Alan on 30.11.2023.
//

import Foundation



struct Question {
    
    
    let question : String
    let answer : [String]
    var correctAns : String
    
    init(q: String, a: [String], correctAnswer:String) {
        self.question = q
        self.answer = a
        self.correctAns = correctAnswer
    }
    
    
    
    
}
