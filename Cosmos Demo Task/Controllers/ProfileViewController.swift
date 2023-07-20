//
//  ProfileViewController.swift
//  Cosmos Demo Task
//
//  Created by Sahil Saharkar on 29/04/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var age_slider:UISlider!
    @IBOutlet var age_textlabel_initial:UILabel!
    @IBOutlet var age_textlabel_final:UILabel!
    @IBOutlet var distance_slider:UISlider!
    @IBOutlet var distance_textlabel_initial:UILabel!
    @IBOutlet var distance_textlabel_final:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        age_textlabel_initial.text=String(Int(age_slider.value))
        distance_textlabel_initial.text=String(Int(distance_slider.value))

    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        age_textlabel_final.text=String(Int(age_slider.value))
    }
    @IBAction func distanceSliderValueChanged(_ sender: Any) {
        distance_textlabel_final.text=String(Int(distance_slider.value))
    }
    
}
