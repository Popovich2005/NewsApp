//
//  BottomArticleNews.swift
//  NewsApp
//
//  Created by Алексей Попов on 10.07.2024.
//

import SwiftUI

struct BottomArticleNews: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            AsyncImageView(
                article: article,
                imageWidth: 120,
                imageHeight: 120,
                placeholder: 120
            )
            
            VStack(alignment: .leading) {
                TitleView(article: article)
                Spacer()
                Description(article: article)
            }
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}

