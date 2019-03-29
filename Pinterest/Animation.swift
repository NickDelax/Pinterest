//
//  Animation.swift
//  Pinterest
//
//  Created by Nico De La Cruz on 3/28/19.
//  Copyright © 2019 Nico De La Cruz. All rights reserved.
//

import Foundation

import UIKit
import SwiftyGif

class LogoAnimationView: UIView {
    
    let logoGifImageView = UIImageView(gifImage: UIImage(gifName: "loading.GIF"), loopCount: 1)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        addSubview(logoGifImageView)
        logoGifImageView.translatesAutoresizingMaskIntoConstraints = false
        logoGifImageView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 9).isActive = true
        logoGifImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
    }
}
