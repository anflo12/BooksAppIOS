//
//  SearchTextField.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import SwiftUI

import Foundation

import SwiftUI
struct SearchTextField: View {
    @Binding  var text :String
    @State private var  isEditting = false
    @EnvironmentObject var viewmodel:BooksViewModel

    var body: some View {
        HStack{
            TextField("Search your favorite book ...", text: $text)
                .padding(10)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    isEditting = true
                }
            
            if isEditting{
                Button(action:{
                    
                    self.viewmodel.getListBooks(query: text)
                       
                }){
                    Text("Buscar")
                        
                }.padding(.trailing)
                
                
            }
        }
    }
}



