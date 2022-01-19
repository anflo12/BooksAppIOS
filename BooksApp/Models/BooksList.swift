//
//  BooksList.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import Foundation

// MARK: - BookList
struct BookList: Codable {
    let total, page: String
    let books: [Book]
}

// MARK: - Book
struct Book: Codable {
    let title, subtitle, isbn13, price: String
    let image: String
    let url: String
}
