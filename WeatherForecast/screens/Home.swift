//
//  Home.swift
//  WeatherForecast
//
//  Created by Oybek To’laboyev on 19/11/21.
//

import SwiftUI

struct Home: View {

    @Binding var filteredItems : [City]
    
    var body: some View {
   
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing: 15){
                ForEach(filteredItems){ city in
                    CityRowView(city: city)
                }
            }
            
        }
        
    }
}
