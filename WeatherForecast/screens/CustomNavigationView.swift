
import SwiftUI

struct CustomNavigationView: UIViewControllerRepresentable {
    
    func makeCoordinator() -> Coordinator {
        return CustomNavigationView.Coordinator(parent: self)
    }
    
  
    var view: AnyView
    
    var largeTitle: Bool
    var tittle: String
    var placeHolder: String
    
    var onSearch: (String)->()
    var onCancel: ()->()
    
    init(view: AnyView,placeHolder: String? = "Search City",largeTitle: Bool? = true,tittle: String,onSearch: @escaping(String)->(),onCancel: @escaping()->()){
        self.tittle = tittle
        self.largeTitle = largeTitle!
        self.placeHolder = placeHolder!
        self.view = view
        self.onSearch = onSearch
        self.onCancel = onCancel
    }
    
    func makeUIViewController(context: Context) -> UINavigationController {
        
        let childView = UIHostingController(rootView: view)
        
        let controller = UINavigationController(rootViewController: childView)
        
        controller.navigationBar.topItem?.title = tittle
        controller.navigationBar.prefersLargeTitles = largeTitle
        
        // Search Bar...
        
        let searchController = UISearchController()
        searchController.searchBar.placeholder = placeHolder
        
        searchController.searchBar.delegate = context.coordinator
        
        controller.navigationBar.topItem?.searchController = searchController
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        uiViewController.navigationBar.topItem?.title = tittle
        uiViewController.navigationBar.topItem?.searchController?.searchBar.placeholder = placeHolder
        uiViewController.navigationBar.prefersLargeTitles = largeTitle
    }
    
    class Coordinator: NSObject,UISearchBarDelegate{
        
        var parent: CustomNavigationView
        
        init(parent: CustomNavigationView){
            self.parent = parent
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            self.parent.onSearch(searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            self.parent.onCancel()
        }
        
    }
    
    
}




