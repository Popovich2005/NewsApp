//
//  DetailView.swift
//  NewsApp
//
//  Created by Алексей Попов on 10.07.2024.
//

import SwiftUI

struct DetailView: View {
    
    let article: Article
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            MainImageView(article: article)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(article.title)
                    .titleFont()
                
                if let description = article.description {
                    Text(description)
                        .descriptionFont()
                }
                
                Text(article.publishedAt.convertDate())
                    .descriptionFont()
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(GradientAvatarView())
            
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}


struct GradientAvatarView: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstants.avatarHeight / 3.8)
            .offset(y: -SizeConstants.avatarHeight / 4)
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



