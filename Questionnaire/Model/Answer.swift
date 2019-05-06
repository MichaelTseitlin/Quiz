//
//  Answer.swift
//  Questionnaire
//
//  Created by Michael Tseitlin on 5/1/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

class Answer {
    let text: String
    var type: TypeOfLanguage
    var nextQuestion: Question?
    
    init(_ text: String, type: TypeOfLanguage, nextQuestion: Question?) {
        self.text = text
        self.type = type
        self.nextQuestion = nextQuestion
    }
}
