// ___FILEHEADER___

import PromiseKit
import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func update___VARIABLE_entitiesCapitalized___(_ ___VARIABLE_entitiesLowercased___: [___VARIABLE_entityCapitalized___Model]) -> Promise<Void> {
        Promise { [weak self] in
            DispatchQueue.global(qos: .background).sync {
                guard let realmConfig = self?.realmConfig else {
                    return seal.reject(PMKError.cancelled)
                }
                
                let realm = try? Realm(configuration: realmConfig)
                
                try? realm?.write {
                    realm?.add(___VARIABLE_entitiesLowercased___, update: .all)
                }

                seal.fulfill(())
            }
        }
    }
    
    public func add___VARIABLE_entityCapitalized___(_ ___VARIABLE_entityLowercased___: ___VARIABLE_entityCapitalized___Model) {
        DispatchQueue.global(qos: .background).sync { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.add(___VARIABLE_entityLowercased___, update: .modified)
            }
        }
    }
    
    public func delete___VARIABLE_entityCapitalized___(_ ___VARIABLE_entityLowercased___: ___VARIABLE_entityCapitalized___Model) {
        DispatchQueue.global(qos: .background).sync { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.delete(___VARIABLE_entityLowercased___)
            }
        }
    }
    
    public func clear() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.deleteAll()
            }
        }
    }
}

