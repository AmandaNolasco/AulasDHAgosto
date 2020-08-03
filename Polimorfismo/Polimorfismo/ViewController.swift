//
//  ViewController.swift
//  Polimorfismo
//
//  Created by Adriel Alves on 03/08/20.
//  Copyright © 2020 DH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cat1: Animal = Cat(name: "cat1", color: "black")
        print(cat1.sendSound())
        cat1.eat()
        
        let cow1: Animal = Cow(name: "cow1", color: "white", literMilk: 4)
        print(cow1.sendSound())
        cow1.eat()
        // Do any additional setup after loading the view.
    }
}


class Cat: Animal {

    override init(name: String?, color: String?) {
        super.init(name: name, color: color)
       
    }
    
    override func sendSound() -> String {
        return "Miauuuu"
    }
    
    override func eat() {
        print("O gato está bebendo o leite")
    }
    
   /* func miar() -> String {
        return "Miaaaaaaau"
    }
    
    func eatFish() {
        print("Devorando um peixe")
    } */
}

class Cow: Animal {
    
    var literMilk: Int?
    
    init(name: String?, color: String?, literMilk: Int? ) {
        
        super.init(name: name, color: color)
        self.literMilk = literMilk
    }
    
//    func mugir() -> String {
//        return "Muuuuuuuu"
//    }
//
//    func eatGrass() {
//        print("Devorando um capim")
//    }
    
    override func sendSound() -> String {
        return "Muuuuuuuu"
    }
    
    override func eat() {
        print("Devorando um capim")
    }
}


class Animal {
    
    var name: String?
    var color: String?
    
    init(name: String?, color: String?) {
        
        self.name = name
        self.color = color
    }

    func sendSound() -> String {
        return "O animal está emitindo um som"
    }
    
    func eat() {
        print("O animal esta comendo")
    }
}
