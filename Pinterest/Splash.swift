//
//  Splash.swift
//  Pinterest
//
//  Created by Nico De La Cruz on 4/11/19.
//  Copyright © 2019 Nico De La Cruz. All rights reserved.
//

import Foundation

import UIKit
import SwiftyGif

class SplashScreen: UIViewController {
    
    let animation = Animation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(animation)
        animation.pinEdgesToSuperView()
        animation.logoGifImageView.delegate = self as? SwiftyGifDelegate
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animation.logoGifImageView.startAnimatingGif()
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
