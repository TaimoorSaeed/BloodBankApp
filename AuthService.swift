
 class AuthService {
    static let sharedInstance = AuthService()
    var users: [user]
    private init() {
        self.users = []
    }
    
    
    func login(email: String , password: String) -> String
    {
        for user in users {
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
 
 
 
