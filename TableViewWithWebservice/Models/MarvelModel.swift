//
//  MarvelModel.swift
//  TableViewWithWebservice
//
//  Created by Sravan on 21/03/19.
//  Copyright © 2019 Sravan. All rights reserved.
//

import Foundation

struct MarvelModel : Codable {
    let name : String?
    let realname : String?
    let team : String?
    let firstappearance : String?
    let createdby : String?
    let publisher : String?
    let imageurl : String?
    let bio : String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case realname = "realname"
        case team = "team"
        case firstappearance = "firstappearance"
        case createdby = "createdby"
        case publisher = "publisher"
        case imageurl = "imageurl"
        case bio = "bio"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        realname = try values.decodeIfPresent(String.self, forKey: .realname)
        team = try values.decodeIfPresent(String.self, forKey: .team)
        firstappearance = try values.decodeIfPresent(String.self, forKey: .firstappearance)
        createdby = try values.decodeIfPresent(String.self, forKey: .createdby)
        publisher = try values.decodeIfPresent(String.self, forKey: .publisher)
        imageurl = try values.decodeIfPresent(String.self, forKey: .imageurl)
        bio = try values.decodeIfPresent(String.self, forKey: .bio)
    }
}
