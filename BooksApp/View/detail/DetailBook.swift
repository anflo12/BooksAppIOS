//
//  DetailBook.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import SwiftUI

struct DetailBook: View {
    @EnvironmentObject private var viewModel:BooksViewModel
    var isb13:String = ""
    var body: some View {
        VStack{
            AsyncImage(url:URL(string: viewModel.detailBook.image ) ){ image in
                image
                    .resizable()
                    .frame(width: 230, height: 230, alignment: .center)
                
            } placeholder: {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
            
            Text(viewModel.detailBook.title)
                .font(.title2)
                .padding(.top)
            HStack{
                Text("Publisher: \(viewModel.detailBook.publisher)")
                
                Text("Year: \(viewModel.detailBook.year)")
                
            }
            
            Text("Description")
                .font(.title)
                .bold()
                .padding(.top,22)
            
            Text(viewModel.detailBook.desc)
                .padding(.top)
                .padding(.horizontal)
            Spacer()
        }.onAppear {
            viewModel.getDetailBook(isb13: isb13)
        }
    }
}


