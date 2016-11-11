//
//  ViewController.swift
//  optional-debug
//
//  Created by khacviet on 11/7/16.
//  Copyright © 2016 khacviet. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    
    @IBOutlet weak var lbl_p1: UILabel!
    
    
    @IBOutlet weak var lbl_p2: UILabel!
    
    @IBOutlet weak var but_b1: UIButton!
    
    
    @IBOutlet weak var but_b2: UIButton!
    
    
    @IBOutlet weak var but_b3: UIButton!
    
    @IBOutlet weak var status: UILabel!
    
    
    @IBAction func but_action(sender: UIButton)
    {
        setOperation()
        setRandom()
    }
    
    
    
    @IBOutlet weak var lbl_oepration: UILabel!
    
    
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        setOperation()
        setRandom()
        status.text = String("Làm Toán nha bé !")
    }
    
    
    
    func setOperation()
    {
        let randomOperation = Int(arc4random_uniform(4) + 1)
        if randomOperation == 1
        {
            lbl_oepration.text = String("+")
        }
        else if randomOperation == 2
        {
            lbl_oepration.text = String("-")
        }
        else if randomOperation == 3
        {
            lbl_oepration.text = String("x")
        }
        else // (==4)
        {
            lbl_oepration.text = String(":")
        }
    }
    
    
    func setRandom()
    {
        let random1 = Int(arc4random_uniform(9) + 1)
        let random2 = Int(arc4random_uniform(9) + 1)
        print("\(random1)  \(random2)")
        
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(random1, randomB: random2)
        
    }
    
    
    
    
    func sum(p1: Int, p2: Int) -> Int
    {
        return p1 + p2
    }
    
    func diff(p1: Int, p2: Int) -> Int
    {
        return p1 - p2
    }
    
    func prd(p1: Int, p2: Int) -> Int
    {
        return p1 * p2
    }
    
    func quot(p1: Int, p2:Int) -> Int
    {
        return p1 / p2
    }
    
    
    
    func setResult(randomA:Int, randomB:Int)
    {
        var resultTrue = Int()
        
        if lbl_oepration.text == String("+")
        {
            resultTrue = sum(randomA, p2: randomB)
        }
        else if lbl_oepration.text == String("-")
        {
            resultTrue = diff(randomA, p2: randomB)
        }
        else if lbl_oepration.text == String("x")
        {
            resultTrue = prd(randomA, p2: randomB)
        }
        else if lbl_oepration.text == String(":")
        {
            resultTrue = quot(randomA, p2: randomB)
        }
        
        let location = Int(arc4random_uniform(3) + 1)
        if location == 1
        {
            but_b1.setTitle(String(resultTrue), forState: .Normal)
            but_b2.setTitle(String(arc4random_uniform(20)), forState: .Normal)
            but_b3.setTitle(String(arc4random_uniform(20)), forState: .Normal)
        }
        else if location == 2
        {
            but_b2.setTitle(String(resultTrue), forState: .Normal)
            but_b1.setTitle(String(arc4random_uniform(20)), forState: .Normal)
            but_b3.setTitle(String(arc4random_uniform(20)), forState: .Normal)
        }
        else
        {
            but_b3.setTitle(String(resultTrue), forState: .Normal)
            but_b1.setTitle(String(arc4random_uniform(20)), forState: .Normal)
            but_b2.setTitle(String(arc4random_uniform(20)), forState: .Normal)
        }
        
    }

}






















