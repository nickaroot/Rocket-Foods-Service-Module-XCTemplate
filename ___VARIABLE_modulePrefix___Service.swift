// ___FILEHEADER___

import RealmSwift
import RFBaseService
import RFAuthService

public class ___VARIABLE_modulePrefix___Service {
    public var api: API!
    public var authService: RFAuthService!
    
    let realmConfig: Realm.Configuration = {
        var config = Realm.Configuration()
        
        config.fileURL = config.fileURL!.deletingLastPathComponent().appendingPathComponent("___VARIABLE_entitiesCapitalized___.realm")
        config.deleteRealmIfMigrationNeeded = true
        
        return config
    }()
    
    public init() { }
}

