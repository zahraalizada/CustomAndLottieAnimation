//
//  LottieController.swift
//  Animation
//
//  Created by Zahra Alizada on 22.05.24.
//

import UIKit
import Lottie

class LottieController: UIViewController {

  
    @IBOutlet weak var lottieAnimation: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lottieAnimation.play()
        lottieAnimation.loopMode = .loop
    }

}
