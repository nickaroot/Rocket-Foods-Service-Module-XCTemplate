// ___FILEHEADER___

import RealmSwift

extension ___VARIABLE_modulePrefix___Service {
    public func all___VARIABLE_entitiesCapitalized___() -> [Model] {
        guard let realm = try? Realm(configuration: realmConfig) else { return [] }
        
        let objects = realm.objects(Model.Object.self).sortedByPersistOrder
        
        let ___VARIABLE_entitiesLowercased___ = Array(objects).compactMap { Model($0) }
        
        return ___VARIABLE_entitiesLowercased___
    }
    
    public func ___VARIABLE_entitiesLowercased___Count() -> Int {
        guard let realm = try? Realm(configuration: realmConfig) else { return 0 }
        
        return realm.objects(Model.Object.self).count
    }
    
    public func ___VARIABLE_entityLowercased___(modelAtIndex index: Int) -> Model? {
        guard let realm = try? Realm(configuration: realmConfig) else { return nil }
        
        guard index < realm.objects(Model.Object.self).count else { return nil }
        
        let object = realm.objects(Model.Object.self).sortedByPersistOrder[index]
        
        let model = Model(object)
        
        return model
    }
}
