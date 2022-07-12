//
//  ContentView.swift
//  CombineClock08
//
//  Created by Ryo on 2022/07/12.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = .gray
    }
    
    @State var Selection = 3
    
    var body: some View {
        TabView(selection: $Selection) {
            
            SelectStopwatchView()
                .foregroundColor(Color.orange)
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }.tag(1)
            
            SelectStopwatchView()
                .tabItem {
                    Image(systemName: "alarm")
                    Text("Alarm")
                }.tag(2)
            
            StopwatchView()
                .tabItem {
                    Image(systemName: "stopwatch")
                    Text("Stopwatch")
                }.tag(3)
            
            SelectStopwatchView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }.tag(4)
            
        }
        .accentColor(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

