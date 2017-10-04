//
//  ViewController.swift
//  Calculo
//
//  Created by Christopher Onuigbo on 9/30/17.
//  Copyright © 2017 Christopher Onuigbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var output: UITextView!
    
    @IBOutlet var clearButton: UIButton!
    
    var addOn = false;
    var substractOn = false;
    var divideOn = false;
    var multiplyOn = false;
    var temporaryOutput: Double = 0.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func clearOutputText(_ sender: UIButton) {
        output.text = "";
        temporaryOutput = 0.0;
        
        clearButton.setTitle("AC", for: .normal)
    }

    
    @IBAction func pressZero(_ sender: UIButton) {
        calculate(num: 0.0)
    }
    
    @IBAction func pressOne(_ sender: UIButton) {
        calculate(num: 1.0)
    }
    
    @IBAction func pressTwo(_ sender: UIButton) {
        calculate(num: 2.0)
        
    }
    
    @IBAction func pressThree(_ sender: UIButton) {
        calculate(num: 3.0)
    }
    
    @IBAction func pressFour(_ sender: UIButton) {
        calculate(num: 4.0)
    }
    
    @IBAction func pressFive(_ sender: UIButton) {
        calculate(num: 5.0)
    }
    
    @IBAction func pressSix(_ sender: UIButton) {
        calculate(num: 6.0)
    }
    
    func calculate(num:Double){
        if(clearButton.titleLabel!.text == "AC"){
            clearButton.setTitle("C", for: .normal)
        }

        output.text = output.text + "\(Int(num))";
    }
    @IBAction func pressSeven(_ sender: UIButton) {
        calculate(num: 7.0)
    }
    
    @IBAction func pressEight(_ sender: UIButton) {
        calculate(num: 8.0)
    }
    
    @IBAction func pressNine(_ sender: UIButton) {
        calculate(num: 9.0)
    }
    
    @IBAction func pressDot(_ sender: UIButton) {
        if output.text.range(of:".") == nil {
            output.text = output.text + ".";
        }
    }
    
    @IBAction func pressDivide(_ sender: UIButton) {
        if(divideOn == true){
            output.text = "\(temporaryOutput / Double(output.text)!)"
            addOn = false;
            substractOn = false;
            multiplyOn = false;
            divideOn = false;
        }else{
            divideOn = true;
            if(output.text != ""){
                temporaryOutput = Double(output.text)!;
                output.text = ""
            }
        }
    }
    
    @IBAction func pressMultiply(_ sender: UIButton) {
        if(multiplyOn == true){
            output.text = "\(temporaryOutput * Double(output.text)!)"
            addOn = false;
            substractOn = false;
            multiplyOn = false;
            divideOn = false;
        }else{
            multiplyOn = true;
            if(output.text != ""){
                temporaryOutput = Double(output.text)!;
                output.text = ""
            }
        }
    }
    
    @IBAction func pressSubtract(_ sender: UIButton) {
        if(substractOn == true){
            output.text = "\(temporaryOutput - Double(output.text)!)"
            addOn = false;
            substractOn = false;
            multiplyOn = false;
            divideOn = false;
        }else{
            substractOn = true;
            if(output.text != ""){
                temporaryOutput = Double(output.text)!;
                output.text = ""
            }
        }
    }
    
    
    
    @IBAction func pressAdd(_ sender: UIButton) {
        
        if(addOn == true){
            output.text = "\(temporaryOutput + Double(output.text)!)"
            addOn = false;
            substractOn = false;
            multiplyOn = false;
            divideOn = false;
        }else{
            addOn = true;
            if(output.text != ""){
                temporaryOutput = Double(output.text)!;
                output.text = ""
            }
        }
        
    }
    
    @IBAction func pressEqual(_ sender: UIButton) {
        if(addOn == true){
         
            temporaryOutput = temporaryOutput +  Double(output.text)!;
        }else if(substractOn == true){
    
            temporaryOutput = temporaryOutput -  Double(output.text)!;
        }else if(divideOn == true){
    
            temporaryOutput = temporaryOutput /  Double(output.text)!;
        }else if(multiplyOn == true){

            temporaryOutput = temporaryOutput *  Double(output.text)!;
        }
            output.text = "\(temporaryOutput)"
            addOn = false;
            substractOn = false;
            multiplyOn = false;
            divideOn = false;
            temporaryOutput = 0.0;
    }
    
    
    @IBAction func pressNegativePositive(_ sender: UIButton) {
        
        if(output.text != ""){
            var current = Double(output.text);
            current = -current!;
            output.text = "\(current!)"
        }
    }
    
    //returns a percent of the entered number for example 9 = 0.09
    @IBAction func pressMod(_ sender: UIButton) {

        if(output.text != ""){
            var current = Double(output.text);
            current = current! * 0.01;
            output.text = "\(current!)"
        }
    }
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

