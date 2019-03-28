//
//  NetworkManager.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 21/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import Foundation

class NetworkManager {

    func getRequest(responseHandler: @escaping (_  jsonResponse: [MarvelModel]) -> (), errorHandler: @escaping (_ error: String) -> ()) {
//    func getRequest() {
        let config = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: config)
        
        guard let url = URL(string: Constants.URL_API) else { return }
        let urlRequest = URLRequest(url: url)
//        let task = urlSession.dataTask(with: url) { (data, response, error) in
        let task = urlSession.dataTask(with: urlRequest) { (data, response, error) in
            guard error == nil else {
                print("Error: \(String(describing: error!.localizedDescription))")
                return
            }
            
            if let someError = error {
                print("Error: \(String(describing: someError.localizedDescription))")
//                errorHandler(someError.localizedDescription)
            }
            
            guard let jsonData = data else {
                print("No Data from Webservice")
                return
            }
            
            //Assign to models
            let jsonDecoder = JSONDecoder()
            if let jsonResponse = try? jsonDecoder.decode([MarvelModel].self, from: jsonData) {
//                print("Marvel Data: \(jsonResponse as Any)")
                
                responseHandler(jsonResponse)
            } else {
                errorHandler("Some Parsing error")
            }
        }
        
        task.resume()
    }
}
