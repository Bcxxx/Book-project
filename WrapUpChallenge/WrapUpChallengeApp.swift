//
//  WrapUpChallengeApp.swift
//  WrapUpChallenge
//
//  Created by Peter Mihók on 02/10/2021.
//

import SwiftUI

@main
struct WrapUpChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            BookPreview()
                .environmentObject(BookModel())
        }
    }
}
