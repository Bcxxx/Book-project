//
//  BookFeatured.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 04/10/2021.
//

import SwiftUI

struct BookFeatured: View {
    
    @EnvironmentObject var model: BookModel
    
    var book: Book
    @State private var rating = 2
    
    var body: some View {
        
        VStack(spacing: 20){
            NavigationLink(destination: BookContent(book: book)) {
                VStack {
                    Text("Read Now!")
                        .font(.title)
                        .accentColor(.black)
                    
                    Image("cover\(book.id)")
                        .resizable()
                        .scaledToFit()
                }
                .navigationBarTitle("\(book.title)")
            }
                    
                    Text("Mark for later!")
                        .font(.headline)
                    
                    Button(action: {}) {
                        Image(systemName: book.isFavourite ? "star.fill" : "star")
                            .resizable()
                            .frame(width: 28, height: 28)
                    }
                    .accentColor(.yellow)
                    
                    Spacer()
                    
                    Text("Rate \(book.title)")
                        .font(.headline)
                    
                    Picker("Rate this book!", selection: $rating) {
                        ForEach(1..<6) { index in
                            Text("\(index)")
                                .tag(index)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding([.leading, .trailing, .bottom], 60)
                }
                .padding()
            }
        }

//struct BookFeatured_Previews: PreviewProvider {
//    static var previews: some View {
//        BookFeatured()
//            .environmentObject(BookModel())
//    }
//}
