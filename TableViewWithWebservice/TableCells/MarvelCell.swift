//
//  MarvelCell.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 21/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import UIKit

class MarvelCell: UITableViewCell {
    @IBOutlet weak var lblName: UILabel!
//    @IBOutlet weak var lblRealName: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var btnShow: UIButton!
    
    @IBAction func btnShowTapped(_ sender: Any) {
        NotificationCenter.default.post(Notification.init(name: Notification.Name(rawValue: Constants.notification_ButtonTapped)))
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
