//
//  Container_VC.swift
//  Cosmos Demo Task
//
//  Created by Sahil Saharkar on 28/04/23.
//

import UIKit
    
class Container_VC: UIViewController {

    @IBOutlet weak var ivu:UIImageView!
    var image:UIImage?
       
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func resetContent(){
        DispatchQueue.main.async {
            self.ivu.image=self.image
        }
    }

}
