import Fluent
import Foundation

final class Galaxy: FluentModel {
    var storage: FluentStorage
    
    var properties: [FluentProperty] {
        return [id, name]
    }
    
    var entity: String {
        return "galaxies"
    }
    
    var id: Field<Int> {
        return self.field("id")
    }
    
    var name: Field<String> {
        return self.field("name")
    }
    
    var planets: Children<Planet> {
        return self.children("galaxyID")
    }
    
    init(storage: FluentStorage) {
        self.storage = storage
    }
}
