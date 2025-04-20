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
    
    // Mockdata
    
    var MockActivity = [
        
        Activity(id: 0, title: "Today Steps", subtitle: " Goal 35000", image: "figure.walk", tintColor: .green, amount: "9800"),
        
        Activity(id: 1, title: "Today Steps", subtitle: " Goal 54009", image: "figure.walk", tintColor: .blue, amount: "6979"),
        
        Activity(id: 2, title: "Today Steps", subtitle: " Goal 64321", image: "figure.walk", tintColor: .red, amount: "4500"),
        
        Activity(id: 3, title: "Today Steps", subtitle: " Goal 55533", image: "figure.run", tintColor: .yellow, amount: "59800")
        
        
    ]
    
    var mockWorkouts = [
        
        Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "45 mins", date: "April 14", calories: "520 kcal"),
        
        Workout(id: 1, title: "Strength Training", image: "figure.run", tintColor: .green, duration: "25 mins", date: "April 14", calories: "150 kcal"),
        
        Workout(id: 2, title: "Pilates", image: "figure.walk", tintColor: .blue, duration: "30 mins", date: "April 14", calories: "300 kcal"),
        
        Workout(id: 3, title: "Legs", image: "figure.run", tintColor: .red, duration: "37 mins", date: "April 14", calories: "600 kcal")
    ]
    
    
    var body: some View {
        
        NavigationStack{
            
            
            
            ScrollView(showsIndicators: false){
                
                VStack(alignment: .leading){
                    
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
                    
                    // Title and button
                    
                    HStack{
                        
                        Text(" Fitness Activity")
                        
                        Spacer()
                        
                        Button{
                            
                            print("Show more")
                        }label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    // uploads pieces of data at a time to avoid bottleneck
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2))
                    {
                        ForEach(MockActivity, id: \.id ){
                            activity in ActivityCardView(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack{
                        
                        Text(" Recent Workout")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink{
                            EmptyView()
                            
                        }label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    // uploads pieces of data at a time to avoid bottleneck
                    LazyVStack{
                        
                        ForEach(mockWorkouts, id: \.id ){
                            workout in WorkoutCardView(workout: workout)
                        }
                    }
                    
                    .padding(.bottom)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
