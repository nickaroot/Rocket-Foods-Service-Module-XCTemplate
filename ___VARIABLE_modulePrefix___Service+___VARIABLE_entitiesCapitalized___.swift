// ___FILEHEADER___

import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func all___VARIABLE_entitiesCapitalized___() -> [___VARIABLE_entityCapitalized___Model] {
        guard let realm = try? Realm(configuration: realmConfig) else { return [] }
        
        let objects = realm?.objects(___VARIABLE_entityCapitalized___Object.self).sortedByPersistOrder
        
        let ___VARIABLE_entitiesLowercased___ = Array(objects).compactMap { ___VARIABLE_entityCapitalized___Model($0) }
        
        return ___VARIABLE_entitiesLowercased___
    }
    
    public func ___VARIABLE_entitiesLowercased___Count() -> Int {
        guard let realm = try? Realm(configuration: realmConfig) else { return 0 }
        
        return realm?.objects(___VARIABLE_entityCapitalized___Object.self).count
    }
    
    public func ___VARIABLE_entityLowercased___(modelAtIndex index: Int) -> ___VARIABLE_entityCapitalized___Model? {
        guard let realm = try? Realm(configuration: realmConfig) else { return nil }
        
        guard index < realm.objects(___VARIABLE_entityCapitalized___Object.self).count else { return nil }
        
        let object = realm?.objects(___VARIABLE_entityCapitalized___Object.self).sortedByPersistOrder[index]
        
        let model = ___VARIABLE_entityCapitalized___Model(object)
        
        return model
    }
}
