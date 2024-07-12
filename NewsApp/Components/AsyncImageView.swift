//
//  AsyncImageView.swift
//  NewsApp
//
//  Created by Алексей Попов on 12.07.2024.
//

import SwiftUI

struct AsyncImageView: View {
    
    // MARK: - Properties
    let article: Article
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let placeholder: CGFloat
    
    // MARK: - Body
    var body: some View {
        if let url = article.urlToImage, let imageURL = URL(string: url) {
            AsyncImage(url: imageURL) { phase in
                if  let image = phase.image {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .cornerRadius(10)
                } else {
                    ZStack {
                        Rectangle()
                            .frame(height: placeholder)
                            .foregroundStyle(.secondary)
                            .opacity(0.3)
                            .cornerRadius(10)
                        
                        Image(systemName: "photo")
                            .resizable()
                            .foregroundStyle(.secondary)
                            .scaledToFit()
                            .frame(height: 50)
                    }
                }
            }
        }
    }
}

