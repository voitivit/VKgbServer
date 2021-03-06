

import Foundation
import SwiftKeychainWrapper

class Session {
    private init() {}
    static let instance = Session()
    
    // хранение токена в VK
    var token: String {
        get{ KeychainWrapper.standard.string(forKey: "tokenVK") ?? "" }
        set{ KeychainWrapper.standard.set(newValue, forKey: "tokenVK") }
    }
    
    // хранение идентификатора пользователя VK
    var userId: Int {
        get { KeychainWrapper.standard.integer(forKey: "userId") ?? 0 }
        set { KeychainWrapper.standard.set(newValue, forKey: "userId") }
    }
        
    var expiredDate: Date {
        get {
            UserDefaults.standard.register(defaults: ["expiresIn" : Date()])
            return UserDefaults.standard.object(forKey: "expiresIn") as! Date
        }
        set { UserDefaults.standard.set(newValue, forKey: "expiresIn") }
    }
    
}





//
//class Session {
//    private init() {}
//    static let instance = Session()
//
//    var token = "" // хранение токена в VK
//    var userId = 0 // хранение идентификатора пользователя VK
//}
