//
//  HomeView.swift
//  Fitness_App
//
//  Created by Snehal Chavan on 4/20/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 123
    @State var stand: Int = 8
    
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer() // pushes everything on the left of screen
                    
                    VStack{
                        
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.red)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.green)
                            
                            Text("123 kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8){
                            
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundStyle(.red)
                            
                            Text("8 hours")
                                .bold()
                        }
                        .padding(.bottom)

                    }
                    Spacer() // pushes everything on the right of screen so we get it in center of screen
                    
                    // progress circle
                    
                    ZStack{
                        
                        // Calling progressCircleView
                        ProgressCircleView(progress: $calories, color: .red, goal: 600)
                            
                        
                        ProgressCircleView(progress: $calories, color: .green, goal: 900)
                            .padding(20)
                        
                        ProgressCircleView(progress: $calories, color: .blue, goal: 600)
                            .padding(.all, 40)
                        
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
