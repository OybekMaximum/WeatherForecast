//
//  MainScreen.swift
//  WeatherForecast
//
//  Created by Oybek To’laboyev on 19/11/21.
//

import SwiftUI
import Alamofire

struct MainScreen: View {
    
    @ObservedObject var viewModel = ViewModel()

    let city: City


    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue,.white,]), startPoint: .bottom, endPoint: .top)


                VStack(spacing: 10){

                    Text(viewModel.welcome.geo_object?.country?.name ?? "hello").font(.system(size: 40))
//

                        Image(city.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity,maxHeight: 200)
//
                        .clipped()
                        .padding(.top, 20)

                    Text(city.CityName).font(.system(size: 40))


        HStack(alignment: .top ,spacing: -10){
            Text(String(viewModel.welcome.fact?.temp ?? 10)).font(.system(size: 100))
            Image(systemName: "circle")
                .font(Font.system(size: 20, weight: .bold))
                    }
//
                    HStack{
                        Spacer()
                        HStack{
                        Text("Wind speed:")
                            Text(String(viewModel.welcome.fact?.wind_speed ?? 10))
                        }
                        Spacer()
                    HStack{
                    Text("Feels like:")
                        Text(String(viewModel.welcome.fact?.feels_like ?? 10))
                    }
                        Spacer()
                    }
//
                    Text(viewModel.welcome.fact?.condition ?? "condition").font(.system(size: 30))
//
//
                    HStack(spacing: 20){

    HStack{
        Text("H:").fontWeight(.bold).font(.system(size: 20))
        Text(String(viewModel.welcome.forecasts?.first!.parts?.day!.temp_max ?? 111)).fontWeight(.bold).font(.system(size: 20))
    }
//
    HStack{
         Text("L:").fontWeight(.bold).font(.system(size: 20))
      Text(String(viewModel.welcome.forecasts?.first!.parts?.day!.temp_min ?? 111)).fontWeight(.bold).font(.system(size: 20))
    }
                    }
//                    .padding()

                    HStack{
                        Spacer()
                    HStack{
                    Text("Sunrise:")
                        Text(viewModel.welcome.forecasts?.first!.sunrise ?? "5:00")
                    }
                        Spacer()
                        HStack{
                        Text("Sunset:")
                            Text(viewModel.welcome.forecasts?.first!.sunset ?? "17:00")
                        }
                        Spacer()
                    }.padding()
                }


            }

            .edgesIgnoringSafeArea(.all)

                .onAppear{
                    if city.CityName == "Tashkent"{
                    viewModel.apiPostSingle()
                    } else if city.CityName == "Moscow"{
                        viewModel.apiPostSingle8()
                    }else if city.CityName == "Bishkek"{
                        viewModel.apiPostSingle5()
//                    }else if city.CityName == "Bishkek"{
//                        viewModel.apiPostSingle5()
                    }else if city.CityName == "Berlin"{
                        viewModel.apiPostSingle9()
                    }else if city.CityName == "Kabul"{
                        viewModel.apiPostSingle7()
                    }else if city.CityName == "Russia"{
                        viewModel.apiPostSingle8()
                    }else if city.CityName == "Dushanbe"{
                        viewModel.apiPostSingle6()
                    }else if city.CityName == "Beijing"{
                        viewModel.apiPostSingle1()
                    }

                }


//
        }
        .navigationBarTitle(String(viewModel.welcome.geo_object?.country?.name ?? "hello"), displayMode: .inline)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(city: cities[1])
    }
}
