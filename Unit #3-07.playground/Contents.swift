// Made on: Oct 2018
// Made by: Benjamin Hilderman
// Made for: ICS3U
// This program calculates the factorial within a loop

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let numberEnteredTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter a number to calculate it's factorial"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberEnteredTextField.borderStyle = UITextBorderStyle.roundedRect
        numberEnteredTextField.placeholder = "Between 1-100"
        view.addSubview(numberEnteredTextField)
        numberEnteredTextField.translatesAutoresizingMaskIntoConstraints = false
        numberEnteredTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        numberEnteredTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Calculate", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.titleLabel?.textAlignment = .center
        checkButton.addTarget(self, action: #selector(calculateFactorial), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: numberEnteredTextField.bottomAnchor, constant: 20).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    @objc func calculateFactorial() {
        var numberEntered : Int = Int(numberEnteredTextField.text!)!
        var answer : Int = numberEntered
        
        if numberEntered >= 1 && numberEntered <= 20 {
            
            for counter in 1 ..< numberEntered {
                answer = answer * counter
            }
            answerLabel.text = "The answer is \(String(answer))"
        } else {
            answerLabel.text = "Invalid Input"
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

PlaygroundPage.current.liveView = ViewController()
