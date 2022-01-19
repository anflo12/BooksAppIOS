//
//  ContentView.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel:BooksViewModel = BooksViewModel()
    var body: some View {
        HomeScreen()
            .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
