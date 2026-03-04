//
//  Session5TabView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 1/21/26.
//

import SwiftUI

struct Session5TabView: View {
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
            
            MisterCamSportsFavs()
                .tabItem{
                    Label("Sports", systemImage:"baseball.fill")
                }
            
        }// End of Tab View
        
        
    }
}

#Preview {
    Session5TabView()
}

//Retrieved from https://developer.apple.com/documentation/swiftui/tabviewstyle

//Retrieved from https://www.hackingwithswift.com/quick-start/swiftui/adding-tabview-and-tabitem

//Retrieved from https://codewithchris.com/swiftui-tabview/
