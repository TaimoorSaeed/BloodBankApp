 
 
// protocol user {
//    var username : String {get set}
//    var email : String {get set}
//    var password : String {get set}
//    var donor : Bool {get set}
//    var acceptor: Bool {get set}
//    var bloodgroup: String {get set}
//    
// }
 

 
 class AuthService {
    static let sharedInstance = AuthService()
    //username:"tamur", email:"tamursd@gmail.com", password:"123", donor:true, acceptor:false, bloodgroup:"A"
    //    var username : String
    //    var email : String
    //    var password : String
    //    var donor : Bool
    //    var acceptor: Bool
    //    var bloodgroup: String
    
    var users: [user]
    
    
    private init() {
        self.users = []
    }
    
    
    func login(email: String , password: String) -> String
    {
        for user in users {
//            print(user.username)
//            print(user.email)
//            print(user.password)
            if user.email == email
            {
                if user.password == password
                {
                    return "login sucessfull"
                }
                else
                {
                    return "wrong username"
                }
            }
        }
        return "user not found"
    }

    func register(email: String, password: String, donor: Bool, acceptor: Bool, bloodgroup: String) -> String {
        let user1 = user(email: email, password: password, donor: donor, acceptor: acceptor, bloodgroup: bloodgroup)
        self.users.append(user1)
        
        return "user added"
            }


 }

 
    
