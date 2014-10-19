//
//  ViewController.swift
//  Fortuna
//
//  Created by cheng way on 10/19/14.
//  Copyright (c) 2014 walkingway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quotationTextView: UITextView!

  override func awakeFromNib() {
    println("awakeFromNib quotationTextView: \(quotationTextView)")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    println("Hacking in Swift, since iOS" + "8")
    
    println("controller: \(self)")
    println("view: \(self.view)")
    println("view's frame: \(self.view.frame)")
    println("viewDidLoad quotationTextView: \(quotationTextView)")
    displayRandomQuote()
    
    quotationTextView.editable = false
    quotationTextView.selectable = false
  }
  
  func displayRandomQuote() {
    let delegate = UIApplication.sharedApplication().delegate as AppDelegate
    let arrayOfPositiveAndNegative = [delegate.positiveQuotes, delegate.negativeQuotes]
    let quotes:[String] = arrayOfPositiveAndNegative[Int(arc4random_uniform(2))]
    
    let count = UInt32(quotes.count)
    let quote: String = quotes[Int(arc4random_uniform(count))]
    
    quotationTextView.text = quote
  }

  @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
    displayRandomQuote()
  }


}

