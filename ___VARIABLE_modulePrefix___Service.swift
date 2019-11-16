// ___FILEHEADER___

import KeychainAccess
import KeychainExtension
import RealmSwift

public class ___VARIABLE_modulePrefix___Service: NSObject {
    public let host: String
    
    public var keychain: Keychain?
    
    let realmConfig: Realm.Configuration = {
        var config = Realm.Configuration()
        
        config.fileURL = config.fileURL!.deletingLastPathComponent().appendingPathComponent("___VARIABLE_entitiesCapitalized___.realm")
        config.deleteRealmIfMigrationNeeded = true
        
        return config
    }()
    
    public init(_ host: String) {
        self.host = host
        
        super.init()
    }
}

