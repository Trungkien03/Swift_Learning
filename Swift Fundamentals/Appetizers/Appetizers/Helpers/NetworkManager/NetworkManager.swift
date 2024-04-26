//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {
        
    }
    
    func getAppetizer(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.InvalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            guard let _ = error else {
                completed(.failure(.UnableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.InvalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.InvalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let decodeRepsonse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodeRepsonse.request))
            } catch {
                completed(.failure(.InvalidData))
            }
        }
        
        task.resume()
    }
}
