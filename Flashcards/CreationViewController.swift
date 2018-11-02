//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Carl Christian Solli on 01.11.2018.
//  Copyright © 2018 CarlSolli. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var wrongAnswerOneTextField: UITextField!
    @IBOutlet weak var wrongAnswerTwoTextField: UITextField!
    
    var initialQuestion: String?
    var initialAnswer: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer
    }
    @IBAction func didTapOnCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnDone(_ sender: Any) {
        
        let answerText = answerTextField.text
        let questionText = questionTextField.text
        let wrongAnswerOneText = wrongAnswerOneTextField.text
        let wrongAnswerTwoText = wrongAnswerTwoTextField.text
        
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty {
            let alert = UIAlertController(title: "Missing text", message: "You have to put in a question and an answer!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            present(alert,animated:true)
        }
        
        flashcardsController.updateFlashCard(question: questionText!, answer: answerText!, extraAnswerOne: wrongAnswerOneText!, extraAnswerTwo: wrongAnswerTwoText! )
        
        dismiss(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
