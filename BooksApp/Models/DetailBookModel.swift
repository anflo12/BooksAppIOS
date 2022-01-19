
//
//  DetailBook.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import Foundation


// MARK: - DetailBoook
struct DetailBoookModel: Codable {
    let error, title, subtitle, authors: String
    let publisher, isbn10, isbn13, pages: String
    let year, rating, desc, price: String
    let image: String
    let url: String
    let pdf: PDF?
    
    static let empty:DetailBoookModel = .init(error: "", title: "", subtitle: "", authors: "", publisher: "", isbn10: "", isbn13: "", pages: "", year: "", rating: "", desc: "", price: "", image: "", url: "", pdf: PDF.init(chapter2: "", chapter5: "") );
}

// MARK: - PDF
struct PDF: Codable {
    let chapter2, chapter5: String

    enum CodingKeys: String, CodingKey {
        case chapter2 = "Chapter 2"
        case chapter5 = "Chapter 5"
    }
}
