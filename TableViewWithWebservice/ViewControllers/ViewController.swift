//
//  ViewController.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 21/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {    
    
    @IBOutlet weak var tblMarvelHeros: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MarvelCell") as? MarvelCell {
            cell.imageView?.image = UIImage(imageLiteralResourceName: "avatar")
            cell.lblName.text = "Hello"
            
            return cell
        } else {
            return MarvelCell()
        }
    }
    
}

