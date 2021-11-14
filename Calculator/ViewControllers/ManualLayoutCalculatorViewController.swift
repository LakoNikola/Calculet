//
//  ManualLayoutCalculatorViewController.swift
//  Calculator
//
//  Created by user on 13.11.21.
//

import UIKit

class ManualLayoutCalculatorViewController: AbstractCalculatorViewController {
    
    override var displayLabel: UILabel! {
        set {
            
        }
        
        get {
            return manualDisplayLabel
        }
    }
    
    let manualDisplayLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        createUI()
    }
    
    func createUI() {
        addButtons()
    }
    
    func addButtons() {
        let equalButton = BinaryOperatorButton(type: .custom)
        equalButton.addTarget(self, action: #selector(equalOperatorButtonTapped), for: .touchUpInside)
        equalButton.setTitle("=", for: .normal)
        equalButton.setTitleColor(equalButton.selectedColor, for: .normal)
        equalButton.setTitleColor(equalButton.defaultColor, for: .selected)
        equalButton.backgroundColor = equalButton.defaultColor
        equalButton.titleLabel?.font = UIFont.systemFont(ofSize: 46, weight: .semibold)
        
        equalButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(equalButton)
        
        NSLayoutConstraint.activate([
            equalButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            equalButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            equalButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25, constant: -25),
            equalButton.heightAnchor.constraint(equalTo: equalButton.widthAnchor)
        ])
        
        let decimalSeparatorButton = DigitButton(type: .custom)
        decimalSeparatorButton.addTarget(self, action: #selector(decimalSeparatorButtonTapped), for: .touchUpInside)
        decimalSeparatorButton.setTitle(CalculatorLogic.formatter.decimalSeparator, for: .normal)
        decimalSeparatorButton.setTitleColor(DigitButton.defaultTextColor, for: .normal)
        decimalSeparatorButton.backgroundColor = DigitButton.defaultBackgroundColor
        decimalSeparatorButton.titleLabel?.font = DigitButton.font
        decimalSeparatorButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(decimalSeparatorButton)
        
        NSLayoutConstraint.activate([
            decimalSeparatorButton.trailingAnchor.constraint(equalTo: equalButton.leadingAnchor, constant: -20),
            decimalSeparatorButton.bottomAnchor.constraint(equalTo: equalButton.bottomAnchor),
            decimalSeparatorButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            decimalSeparatorButton.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit0Button = DigitButton.generate(title: "0")
        digit0Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit0Button)
        
        NSLayoutConstraint.activate([
            digit0Button.trailingAnchor.constraint(equalTo: decimalSeparatorButton.leadingAnchor, constant: -20),
            digit0Button.bottomAnchor.constraint(equalTo: equalButton.bottomAnchor),
            digit0Button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            digit0Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit1Button = DigitButton.generate(title: "1")
        digit1Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit1Button)
        
        NSLayoutConstraint.activate([
            digit1Button.leftAnchor.constraint(equalTo: view.leftAnchor, constant: +20),
            digit1Button.bottomAnchor.constraint(equalTo: digit0Button.topAnchor, constant: -20),
            digit1Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit1Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit2Button = DigitButton.generate(title: "2")
        digit2Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit2Button)
        
        NSLayoutConstraint.activate([
            digit2Button.leftAnchor.constraint(equalTo: digit1Button.rightAnchor, constant: +20),
            digit2Button.bottomAnchor.constraint(equalTo: digit0Button.topAnchor, constant: -20),
            digit2Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit2Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit3Button = DigitButton.generate(title: "3")
        digit3Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit3Button)
        
        NSLayoutConstraint.activate([
            digit3Button.leftAnchor.constraint(equalTo: digit2Button.rightAnchor, constant: +20),
            digit3Button.bottomAnchor.constraint(equalTo: digit0Button.topAnchor, constant: -20),
            digit3Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit3Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit4Button = DigitButton.generate(title: "4")
        digit4Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit4Button)
        
        NSLayoutConstraint.activate([
            digit4Button.leftAnchor.constraint(equalTo: digit1Button.leftAnchor),
            digit4Button.bottomAnchor.constraint(equalTo: digit1Button.topAnchor, constant: -20),
            digit4Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit4Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit5Button = DigitButton.generate(title: "5")
        digit5Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit5Button)
        
        NSLayoutConstraint.activate([
            digit5Button.leftAnchor.constraint(equalTo: digit4Button.rightAnchor, constant: +20),
            digit5Button.bottomAnchor.constraint(equalTo: digit2Button.topAnchor, constant: -20),
            digit5Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit5Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit6Button = DigitButton.generate(title: "6")
        digit6Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit6Button)
        
        NSLayoutConstraint.activate([
            digit6Button.leftAnchor.constraint(equalTo: digit5Button.rightAnchor, constant: +20),
            digit6Button.bottomAnchor.constraint(equalTo: digit3Button.topAnchor, constant: -20),
            digit6Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit6Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit7Button = DigitButton.generate(title: "7")
        digit7Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit7Button)
        
        NSLayoutConstraint.activate([
            digit7Button.leftAnchor.constraint(equalTo: digit1Button.leftAnchor),
            digit7Button.bottomAnchor.constraint(equalTo: digit4Button.topAnchor, constant: -20),
            digit7Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit7Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit8Button = DigitButton.generate(title: "8")
        digit8Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit8Button)
        
        NSLayoutConstraint.activate([
            digit8Button.leftAnchor.constraint(equalTo: digit7Button.rightAnchor, constant: +20),
            digit8Button.bottomAnchor.constraint(equalTo: digit5Button.topAnchor, constant: -20),
            digit8Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit8Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digit9Button = DigitButton.generate(title: "9")
        digit9Button.addTarget(self, action: #selector(digitButtonTapped), for: .touchUpInside)
        
        view.addSubview(digit9Button)
        
        NSLayoutConstraint.activate([
            digit9Button.leftAnchor.constraint(equalTo: digit8Button.rightAnchor, constant: +20),
            digit9Button.bottomAnchor.constraint(equalTo: digit6Button.topAnchor, constant: -20),
            digit9Button.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digit9Button.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])

        
        let digitSumButton = DigitBinaryButton.generatic(title: "+")
        digitSumButton.addTarget(self, action: #selector(binaryOperandButtonTapped), for: .touchUpInside)
        digitSumButton.tag = 102
        view.addSubview(digitSumButton)
        
        NSLayoutConstraint.activate([
            digitSumButton.trailingAnchor.constraint(equalTo: equalButton.trailingAnchor),
            digitSumButton.bottomAnchor.constraint(equalTo: equalButton.topAnchor, constant: -20),
            digitSumButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digitSumButton.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digitSubButton = DigitBinaryButton.generatic(title: "-")
        digitSubButton.addTarget(self, action: #selector(binaryOperandButtonTapped), for: .touchUpInside)
        digitSubButton.tag = 103
        view.addSubview(digitSubButton)
        
        NSLayoutConstraint.activate([
            digitSubButton.trailingAnchor.constraint(equalTo: digitSumButton.trailingAnchor),
            digitSubButton.bottomAnchor.constraint(equalTo: digitSumButton.topAnchor, constant: -20),
            digitSubButton.widthAnchor.constraint(equalTo: digitSumButton.widthAnchor),
            digitSubButton.heightAnchor.constraint(equalTo: digitSumButton.heightAnchor)
        ])
        
        let digitMulButton = DigitBinaryButton.generatic(title: "×")
        digitMulButton.addTarget(self, action: #selector(binaryOperandButtonTapped), for: .touchUpInside)
        digitMulButton.tag = 100
        view.addSubview(digitMulButton)
        
        NSLayoutConstraint.activate([
            digitMulButton.trailingAnchor.constraint(equalTo: digitSubButton.trailingAnchor),
            digitMulButton.bottomAnchor.constraint(equalTo: digitSubButton.topAnchor, constant: -20),
            digitMulButton.widthAnchor.constraint(equalTo: digitSubButton.widthAnchor),
            digitMulButton.heightAnchor.constraint(equalTo: digitSubButton.heightAnchor)
        ])
        
        let digitDivButton = DigitBinaryButton.generatic(title: "÷")
        digitDivButton.addTarget(self, action: #selector(binaryOperandButtonTapped), for: .touchUpInside)
        digitDivButton.tag = 101
        view.addSubview(digitDivButton)
        
        NSLayoutConstraint.activate([
            digitDivButton.trailingAnchor.constraint(equalTo:  digitMulButton.trailingAnchor),
            digitDivButton.bottomAnchor.constraint(equalTo:  digitMulButton.topAnchor, constant: -20),
            digitDivButton.widthAnchor.constraint(equalTo:  digitMulButton.widthAnchor),
            digitDivButton.heightAnchor.constraint(equalTo:  digitMulButton.heightAnchor)
        ])
        
        let digitPersentButton = DigitUnaryButton.generate(title: "%")
        digitPersentButton.addTarget(self, action: #selector(unaryOperatorButtonTapped), for: .touchUpInside)
        digitPersentButton.tag = 201
                                     
        view.addSubview(digitPersentButton)
                                     
        NSLayoutConstraint.activate([
              digitPersentButton.rightAnchor.constraint(equalTo: digitDivButton.leftAnchor, constant: -20),
              digitPersentButton.bottomAnchor.constraint(equalTo: digit9Button.topAnchor, constant: -20),
              digitPersentButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
              digitPersentButton.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digitInverttButton = DigitUnaryButton.generate(title: "±")
        digitInverttButton.addTarget(self, action: #selector(unaryOperatorButtonTapped), for: .touchUpInside)
        digitInverttButton.tag = 201
                                     
        view.addSubview(digitInverttButton)
                                     
        NSLayoutConstraint.activate([
            digitInverttButton.rightAnchor.constraint(equalTo: digitPersentButton.leftAnchor, constant: -20),
            digitInverttButton.bottomAnchor.constraint(equalTo: digit8Button.topAnchor, constant: -20),
            digitInverttButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digitInverttButton.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        
        let digitClearButton = DigitUnaryButton.generate(title: "AC")
        digitClearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        
        view.addSubview(digitClearButton)
        
        NSLayoutConstraint.activate([
            digitClearButton.rightAnchor.constraint(equalTo: digitInverttButton.leftAnchor, constant: -20),
            digitClearButton.bottomAnchor.constraint(equalTo: digit7Button.topAnchor, constant: -20),
            digitClearButton.widthAnchor.constraint(equalTo: equalButton.widthAnchor),
            digitClearButton.heightAnchor.constraint(equalTo: equalButton.heightAnchor)
        ])
        

        
        
        
        manualDisplayLabel.font = UIFont.systemFont(ofSize: 70)
        manualDisplayLabel.textAlignment = .right
        manualDisplayLabel.textColor = .white
        manualDisplayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(manualDisplayLabel)
        
        NSLayoutConstraint.activate([
            manualDisplayLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            manualDisplayLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            manualDisplayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
    }
}
