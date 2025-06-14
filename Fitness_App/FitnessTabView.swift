//
//  FitnessTabView.swift
//  Fitness_App
//
//  Created by Snehal Chavan on 4/20/25.
//

import SwiftUI

struct FitnessTabView: View {
    
    // changes to the variablr changes the UI
    @State var selectedTab = "Home"
    
    init(){
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    var body: some View {
        
        TabView( selection: $selectedTab){
            
            HomeView()
                .tag("Home")
                .tabItem{
                    
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoricDataView()
                .tag("Historic")
                .tabItem{
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Statistics")
                }
        }
    }
}

#Preview {
    FitnessTabView()
}
