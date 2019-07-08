//
//  Service.swift
//  AppStore
//
//  Created by Cristian Leonel Gibert on 07/07/2019.
//  Copyright © 2019 Cristian Gibert. All rights reserved.
//

import Foundation

class Service {
    static let shared = Service()
    
    func fetchApps(completion: @escaping ([Result], Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=twitter&entity=software"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion([], err)
                return
            }
            
            guard let data = data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)
                completion(searchResult.results, nil)
            } catch {
                completion([], error)
            }
            
            }.resume()
    }
}
