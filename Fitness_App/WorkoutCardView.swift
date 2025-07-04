//
//  WorkoutCardView.swift
//  Fitness_App
//
//  Created by Snehal Chavan on 4/20/25.
//

import SwiftUI



struct WorkoutCardView: View {
    
    @State var workout: Workout
    
    var body: some View {
        
        HStack{
            
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundColor(workout.tintColor)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
            
            VStack(spacing: 16){
                
                HStack{
                    
                    Text(workout.title)
                        .font(.title3)
                    
                    Spacer()
                    
                    Text(workout.duration)
                }
                
                HStack{
                    
                    Text(workout.date)
                    
                    Spacer()
                    
                    Text(workout.calories)
                }
            }
            //.padding(.horizontal)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    WorkoutCardView(workout: Workout(id: 0, title: "Running", image: "figure.run", tintColor: .cyan, duration: "30 mins", date: "April 14", calories: "500 kcal"))
}
