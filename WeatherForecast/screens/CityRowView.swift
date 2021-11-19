//
//  CityRowView.swift
//  WeatherForecast
//
//  Created by Oybek To’laboyev on 19/11/21.
//

import SwiftUI

import SwiftUI

struct CityRowView: View {
    
    var city: City
   @State var showMainscreen = false
    
    var body: some View {
        
        
        HStack(spacing: 15){
            
            Image(city.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 60)
                .cornerRadius(16)
                
            VStack(alignment: .leading, spacing: 10, content: {
                
                Text(city.CityName)
                    .fontWeight(.bold)
                
                Text("Capital")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                
            })
                .frame(maxWidth: .infinity, alignment: .leading)
                
            // Buttons...
            
            Button {
                showMainscreen.toggle()
            } label: {
                
                ZStack{
                    Circle()
                        .frame(width: 35, height: 35)
                        .opacity(0.2)
    
                        
                    Image(systemName: "arrow.forward")
                        .foregroundColor(Color.blue)
                        .padding()
                        
                }
                
                
            }.sheet(isPresented: $showMainscreen) {
                MainScreen( city: city)
            }

            
        }
        .padding(.horizontal)
        
    }
}
