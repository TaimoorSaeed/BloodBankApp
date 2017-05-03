 
 class AuthService {
    static let sharedInstance = AuthService(username:"tamur", email:"tamursd@gmail.com", password:"123", donor:true, acceptor:false, bloodgroup:"A")
    var username : String
    var email : String
    var password : String
    var donor : Bool
    var acceptor: Bool
    var bloodgroup: String
    
    private init(username: String, email: String, password: String, donor: Bool, acceptor: Bool, bloodgroup: String) {
        self.username = username
        self.email = email
        self.password = password
        self.donor = donor
        self.acceptor = acceptor
        self.bloodgroup = bloodgroup
    }
    
    func login(username: String , password: String) -> String
    {
        if self.username == username
        {
            if self.password == password{
                return "login sucessfull"
            }
            else {
                
                return "wrong password"
            }
        } else {
            return "wrong username"
        }
    }
    
    func register(username: String, email: String, password: String, donor: Bool, acceptor: Bool, bloodgroup: String ) -> String {
        self.username = username
        self.email = email
        self.password = password
        self.donor = donor
        self.acceptor = acceptor
        self.bloodgroup = bloodgroup
        
        return "sucessfull"
    }
    
    
 }
      
