//
//  DetailView.swift
//  NewsApp
//
//  Created by Алексей Попов on 10.07.2024.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - Properties
    let article: Article
    let spacing: CGFloat = 20
    
    // MARK: - Body
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: spacing) {
                    TitleView(article: article)
                    Description(article: article)
                    DateView(article: article)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(GradientAvatarView())
                
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            
            BackButtonView()
                .padding()
        }
    }
}

#Preview {
    DetailView(
        article: Article(
            title: "ddd",
            description: "fffff",
            url: "",
            urlToImage: "https://picsum.photos/200",
            publishedAt: Date()
        )
    )
}

