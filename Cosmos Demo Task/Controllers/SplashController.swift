//
//  SplashController.swift
//  Cosmos Demo Task
//
//  Created by Sahil Saharkar on 29/04/23.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.performSegue(withIdentifier: "OpenMenu", sender: self)
        }
    }

}
