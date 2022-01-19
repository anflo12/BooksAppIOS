//
//  HomeScreen.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject private var viewModel:BooksViewModel
    @State private var search = ""
    var body: some View {
        NavigationView{
            VStack{
                SearchTextField(text: $search)
                ScrollView{
                    LazyVStack {
                        ForEach(viewModel.books, id: \.title) { book in
                            
                            NavigationLink(destination: DetailBook( isb13: book.isbn13 )) {
                                ItemList(book:book)
                            }                        }
                    }
                }.navigationTitle("BooksApp")
            }.onAppear {
                viewModel.getListBooks()
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
