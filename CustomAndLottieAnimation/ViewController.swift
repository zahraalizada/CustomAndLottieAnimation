//
//  ViewController.swift
//  Animation
//
//  Created by Zahra Alizada on 10.05.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animationTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var animationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
    }


    @IBAction func animateBtn(_ sender: Any) {
//        UIView.animate(withDuration: 2) {
//            self.animationView.layer.cornerRadius = 100
//        }
//        
//        UIView.animate(withDuration: 2, delay: 2) {
//            self.animationTopConstraint.constant = 0
//            self.view.layoutIfNeeded()
//        }
//        
//        UIView.animate(withDuration: 2, delay: 4) {
//            self.animationTopConstraint.constant = 200
//            self.view.layoutIfNeeded()
//        }
        
        
        UIView.animate(withDuration: 2) {
            self.animationView.layer.cornerRadius = 100
        } completion: { _ in
            UIView.animate(withDuration: 2) {
                self.animationTopConstraint.constant = 0
                self.view.layoutIfNeeded()
            } completion: { _ in
                
                let animator = UIViewPropertyAnimator(duration: 1.0, dampingRatio: 0.2) {
                    self.animationView.center.y += 20
                }
                animator.startAnimation()
                
                UIView.animate(withDuration: 2) {
                    self.animationTopConstraint.constant = 200
                    self.view.layoutIfNeeded()
                } completion: { _ in
                    UIView.animate(withDuration: 2) {
                        self.animationView.layer.cornerRadius = 0
                    }
                    
                }
            }
        }
        
    

        
        
    }
}

