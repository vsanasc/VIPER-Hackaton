//
//  Endpoints.swift
//  viperHackaton
//
//  Created by Vitor Santos do Nascimento on 2/11/18.
//  Copyright © 2018 Vitor Santos do Nascimento. All rights reserved.
//

import Foundation


struct API{
	static let baseUrl = "https://www.ckl.io"
}


protocol Endpoint{
	var path: String {get}
	var url: String {get}
}

enum Endpoints{
	enum Articles: Endpoint {
		case fetch
		
		public var path: String{
			switch self {
				case .fetch: return "/challenge/"
			}
		}
		
		var url: String {
			switch self {
				case .fetch: return "\(API.baseUrl)\(path)"
			}
		}
		
		
	}
}
