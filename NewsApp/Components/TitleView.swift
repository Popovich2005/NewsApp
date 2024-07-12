//
//  TitleView.swift
//  NewsApp
//
//  Created by Алексей Попов on 12.07.2024.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        Text(article.title)
            .titleFont()
    }
}
