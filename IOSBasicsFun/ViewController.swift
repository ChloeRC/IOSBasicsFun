//
//  ViewController.swift
//  IOSBasicsFun
//
//  Created by Crawford, Chloe on 9/23/20.
//  Copyright © 2020 Crawford, Chloe. All rights reserved.
//

import UIKit

// MARK: - Overview of an iOS project
// the folders are not folders, they are groups
// changes to the groups do not change on disk
// iOSBasicsFun
// - AppDelegate.swift: middleman between your app and the OS
// Rest of notes on GitHub, Gina's version

class ViewController: UIViewController {
    var quizModel = QuizModel()

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    @IBAction func nextQuestionPressed(_ sender: UIButton) {
        print("Hello from nextQuestionPressed()")
        showNextQuestion()
    }
    
    @IBAction func showAnswerPressed(_ sender: UIButton) {
        print("Hello from showAnswerPressed()")
        answerLabel.text = quizModel.getCurrentAnswer()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello from viewDidLoad()")
        questionLabel.text = "Hello from viewDidLoad()"
        
        showNextQuestion()
    }

    func showNextQuestion() {
        questionLabel.text = quizModel.getNextQuestion()
        answerLabel.text = "<Answer>"
    }
}

