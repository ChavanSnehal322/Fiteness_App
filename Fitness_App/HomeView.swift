//
//  HomeView.swift
//  Fitness_App
//
//  Created by Snehal Chavan on 4/20/25.
//

import SwiftUI



struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    
    
    // Mockdata
    
   
    
    var body: some View {
        
        NavigationStack{
            
            
            
            ScrollView(showsIndicators: false){
                
                VStack(alignment: .leading){
                    
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    
                    HStack{
                        Spacer() // pushes everything on the left of screen
                        
                        VStack(alignment: .leading){
                            
                            VStack(alignment: .leading, spacing: 8){
                                
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.red)
                                
                                Text("\(viewModel.calories)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8){
                                
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                
                                Text("\(viewModel.active)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                            VStack(alignment: .leading, spacing: 8){
                                
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.red)
                                
                                Text("\(viewModel.stand)")
                                    .bold()
                            }
                            .padding(.bottom)
                            
                        }
                        Spacer() // pushes everything on the right of screen so we get it in center of screen
                        
                        // progress circle
                        
                        ZStack{
                            
                            // Calling progressCircleView
                            ProgressCircleView(progress: $viewModel.calories, color: .red, goal: 600)
                            
                            
                            ProgressCircleView(progress: $viewModel.calories, color: .green, goal: 900)
                                .padding(20)
                            
                            ProgressCircleView(progress: $viewModel.calories, color: .blue, goal: 600)
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
                        ForEach(viewModel.MockActivity, id: \.id ){
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
                        
                        ForEach(viewModel.mockWorkouts, id: \.id ){
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
