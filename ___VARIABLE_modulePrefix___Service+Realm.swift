// ___FILEHEADER___

import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func update___VARIABLE_entityName___s(_ ___VARIABLE_entityName:identifier___s: [___VARIABLE_entityName___Model], _ completion: (() -> Void)? = nil) {
        DispatchQueue.global(qos: .background).sync { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.add(___VARIABLE_entityName:identifier___s, update: .all)
                completion?()
            }
        }
    }
    
    public func add___VARIABLE_entityName___s(_ ___VARIABLE_entityName:identifier___: ___VARIABLE_entityName___Model) {
        DispatchQueue.global(qos: .background).sync { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.add(___VARIABLE_entityName:identifier___, update: .modified)
            }
        }
    }
    
    public func delete___VARIABLE_entityName___(_ ___VARIABLE_entityName:identifier___: ___VARIABLE_entityName___Model) {
        DispatchQueue.global(qos: .background).sync { [weak self] in
            guard let realmConfig = self?.realmConfig else { return }
            
            let realm = try? Realm(configuration: realmConfig)
            
            try? realm?.write {
                realm?.delete(___VARIABLE_entityName:identifier___)
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

