//
//  ContentView.swift
//  HW4
//
//  Created by Mac11 on 2025/4/11.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Tab("世界觀", systemImage: "globe.americas") {
                WorldList()
            }
            Tab("主要角色", systemImage: "person.fill") {
                CharaList()
            }
            Tab("劇透", systemImage: "book.pages") {
                SeriesList()
            }
        }
        .accentColor(.green)
    }
}

#Preview {
    ContentView()
}
