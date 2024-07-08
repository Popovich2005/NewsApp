//
//  Extention+Date.swift
//  NewsApp
//
//  Created by Алексей Попов on 08.07.2024.
//

import Foundation

extension Date {
    func convertDate() -> String {
        formatted(.dateTime.hour().minute().day().month().year())
    }
}
