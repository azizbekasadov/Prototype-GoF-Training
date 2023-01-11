//
//  Person.swift
//  4. Prototype
//
//  Created by Azizbek Asadov on 11/01/23.
//

import Foundation

public protocol Copying {
    init(_ prototype: Self)
}

extension Copying {
    public func copy() -> Self {
        return type(of: self).init(self)
    }
}

class Person: Copying {
    var name: String = ""
    var age: Int = 0
    
//    // 2. Refactoring
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init() {}
    
    required convenience init(_ prototype: Person) {
        self.init(name: prototype.name, age: prototype.age)
    }
    
    // Deep Copying of the instance
    func clone() -> Person {
        Person(name: name, age: age)
    }
}

// Refactoring with NSCopying

