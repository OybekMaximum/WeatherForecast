
import SwiftUI

struct ContentView: View {
    @State var filteredItems = cities
    var body: some View {
        CustomNavigationView(view: AnyView(Home(filteredItems: $filteredItems)), placeHolder: "Search City", largeTitle: true, tittle: "Cities", onSearch: { (txt) in

            if txt != ""{
                self.filteredItems = cities.filter{$0.CityName.lowercased().contains(txt.lowercased())}

            }else{
                self.filteredItems = cities
            }

        }, onCancel: {
            self.filteredItems = cities
        })
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
