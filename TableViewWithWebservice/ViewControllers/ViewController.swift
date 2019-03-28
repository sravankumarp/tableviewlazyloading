//
//  ViewController.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 21/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblMarvelHeros: UITableView!
//    let marvelViewModel: MarvelViewModel
    var marvelHeros: [MarvelModel] = [MarvelModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let networkManager = NetworkManager()
        networkManager.getRequest(responseHandler: { (jsonResponse) in
            self.marvelHeros = jsonResponse
            DispatchQueue.main.async {
                self.tblMarvelHeros.reloadData()
            }
        }) { (error) in
            print(error)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.marvelHeros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MarvelCell") as? MarvelCell {
            let aHero: MarvelModel = self.marvelHeros[indexPath.row]
            
            cell.lblName.text = aHero.name
            
            //Set default image
            cell.imageView?.image = UIImage(imageLiteralResourceName: "avatar")
            
            //Lazy load images
            DispatchQueue.global().async {
                guard let imageURLString = aHero.imageurl else { return }
                guard let imageURL = URL(string: imageURLString) else { return }
                guard let imageData = try? Data.init(contentsOf: imageURL) else { return }
                guard let aHeroImage = UIImage.init(data: imageData) else { return }
                
                DispatchQueue.main.async {
                    cell.imageView?.image = aHeroImage
                    cell.imageView?.contentMode = .scaleAspectFit
                }
            }
            return cell
        } else {
            return MarvelCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
    
}

