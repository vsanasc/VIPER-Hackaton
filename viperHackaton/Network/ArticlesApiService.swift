//
//  ArticlesApiService.swift
//  viperHackaton
//
//  Created by Vitor Santos do Nascimento on 2/11/18.
//  Copyright © 2018 Vitor Santos do Nascimento. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import RxSwift



class ArticlesApiService{
	static func fetchArticles() -> Observable<[Article]> {
		return Observable<[Article]>.create({ (observer) -> Disposable in
			
			let request = Alamofire
				.request(Endpoints.Articles.fetch.url, method: .get)
				.validate()
				.responseArray(completionHandler: { (response: DataResponse<[Article]>) in
					
					switch response.result{
						case .success(let articles):
							observer.onNext(articles)
							observer.onCompleted()
						
						case .failure(let error):
							observer.onError(error)
					}
					
					
				})
			
			return Disposables.create {
				request.cancel()
			}
			
		})
	}
}
