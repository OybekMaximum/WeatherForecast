//
//  WeatherForecastApp.swift
//  WeatherForecast
//
//  Created by Oybek To’laboyev on 10/11/21.
//

import SwiftUI

@main
struct WeatherForecastApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
