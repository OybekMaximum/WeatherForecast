import Foundation
import SwiftUI

struct City: Identifiable{
    let imageName: String
    let CityName: String
    let id = UUID().uuidString
}

let cities = [
    City(imageName: "Tashkent", CityName: "Tashkent"),
    City(imageName: "Moscow", CityName: "Moscow"),
    City(imageName: "Beshkek", CityName: "Bishkek"),
//    City(imageName: "Beshkek", CityName: "Bishkek"),
    City(imageName: "Berlin", CityName: "Berlin"),
    City(imageName: "Kabul", CityName: "Kabul"),
//    City(imageName: "Tashkent", CityName: "Russia"),
    City(imageName: "Dushanbe", CityName: "Dushanbe"),
    City(imageName: "Beijing", CityName: "Beijing"),
//    City(imageName: "America", CityName: "New York")
    City(imageName: "Tashkent", CityName: "Tashkent"),
    City(imageName: "Moscow", CityName: "Moscow"),
    City(imageName: "Beshkek", CityName: "Bishkek"),
//    City(imageName: "Beshkek", CityName: "Bishkek"),
    City(imageName: "Berlin", CityName: "Berlin"),
    City(imageName: "Kabul", CityName: "Kabul"),
//    City(imageName: "Tashkent", CityName: "Russia"),
    City(imageName: "Dushanbe", CityName: "Dushanbe"),
    City(imageName: "Beijing", CityName: "Beijing"),
]
