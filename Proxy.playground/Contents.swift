
// Virtual Proxy pattern

/*
 class User {
 let id = "123"
 }
 
 protocol ServerProtocol {
 func grandAccess(user: User)
 func denyAccess(user: User)
 }
 
 class ServerSide: ServerProtocol {
 func grandAccess(user: User) {
 print("Access granted to user with id \(user.id)")
 }
 
 func denyAccess(user: User) {
 print("Access denied to user with id \(user.id)")
 }
 }
 
 class ServerProxy: ServerProtocol {
 
 lazy private var server: ServerSide = ServerSide()
 
 func grandAccess(user: User) {
 server.grandAccess(user: user)
 }
 
 func denyAccess(user: User) {
 server.denyAccess(user: user)
 }
 }
 
 
 let user = User()
 let proxy = ServerProxy()
 proxy.grandAccess(user: user)
 proxy.denyAccess(user: user)
 
 */

// Guard Proxy pattern

class User {
    let name = "Dan"
    let password = "123"
}

protocol ServerProtocol {
    func grantAccess(user: User)
}

class ServerSide: ServerProtocol {
    func grantAccess(user: User) {
        print("Access granted to user with name \(user.name)")
    }
}

class ServerProxy: ServerProtocol {
    
    private var server: ServerSide!
    
    func grantAccess(user: User) {
        guard server != nil else {
            print("Access can`t be granted ")
            return
        }
        server.grantAccess(user: user)
    }
    
    
    func authenticate(user: User) {
        guard user.password == "123" else { return }
        print("User authenticated ")
        server = ServerSide()
    }
}

let user = User()
let proxy = ServerProxy()

proxy.grantAccess(user: user)
proxy.authenticate(user: user)
proxy.grantAccess(user: user)









