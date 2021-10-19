//
//  DataService.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 02/10/2021.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Book] {
        
        //Parse local json file
        
        //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        //Check if the pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Book]()
        }

        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        //Create a data object
        
        do {
            let data = try Data(contentsOf: url)
            
            //Decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let bookData = try decoder.decode([Book].self, from: data)
                
                // Return the recipes
                return bookData
            }
            catch {
                //Error with parsin json
                print(error)
            }
 
        }
        catch {
            //Error with getting data
            print(error)
        }
        
        return [Book]()
    }

}
