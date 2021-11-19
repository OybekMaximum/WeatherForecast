struct Welcome: Decodable{
   
    var info: Info?
    var fact: Fact?
    var forecasts: [Forecasts]?
    var geo_object: GeoObject?
}
struct GeoObject: Decodable{
    var country: Country?
}

struct Country:Decodable{
    var name: String
}
struct Info: Decodable{
    
    let url: String
}
    
struct Fact: Decodable{
    var  feels_like: Int
    var temp: Int
    var icon: String
    var condition: String
    var season: String

   var wind_speed: Double
   var pressure_mm: Double

            }


struct Forecasts: Decodable{
    var parts: Parts?
    var date: String
    var sunrise: String
    var sunset:String
}

struct Parts: Decodable{
    var day : Day?
    
}

struct Day: Decodable {
    let temp_min: Int
    let temp_max: Int
    
   
}
