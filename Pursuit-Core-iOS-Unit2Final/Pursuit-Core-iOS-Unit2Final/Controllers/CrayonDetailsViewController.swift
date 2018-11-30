//
//  CrayonDetailsViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by katty y marte on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailsViewController: UITableViewController {
    
    @IBOutlet weak var nameOfColor: UILabel!
    @IBOutlet weak var sliderRedValue: UISlider!
    @IBOutlet weak var redCurrentValue: UILabel!
    @IBOutlet weak var sliderBlueValue: UISlider!
    @IBOutlet weak var blueCurrentValue: UILabel!
    @IBOutlet weak var sliderGreenValue: UISlider!
    @IBOutlet weak var greenCurrentValue: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var currentAlphaValue: UILabel!
    @IBOutlet weak var resetAllValues: UIButton!
   
    @IBOutlet weak var displaysColorChanges: UIImageView!
    var crayonDetails : Crayon!

    override func viewDidLoad() {
        super.viewDidLoad()
       
    
    
        nameOfColor.text = crayonDetails.name
    
    }
    
    @IBAction func sliderChanges(_ sender: UISlider) {
        //let  color = UIColor.init(displayP3Red:CGFloat(crayonDetails!.red), green: CGFloat(crayonDetails!.blue), blue: CGFloat(crayonDetails!.green), alpha: CGFloat(),
        
        
            redCurrentValue.text = "\(sender.value)"
            blueCurrentValue.text = "\(sender.value)"
            greenCurrentValue.text = "\(sender.value)"
       displaysColorChanges.backgroundColor =  color
        
    }
}



