//
//  ViewController.swift
//  4. Prototype
//
//  Created by Azizbek Asadov on 11/01/23.
//

import UIKit

final class ViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        test()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        test()
    }
    
    private func test() {
        let person1 = Person()
        person1.name = "Alex"
        print(person1.name)
        
        let person2 = person1.clone()
        person2.name = "Jack"
        print(person2.name)
        
        let person3 = person1.copy()
        person3.name = "Simon"
        print(person3.name)
        
        print(person1 === person2)
    }
}
