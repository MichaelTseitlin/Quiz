//
//  ViewController.swift
//  Questionnaire
//
//  Created by Michael Tseitlin on 5/1/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    // MARK: - Create empty variable
    private var currentQuestions: Question?
    
    // MARK: - View Controller's outlets 
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    // MARK: - UIView Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        
        currentQuestions = QuestionManager.generateQuestions()
        updateTittles(currentQuestions)
    }
    
    // MARK: - Action for all buttons
    @IBAction func answerPressed(_ sender: UIButton) {
        
        let index = sender.tag
        let currentAnswer = currentQuestions?.answers[index]
    
        if currentAnswer!.type != .next {
            performSegue(withIdentifier: "segue", sender: sender)
        } else {
            currentQuestions = currentAnswer!.nextQuestion
            updateTittles(currentQuestions)
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let buttonSender = sender as? UIButton else { return }
        
        let index = buttonSender.tag
        
        guard let currentType = currentQuestions?.answers[index].type else { return }
        
        let resultViewController = segue.destination as! ResultViewController
        
        resultViewController.result = currentType
    }
    
}

extension QuestionViewController {
    
    // MARK: - Update text of questions, text of answers.
    private func updateTittles(_ question: Question?) {
        hideAllButtons()
        
        guard let question = question else {return}
        
        for index in 0..<question.answers.count {
            
            if index < self.answerButtons.count {
                self.answerButtons[index].isHidden = false
                self.answerButtons[index].layer.cornerRadius = 15
                self.answerButtons[index].setTitle(question.answers[index].text, for: .normal)
            }
        }
        questionLabel.text = currentQuestions?.text
    }
    
    // MARK: - Hide all buttons for update count.
    private func hideAllButtons() {
        
        for button in self.answerButtons {
            button.isHidden = true
        }
    }
    
}

