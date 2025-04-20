//
//  ActivityCardView.swift
//  Fitness_App
//
//  Created by Snehal Chavan on 4/20/25.
//

import SwiftUI

// model for activity to make it dynamic

struct Activity{
    
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
    
}

struct ActivityCardView: View {
    
    @State var activity: Activity
    
    var body: some View {
        
        ZStack{
            
            Color(uiColor: .systemGray6)
                .cornerRadius(15)
            
            VStack{
                
                HStack(alignment: .top){
                    
                    VStack(alignment: .leading){
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName:
                            activity.image)
                    .foregroundColor(activity.tintColor)
                    
                }
                
                Text(activity.amount)
                    .bold()
                    .font(.title)
                    .padding()
            }
            .padding(.horizontal)
            
           
        }
        
    }
}

#Preview {
    ActivityCardView(activity: Activity(id: 0, title: "Today Steps", subtitle: " Goal 35000", image: "figure.walk", tintColor: .green, amount: "9800"))
}
