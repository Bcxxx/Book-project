//
//  BookPreview.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 02/10/2021.
//

import SwiftUI

struct BookPreview: View {
    
    @ObservedObject var model = BookModel()
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                ScrollView {
                    
                    LazyVStack {
                        
                        ForEach(model.books) { book in
                            
                            VStack {
                                
                                NavigationLink(destination: BookFeatured(book: book)) {
                                    ZStack {
                                        
                                        Rectangle()
                                            .foregroundColor(.white)
                                            .cornerRadius(20)
                                            .shadow(radius: 5)
                                            .frame(width: 335, height: 550)
                                            .padding(.bottom, 30)
                                        
                                        VStack(alignment: .leading, spacing: 20) {
                                            Text(book.title)
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .padding(.leading, 30)
                                            
                                            
                                            Text(book.author)
                                                .font(.caption)
                                                .padding(.leading, 30)
                                            
                                            Image("cover\(book.id)")
                                                .resizable()
                                                .frame(width: 300, height: 400, alignment: .center)
                                                .padding([.horizontal, .bottom], 30)
                                        }
                                        
                                    }
                                }
                            }
                        }
                        
                    }
                    
                }
                .accentColor(.black)
                .padding([.horizontal, .bottom], 20)
            }
            .navigationTitle("My Library")
        }
        
    }
}

struct BookPreview_Previews: PreviewProvider {
    static var previews: some View {
        BookPreview()
            .environmentObject(BookModel())
    }
}
