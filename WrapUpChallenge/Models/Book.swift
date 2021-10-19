//
//  Book.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 02/10/2021.
//

import Foundation

class Book: Identifiable, Decodable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    
}
