import Foundation
import Alamofire

//let headers: HTTPHeaders = [
//    "X-Yandex-API-Key": "78823524-dc4d-4d5f-a944-8ca98a491138",
//]
//https://api.weather.yandex.ru/v2/forecast?lat=55.75396&lon=37.620393&extra=true

private let IS_TESTER = true
//https://api.weather.yandex.ru/v2/forecast?lat=55.75396&lon=37.620393&extra=true
private let DEP_SER = "https://api.weather.yandex.ru/v2/forecast?"
private let DEV_SER = "https://api.weather.yandex.ru/v2/forecast?"
///v2/forecast?
let headers: HTTPHeaders = [
    "X-Yandex-API-Key": "593b50ac-c3af-4b72-b0c7-afb0f081a938",
  ]

class AFHttp{
    // MARK : - AFHttp Requests
    class func get(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .get, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    
    
    // MARK : - AFHttp Methods
    class func server(url: String) -> URL{
        if(IS_TESTER){
            return URL(string: DEV_SER + url)!
        }
        return URL(string: DEP_SER + url)!
    }
    
    
    // MARK : - AFHttp Apis
    
    static let API_POST_SINGLE = "lat=41.2995&lon=69.2401&extra=true" // tashkent
    static let API_POST_SINGLE1 = "lat=38.9072&lon=77.0369&extra=true" // pekin
    static let API_POST_SINGLE2 = "lat=43.6532&lon=79.3832&extra=true"
    static let API_POST_SINGLE3 = "lat=40.7128&lon=74.0060&extra=true"
    static let API_POST_SINGLE4 = "lat=55.75396&lon=37.620393&extra=true"
    static let API_POST_SINGLE5 = "lat=42.8746&lon=74.5698&extra=true" //Bishkek
    static let API_POST_SINGLE6 = "lat=38.5598&lon=68.7870&extra=true" //Dushanbe
    static let API_POST_SINGLE7 = "lat=34.5553&lon=69.2075&extra=true" //Kabul
    static let API_POST_SINGLE8 = "lat=55.7558&lon=37.6173&extra=true" //Russia
    static let API_POST_SINGLE9 = "lat=52.5200&lon=13.4050&extra=true" //Berlin
    
//    52.5200° N, 13.4050°
    
    // MARK : - AFHttp Params
    class func paramsEmpty() -> Parameters {
        let parameters: Parameters = [
            :]
        return parameters
    }
}
