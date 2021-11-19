//import SwiftUI
//
//struct DetailSreen: View {
//    @State var searchText = ""
//    var body: some View {
//        NavigationView{
//            
//            ScrollView{
//                HStack{
//            TextField("Search cities here", text: $searchText)
//                               }
//                .padding()
//                .background(Color(.systemGray5))
//                .cornerRadius(6)
//                .padding(.horizontal)
//                           
//                ForEach(cities){ city in
//                NavigationLink(destination: MainScreen(city: city)){
//                    ExtractedView(city: city)
//                        .padding()
//        }
//                }
//            }
//            
//            .navigationBarTitle("Cities")
//        }
//        
//       
//    }
//}
//
//struct DetailSreen_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailSreen()
//            
//    }
//}
//
//struct ExtractedView: View {
//    let city: City
//    
//    var body: some View {
//        ZStack(alignment: .bottomLeading){
//            Image(city.imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .clipped()
//                .cornerRadius(20)
////                .frame( height: 200)
////                .frame(width: 300)
//                
//            
//            Text(city.CityName)
//                .font(.system(size: 21, weight: .medium, design: .default))
//                .foregroundColor(.white)
//                .padding()
//        }
//        
//    }
//    
//}




//.filter({"\(city.CityName)".contains(searchText) || searchText.isEmpty})


//struct DetailSreen: View {
//    @State var searchText = ""
//    var body: some View {
//        NavigationView{
//
//            VStack(){
//                HStack{
//            TextField("Search cities here", text: $searchText)
//                               }
//                .padding()
//                .background(Color(.systemGray5))
//                .cornerRadius(6)
//                .padding(.horizontal)
//
//                List(cities){ city in
//                NavigationLink(destination: HomeScreen(city: city)){
//                ExtractedView(city: city)
//        }
//                }
//            }
//
//            .navigationBarTitle("Cities")
//        }
//
//
//    }
//}
