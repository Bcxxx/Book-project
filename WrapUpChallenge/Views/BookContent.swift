//
//  BookContent.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 04/10/2021.
//

import SwiftUI

struct BookContent: View {
    
    @EnvironmentObject var model: BookModel
    
    @State var page = 0
    var book: Book
    
    var body: some View {
        
        TabView(selection: $page) {
            ForEach(book.content.indices) { index in
                VStack {
                    Text(book.content[index])
                        .tag(index)
                    
                    Spacer()
                    
                    Text("\(page + 1)")
                }
            }
            .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onAppear {
            page = book.currentPage
        }
    }
}

//struct BookContent_Previews: PreviewProvider {
//    static var previews: some View {
//        BookContent()
//            .environmentObject(BookModel())
//    }
//}
