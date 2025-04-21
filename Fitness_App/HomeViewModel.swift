//
//  HomeViewModel.swift
//  Fitness_App
//
//  Created by Snehal Chavan on 4/20/25.
//

import Foundation


class HomeViewModel: ObservableObject{
    
    var calories: Int = 123
    var active: Int = 123
    var stand: Int = 8
    
    // @Published = informing the class  that the workout var will change
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
    
}
