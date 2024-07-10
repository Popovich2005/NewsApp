//
//  NetworkError.swift
//  NewsApp
//
//  Created by Алексей Попов on 08.07.2024.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "The data received from the server is invalid"
}
