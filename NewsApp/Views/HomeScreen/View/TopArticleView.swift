//
//  TopArticleView.swift
//  NewsApp
//
//  Created by Алексей Попов on 08.07.2024.
//


import SwiftUI

struct TopArticleView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            AsyncImageView(
                article: article,
                imageWidth: 260,
                imageHeight: 150,
                placeholder: 150
            )
            
            VStack(alignment: .leading) {
                TitleView(article: article)
                Spacer()
                Description(article: article)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}

#Preview {
    HomeView()
}
