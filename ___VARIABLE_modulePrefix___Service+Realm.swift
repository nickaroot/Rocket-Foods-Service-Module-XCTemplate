// ___FILEHEADER___

import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func update___VARIABLE_entitiesCapitalized___(_ ___VARIABLE_entitiesLowercased___: [___VARIABLE_entityCapitalized___Model], _ completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).sync { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.add(___VARIABLE_entitiesLowercased___, update: .all)
            }

            completion?()
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

