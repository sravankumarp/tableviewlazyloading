//
//  ProfileImageViewController.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 28/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import UIKit

class ProfileImageViewController: UIViewController {
    
    var selectedHeroImage: UIImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightText
        
        let anImageView = UIImageView(image: selectedHeroImage)
        anImageView.backgroundColor = UIColor.white
        anImageView.contentMode = .scaleAspectFit
        anImageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(anImageView)
        
        let horizontalConstraint = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-10-[anImageView]-10-|",
            options: NSLayoutConstraint.FormatOptions.init(rawValue: 0),
            metrics: nil,
            views: ["anImageView": anImageView])
        
        let verticalConstraint = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-10-[anImageView]-10-|",
            options: NSLayoutConstraint.FormatOptions.init(rawValue: 0),
            metrics: nil,
            views: ["anImageView": anImageView])
        
        self.view.addConstraints(horizontalConstraint)
        self.view.addConstraints(verticalConstraint)
        
    }
    
}
