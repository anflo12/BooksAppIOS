//
//  BooksViewModel.swift
//  BooksApp
//
//  Created by Andrés Flórez on 19/01/22.
//

import Foundation
import SwiftUI
import Alamofire
class BooksViewModel: ObservableObject{
    @Published var books:[Book] = []
    @Published var detailBook:DetailBoookModel = .empty
    func getListBooks (query:String="mongo"){
        let url = URL(string: "https://api.itbook.store/1.0/search/\(query)")
        
        AF.request(url!,method: .get).response { (response:AFDataResponse<Data?>) in
            if  (response.error != nil) {
                return
            }
            
            if let data = response.data  {
             DispatchQueue.main.async {
                    let responseData = try! JSONDecoder().decode(BookList.self,from:data)
                 
                 self.books = responseData.books
                    
                }
                
                
                
                
                //   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
                
            }
        }
    }
    
    func getDetailBook (isb13:String){
        print(isb13)
        let url = URL(string: "https://api.itbook.store/1.0/books/\(isb13)")
        
        AF.request(url!,method: .get).response { (response:AFDataResponse<Data?>) in
            if  (response.error != nil) {
                return
            }
            
            if let data = response.data  {
             DispatchQueue.main.async {
                    let responseData = try! JSONDecoder().decode(DetailBoookModel.self,from:data)
                 
                 self.detailBook = responseData
                    
                }
                
                
                
                
                //   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)
                
            }
        }
    }
}
