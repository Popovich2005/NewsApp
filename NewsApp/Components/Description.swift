//
//  Description.swift
//  NewsApp
//
//  Created by Алексей Попов on 12.07.2024.
//

import SwiftUI

struct Description: View {
    
    // MARK: - Properties
    let article: Article
    
    
    // MARK: - Body
    var body: some View {
        if let description = article.description {
            Text(description)
                .descriptionFont()
        }
    }
}

