import Foundation

class ViewModel: ObservableObject{
    
    @Published var welcome = Welcome()
    
//
  
    func apiPostSingle(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
   
    
    
    
    func apiPostSingle1(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE1, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    
    
    
    
    func apiPostSingle2(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE2, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    func apiPostSingle3(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE3, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    func apiPostSingle4(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE4, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    func apiPostSingle5(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE5, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    func apiPostSingle6(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE6, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    func apiPostSingle7(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE7, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    func apiPostSingle8(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE8, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    func apiPostSingle9(){
        AFHttp.get(url: AFHttp.API_POST_SINGLE9, params: AFHttp.paramsEmpty(),
                   handler: {  response in
            switch response.result{
            case .success:
                
//                print(response.result)
                let welcome = try! JSONDecoder().decode(Welcome.self, from: response.data!)


                               self.welcome = welcome
//                print(welcome)
                print("true")
                
            case let .failure(error):
                print(error)
                print("false")
            }
        })
    }
    
    
}
