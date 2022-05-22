//
//  SpeakerMakerApp.swift
//  SpeakerMaker
//
//  Created by Chris Price on 29/01/2022.
//

import SwiftUI

@main
struct SpeakerMakerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ViewModel())
        }
    }
}
