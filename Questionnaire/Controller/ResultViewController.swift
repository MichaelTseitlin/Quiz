//
//  ResultViewController.swift
//  Questionnaire
//
//  Created by Michael Tseitlin on 5/1/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - Create empty variable for accept "data"
    var result = TypeOfLanguage.next
    
    // MARK: - Result View Controller's outlets
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var detailTextView: UITextView!
    @IBOutlet var imageOfResult: UIImageView!
    @IBOutlet var imageOfStars: UIImageView!
    
    // MARK: - UIView Controller Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        settingValues()
        
        navigationItem.hidesBackButton = true
        navigationItem.title = "Ваш результат"
    }
    
    // MARK: - Setting corner radius for image
    override func viewWillLayoutSubviews() {
        imageOfResult.layer.cornerRadius = imageOfResult.frame.size.width / 2
    }
}

 // MARK: - Setting all values of outlets
extension ResultViewController {
    private func settingValues() {
        firstLabel.text = "Вам подойдет - \(result.rawValue)"
        detailTextView.text = result.definition
        imageOfResult.image = UIImage(named: result.imageOfLanguage!)
        imageOfStars.image = UIImage(named: result.starsOfDifficulty!)
    }
}
