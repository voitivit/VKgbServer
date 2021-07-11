
import UIKit
import RealmSwift
class Group: Object {
    @objc dynamic var groupName: String = ""
    @objc dynamic var groupLogo: String  = ""
    
    init(groupName: String, groupLogo: String) {
        self.groupName = groupName
        self.groupLogo = groupLogo
    }
    
    // этот инит обязателен для Object
    required override init() {
        super.init()
    
    }
    }



//struct Groups: Equatable {
//    let groupName: String
//    //let groupLogo: UIImage?
//    let groupLogo: String
//
//    // для проведения сравнения (.contains), только по имени
//    static func ==(lhs: Groups, rhs: Groups) -> Bool {
//        return lhs.groupName == rhs.groupName //&& lhs.groupLogo == rhs.groupLogo
//    }
//}
