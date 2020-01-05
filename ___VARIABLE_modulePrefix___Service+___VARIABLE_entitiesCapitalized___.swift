// ___FILEHEADER___

import PromiseKit
import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func all___VARIABLE_entitiesCapitalized___() -> Promise<[___VARIABLE_entityCapitalized___Model]> {
        Promise { [weak self] seal in
            guard let realmConfig = self?.realmConfig else { return seal.reject(PMKError.cancelled) }
            
            let realm = try? Realm(configuration: realmConfig)
            
            guard let objects = realm?.objects(___VARIABLE_entityCapitalized___Object.self).sorted(byKeyPath: "id") else { return seal.reject(PMKError.cancelled) }
            
            let ___VARIABLE_entitiesLowercased___ = Array(objects).compactMap { ___VARIABLE_entityCapitalized___Model($0) }
            
            return seal.fulfill(___VARIABLE_entitiesLowercased___)
        }
    }
    
    public func ___VARIABLE_entitiesLowercased___Count() -> Int {
        let realm = try? Realm(configuration: realmConfig)
        
        return realm?.objects(___VARIABLE_entityCapitalized___Object.self).count ?? 0
    }
    
    public func ___VARIABLE_entityLowercased___(modelAtIndex index: Int) -> Promise<___VARIABLE_entityCapitalized___Model> {
        Promise { [weak self] seal in
            guard let realmConfig = self?.realmConfig else { return seal.reject(PMKError.cancelled) }
            
            let realm = try? Realm(configuration: realmConfig)
            
            guard let count = realm?.objects(___VARIABLE_entityCapitalized___Object.self).count, index < count,
                let object = realm?.objects(___VARIABLE_entityCapitalized___Object.self)[index] else { return seal.reject(PMKError.cancelled) }
            
            return seal.fulfill(___VARIABLE_entityCapitalized___Model(object))
        }
    }
}
