//
//  PinCell.swift
//  Pinterest
//
//  Created by Nico De La Cruz on 4/4/19.
//  Copyright © 2019 Nico De La Cruz. All rights reserved.
//

import Foundation

class PinCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let imageView1 : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "pinterest")
        return image
    }()
    
    func setupViews(){
        self.addSubview(imageView1)
        
        imageView1.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView1.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView1.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 9/10).isActive = true
        imageView1.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 4/5).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
}

