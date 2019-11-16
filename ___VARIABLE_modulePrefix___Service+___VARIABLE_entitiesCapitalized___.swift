// ___FILEHEADER___

import PromiseKit
import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func all___VARIABLE_entitiesCapitalized___() -> Promise<[___VARIABLE_entityCapitalized___Model]?>? {
        DispatchQueue.global(qos: .userInitiated).async(.promise) { [weak self] in
            guard let realmConfig = self?.realmConfig else { return nil }
            
            let realm = try? Realm(configuration: realmConfig)
            
            guard let objects = realm?.objects(___VARIABLE_entityCapitalized___Object.self).sorted(byKeyPath: "id") else { return nil }
            
            let ___VARIABLE_entitiesLowercased___ = Array(objects).compactMap { ___VARIABLE_entityCapitalized___Model($0) }
            
            return ___VARIABLE_entitiesLowercased___
        }
    }
    
    public func ___VARIABLE_entitiesLowercased___Count() -> Int? {
        let realm = try? Realm(configuration: realmConfig)
        
        return realm?.objects(___VARIABLE_entityCapitalized___Object.self).count ?? 0
    }
    
    public func ___VARIABLE_entityLowercased___(modelAtIndex index: Int) -> Promise<___VARIABLE_entityCapitalized___Model?>? {
        DispatchQueue.global(qos: .userInitiated).async(.promise) { [weak self] in
            guard let realmConfig = self?.realmConfig else { return nil }
            
            let realm = try? Realm(configuration: realmConfig)
            
            guard let count = realm?.objects(___VARIABLE_entityCapitalized___Object.self).count, index < count,
                let object = realm?.objects(___VARIABLE_entityCapitalized___Object.self)[index] else { return nil }
            
            return ___VARIABLE_entityCapitalized___Model(object)
        }
    }
}
