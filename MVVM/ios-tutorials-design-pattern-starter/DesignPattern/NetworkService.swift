import Foundation

class NetworkService {
    static let shared = NetworkService()
    var user: User?
    
    private init() {}
    
    func login(email: String, password: String , completion: @escaping(Bool) -> Void ) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            
            if email == "Vinoth.Veerachamy@google.com" && password == "DS123" {
                self?.user = User(firstName: "Vinod", lastName: "Kumar", email: "vino@gmail.com", age: 22)
                completion(true)
            } else {
                self?.user = nil 
                completion(false)
            }
            
        }
        
    }
}
