//
//  AnimationScreen.swift
//  Pinterest
//
//  Created by Nico De La Cruz on 3/28/19.
//  Copyright © 2019 Nico De La Cruz. All rights reserved.
//

import Foundation
import UIKit
import SwiftyGif

class SplashScreen: UIViewController {
    
    let logoAnimationView = LogoAnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logoAnimationView)
        logoAnimationView.pinEdgesToSuperView()
        logoAnimationView.logoGifImageView.delegate = self as? SwiftyGifDelegate
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logoAnimationView.logoGifImageView.startAnimatingGif()
    }
    
}

extension SplashScreen: SwiftyGifDelegate {
    func gifDidStop(sender: UIImageView) {
        print("ya")
        let login = LoginViewController()
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.setRootViewController(login)
    }
}
