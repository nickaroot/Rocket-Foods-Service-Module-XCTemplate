// ___FILEHEADER___

import PromiseKit
import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func update___VARIABLE_entitiesCapitalized___(_ ___VARIABLE_entitiesLowercased___: [___VARIABLE_entityCapitalized___Model]) -> Promise<Void> {
        Promise { [realmConfig] in
            DispatchQueue.global(qos: .background).sync {
                guard let realm = try? Realm(configuration: realmConfig) else {
                    return seal.reject(PMKError.cancelled)
                }
                
                try? realm.write {
                    realm.add(___VARIABLE_entitiesLowercased___, update: .all)
                }

                seal.fulfill(())
            }
        }
    }
    
    public func add___VARIABLE_entityCapitalized___(_ ___VARIABLE_entityLowercased___: ___VARIABLE_entityCapitalized___Model) {
        DispatchQueue.global(qos: .background).sync { [realmConfig] in
            guard let realm = try? Realm(configuration: realmConfig) else { return }
            
            try? realm.write {
                realm.add(___VARIABLE_entityLowercased___, update: .modified)
            }
        }
    }
    
    public func delete___VARIABLE_entityCapitalized___(_ ___VARIABLE_entityLowercased___: ___VARIABLE_entityCapitalized___Model) {
        DispatchQueue.global(qos: .background).sync { [realmConfig] in
            guard let realm = try? Realm(configuration: realmConfig) else { return }
            
            try? realm.write {
                realm.delete(___VARIABLE_entityLowercased___)
            }
        }
    }
    
    public func clearAll() {
        DispatchQueue.global(qos: .background).async { [realmConfig] in
            guard let realm = try? Realm(configuration: realmConfig) else { return }
            
            try? realm.write {
                realm.deleteAll()
            }
        }
    }
}

