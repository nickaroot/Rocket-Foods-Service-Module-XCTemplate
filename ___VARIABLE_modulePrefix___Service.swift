// ___FILEHEADER___

import RealmSwift
import RFExtensions
import RFBaseService
import RFAuthService

public class ___VARIABLE_modulePrefix___Service: InjectableService {
    public typealias Model = ___VARIABLE_entityCapitalized___Model
    
    @Inject
    public var api: API
    
    @Inject
    public var authService: RFAuthService
    
    let realmConfig: Realm.Configuration = {
        var config = Realm.Configuration()
        
        config.fileURL = config.fileURL!.deletingLastPathComponent().appendingPathComponent("___VARIABLE_entitiesCapitalized___.realm")
        config.deleteRealmIfMigrationNeeded = true
        
        return config
    }()
    
    public init() { }
}

