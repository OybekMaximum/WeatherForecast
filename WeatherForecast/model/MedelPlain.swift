//
//  MedelPlain.swift
//  WeatherForecast
//
//  Created by Oybek To’laboyev on 11/11/21.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

//struct Post: Decodable{
//
//    var status: String?
//    var welcome: [Welcome]?
//}

// MARK: - Welcome
//struct Welcome: Decodable {
//    var  now: Int?
//    var nowDt: String?
//}
//    let info: Info
//    let geoObject: GeoObject
//    let yesterday: Yesterday
//    let fact: Fact
//    let forecasts: [Forecast]
//}
//
//// MARK: - Fact
//struct Fact : Decodable{
//    let obsTime, uptime, temp, feelsLike: Int
//    let icon: Icon
//    let condition: Condition
//    let cloudness, precType, precProb, precStrength: Int
//    let isThunder: Bool
//    let windSpeed: Double
//    let windDir: WindDir
//    let pressureMm, pressurePa, humidity: Int
//    let daytime: Daytime
//    let polar: Bool
//    let season, source: String
//    let accumPrec: [String: Double]
//    let soilMoisture: Double
//    let soilTemp, uvIndex: Int
//    let windGust: Double
//}
//
//enum Condition : Decodable{
//    case lightRain
//    case lightSnow
//    case overcast
//    case snow
//    case wetSnow
//}
//
//enum Daytime : Decodable{
//    case d
//    case n
//}
//
//enum Icon : Decodable{
//    case iconOvcSn
//    case ovc
//    case ovcRa
//    case ovcRaSn
//    case ovcSn
//}
//
//enum WindDir : Decodable{
//    case n
//    case nw
//    case s
//    case sw
//    case w
//}
//
//// MARK: - Forecast
//struct Forecast: Decodable {
//    let date: String
//    let dateTs, week: Int
//    let sunrise, sunset, riseBegin, setEnd: String
//    let moonCode: Int
//    let moonText: String
//    let parts: Parts
//    let hours: [Hour]
//    let biomet: Biomet?
//}
//
//// MARK: - Biomet
//struct Biomet : Decodable{
//    let index: Int
//    let condition: String
//}
//
//// MARK: - Hour
//struct Hour : Decodable{
//    let hour: String
//    let hourTs, temp, feelsLike: Int
//    let icon: Icon
//    let condition: Condition
//    let cloudness, precType: Int
//    let precStrength: Double
//    let isThunder: Bool
//    let windDir: WindDir
//    let windSpeed, windGust: Double
//    let pressureMm, pressurePa, humidity, uvIndex: Int
//    let soilTemp: Int
//    let soilMoisture, precMm: Double
//    let precPeriod, precProb: Int
//}
//
//// MARK: - Parts
//struct Parts: Decodable {
//    let evening, night, morning, nightShort: Day
//    let day, dayShort: Day
//}
//
//// MARK: - Day
//struct Day : Decodable{
//    let source: String
//    let tempMin, tempAvg, tempMax: Int?
//    let windSpeed, windGust: Double
//    let windDir: WindDir
//    let pressureMm, pressurePa, humidity, soilTemp: Int
//    let soilMoisture, precMm: Double
//    let precProb, precPeriod: Int
//    let cloudness: Double
//    let precType: Int
//    let precStrength: Double
//    let icon, condition: String
//    let uvIndex: Int?
//    let feelsLike: Int
//    let daytime: Daytime
//    let polar: Bool
//    let freshSnowMm: Double
//    let temp: Int?
//}
//
//// MARK: - GeoObject
//struct GeoObject : Decodable{
//    let district, locality, province, country: Country
//}
//
//// MARK: - Country
//struct Country: Decodable {
//    let id: Int
//    let name: String
//}
//
//// MARK: - Info
//struct Info : Decodable{
//    let n: Bool
//    let geoid: Int
//    let url: String
//    let lat, lon: Double
//    let tzinfo: Tzinfo
//    let defPressureMm, defPressurePa: Int
//    let slug: String
//    let zoom: Int
//    let nr, ns, nsr, p: Bool
//    let f, h: Bool
//}
//
//// MARK: - Tzinfo
//struct Tzinfo : Decodable{
//    let name, abbr: String
//    let dst: Bool
//    let offset: Int
//}
//
//// MARK: - Yesterday
//struct Yesterday : Decodable{
//    let temp: Int
//}
