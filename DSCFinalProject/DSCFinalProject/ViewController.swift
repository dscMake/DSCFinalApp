//
//  ViewController.swift
//  DSCFinalProject
//  Created by student on 5/3/20.  The student is Dean Conis
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageEarth = UIImage(named: "earth.jpeg")
    let imageMoon = UIImage(named: "moon.jpeg")
    let imageSol = UIImage(named: "sol.jpeg")
    var index = 0
    

    @IBOutlet var theSphere: UIImageView!
    
    @IBAction func alterSize(_ sender: UIPinchGestureRecognizer) {
        theSphere.transform = CGAffineTransform(scaleX: sender.scale , y: sender.scale)
           //debugTxt.text = "\(sender.scale)"
    }//alterSize
    
    @IBAction func restoreSize(_ sender: Any) {
    //sender.scale = 1.0
    }//restoreSize
   
    @IBOutlet var debugTxt: UITextField!
    
    @IBAction func forward(_ sender: Any) {
        index = (index + 1)%3
        //debugTxt.text = "\(index)"
        setPict( thePicture: changePict(index: index ) )
    }//forward
    
    @IBAction func back(_ sender: Any) {
        index = (index + 4)%3
        //debugTxt.text = "\(index)"
        setPict( thePicture: changePict(index: index ) )
    }//back
    
    func  setPict( thePicture: UIImage){
        theSphere.image = thePicture
    }//setPict
    
    func changePict( index: Int ) -> UIImage {
        switch index {
        case 0:
            return imageEarth!
        case 1:
            return imageMoon!
        case 2:
            return imageSol!
        default:
            return imageEarth!
        }// switch
    }//changePict


}//viewController
