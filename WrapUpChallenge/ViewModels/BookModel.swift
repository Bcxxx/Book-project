//
//  BookModel.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 02/10/2021.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        
        self.books = DataService.getLocalData()
    }
    
}
