

class user {
   
    var email : String
    var password : String
    var donor : Bool
    var acceptor: Bool
    var bloodgroup: String
    
    init(email: String, password: String, donor: Bool, acceptor: Bool, bloodgroup: String){
        
        self.email = email
        self.password = password
        self.donor = donor
        self.acceptor = acceptor
        self.bloodgroup = bloodgroup
    }
}
