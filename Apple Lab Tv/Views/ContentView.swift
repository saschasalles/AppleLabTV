//
//  ContentView.swift
//  Apple Lab Tv
//
//  Created by Sascha Sallès on 02/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Regarder")
                }
            LibraryView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Librairie")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Rechercher")
                }
        }
        .accentColor(Color(.systemTeal))
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
