//
//  ItemList.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import SwiftUI

struct ItemList: View {
    var book:Book
    var body: some View {
        HStack{
            AsyncImage(url:URL(string: book.image) ){ image in
                image
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                
            } placeholder: {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
            VStack{
                Text(book.title)
                    .font(.title2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                Text(book.subtitle)
                    .font(.subheadline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.brown)
            }
            Spacer()
        }
    }
}

