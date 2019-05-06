//
//  Question.swift
//  Questionnaire
//
//  Created by Michael Tseitlin on 5/1/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

class Question {
    let text: String
    var answers: [Answer] = []
    
    init(_ text: String) {
        self.text = text
    }
 
}

