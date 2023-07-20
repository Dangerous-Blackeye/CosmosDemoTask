//
//  ViewController.swift
//  Cosmos Demo Task
//
//  Created by Sahil Saharkar on 28/04/23.
//

import UIKit
import Koloda

class ViewController: UIViewController {
    
    @IBOutlet var vu_koloda:KolodaView!
    let array = [
        UIImage(named: "img_1"),
        UIImage(named: "img_2"),
        UIImage(named: "img_3"),
        UIImage(named: "img_4"),
        UIImage(named: "img_5"),
        UIImage(named: "img_7")
    ]
    var container=Container_VC()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Container_VC
        vu_koloda.delegate=self
        vu_koloda.dataSource=self
        vu_koloda.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        loadContainerViews()
        vu_koloda.reloadData()
    }
    
//    func loadContainerViews()  {
//        for _ in 0 ... array.count - 1 {
//            let vc=self.storyboard?.instantiateViewController(withIdentifier: "Container_VC") as! Container_VC
//            self.addChild(vc)
////            container.append(vc)
//        }
//    }
    
    @IBAction func crossAction() {
        vu_koloda.swipe(.left)
    }
    
    @IBAction func likeAction() {
        vu_koloda.swipe(.right)
    }
}

extension ViewController:KolodaViewDelegate, KolodaViewDataSource {
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return array.count
    }
    
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        print("array->\(array)")
//        print("container->\(container[index])")
//        let containers=container[index]
//        containers.image=self.array[index]
//        containers.resetContent()
//        return container[index].view
        let vc=self.storyboard?.instantiateViewController(withIdentifier: "Container_VC") as! Container_VC
        vc.image=self.array[index]
        print("array index->\(array[index])")
        vc.resetContent()
        return vc.view
    }
    
   
}
