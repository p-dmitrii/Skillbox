//
//  persistence.swift
//  work 14 test
//
//  Created by Dmitrii on 06/12/2020.
//

import Foundation
import RealmSwift

class Dog: Object{
    @objc dynamic var name = ""
    
    
}

class Persistence{
    static let share = Persistence()
    
    private let realm = try! Realm()
    
    
    func test(){
        let dog = Dog()
        dog.name = "Marta"
        try! realm.write{
            realm.add(dog)
        }
        
    }
    
    
    
//    private let kUserNameKey = "Persistence.kUserNameKey"
//    var userName: String?{
//        set { UserDefaults.standard.set(newValue, forKey: kUserNameKey) }
//        get { return UserDefaults.standard.string(forKey: kUserNameKey)}
//    }
}
