//
//  ViewController.swift
//  ColorSliderMyOwn
//
//  Created by modelf on 6/5/16.
//  Copyright © 2016 modelf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // create outlets
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var greenSlide: UISlider!
    @IBOutlet weak var blueSlide: UISlider!
    @IBOutlet weak var redSlide: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeSlideColor() {
        
        if self.blueSlide == nil {
            return
        }
        
        let r: Float = redSlide.value
        let cgr: CGFloat = CGFloat(r)
        let b: Float = blueSlide.value
        let cgb: CGFloat = CGFloat(b)
        let g: Float = greenSlide.value
        let cgg: CGFloat = CGFloat(g)
        
        colorView.backgroundColor = UIColor(red: cgr, green: cgg, blue: cgb, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

