//
//  ContentView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            AboutMisterCam()
                .tabItem{
                    Label("Mr. Cam", systemImage:"person")
                }
            
            Session3()
                .tabItem{
                    Label("HGP", systemImage:"lightbulb.fill")
                }
            
            MisterCamSportsFavs() // insert final Tab Item
                .tabItem{
                    Label("Sports", systemImage:"baseball.fill")
                }
            
        }// End of Tab View
        
        
    }
}

#Preview {
    ContentView()
}

//Retrieved from https://developer.apple.com/documentation/swiftui/tabviewstyle

//Retrieved from https://www.hackingwithswift.com/quick-start/swiftui/adding-tabview-and-tabitem

//Retrieved from https://codewithchris.com/swiftui-tabview/
