//
//  NetworkManager.swift
//  NewsApp
//
//  Created by Алексей Попов on 08.07.2024.
//

import Foundation

final class NetworkManager {
    
    // MARK: - Properties
    static let shared = NetworkManager()
    private let urlNews = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=917d796615f64c62a68f327308b031d3"
    private let decoder = JSONDecoder()
    
    // MARK: - Init
    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    // MARK: - Metods
    func getNews() async throws -> News {
        
        guard let url = URL(string: urlNews) else { throw NetworkError.invalidURL }
//        print("URL: \(url)")
        let (data, response) = try await URLSession.shared.data(from: url)
//        print("Data: \(String(data: data, encoding: .utf8))")
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        do {
            return try decoder.decode(News.self, from: data)
        } catch {
            throw NetworkError.invalidData
        }
    }
}


