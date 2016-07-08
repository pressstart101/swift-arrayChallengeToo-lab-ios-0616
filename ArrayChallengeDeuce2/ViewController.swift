//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    
    
    // Create your methods here
    func addNameToDeliLine(name:String)-> String{
        var greeting = ""
        switch name {
        case "Billy Crystal" :
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan" :
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Meg! You can sit wherever you like."
        default:
            deliLine.append(name)
            if deliLine.count == 1 {
                greeting = "Welcome \(name), you're first in line!"
            }else if deliLine.count == 6{
                greeting = "Welcome \(name), you're number \(deliLine.count) in line."
            }else{
            greeting = "Welcome \(name), you're number \(deliLine.count) in line!"
            }
        }
  return greeting
    }
  
    func nowServing() -> String{
        var serving = ""
        if deliLine.isEmpty{
            serving = "There is no-one to be served."
        }else{
        serving = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
        }
        
        
        return serving
    }
  
    func deliLineDescription() ->String {
        var turn = ""
        if deliLine.isEmpty {
            turn = "The line is currently empty."
        }else{
            for (index, name) in deliLine.enumerate(){
                turn = "The line is:\(index + 1) \(name)\n"
            }
        }
        return turn
    }
    
    
    
    
    
    
    
    
    
}

