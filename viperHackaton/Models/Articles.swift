//
//  Articles.swift
//  viperHackaton
//
//  Created by Vitor Santos do Nascimento on 2/11/18.
//  Copyright © 2018 Vitor Santos do Nascimento. All rights reserved.
//

import Foundation
import ObjectMapper


struct Article{
	var date = ""
	var title = ""
	var website = ""
	var authors = ""
	var content = ""
	var imageUrl = ""
}


extension Article: Mappable{
	
	init?(map: Map) {
		
	}
	
	mutating func mapping(map: Map) {
		date <- map["date"]
		title <- map["title"]
		website <- map["website"]
		authors <- map["authors"]
		content <- map["content"]
		imageUrl <- map["image"]
	}
	
}

