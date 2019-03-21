//
//  ViewController.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 21/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRealName: UILabel!
    @IBOutlet weak var imgIcon: UIImageView!
    
    @IBOutlet weak var tblMarvelHeros: UITableView!
    @IBOutlet weak var btnShow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnShowTapped(_ sender: Any) {
        
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}

