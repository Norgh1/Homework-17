//
//  main.swift
//  Homework-17
//
//  Created by Nor Gh on 7/9/22.
//

import Foundation

class Person {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}
class Chef:Person{
    
    var restaurant:String
    var phoneNumber:Int
    
    init(name:String, restaurant:String,phoneNumber:Int) {
        self.phoneNumber = phoneNumber
        self.restaurant = restaurant
        super.init(name: name)
    }
 
}
class Developer: Person {
    
    var office:String
    var phoneNumbe:Int
    
    init(name:String, office:String, phoneNumbe:Int) {
        self.office = office
        self.phoneNumbe = phoneNumbe
        super.init(name: name)
    }

}


var restaurnatBoss = Chef(name: "Varazdat", restaurant: "Genac Vale", phoneNumber: 37467677676)
var restaurnatOwner = Chef(name: "Armen", restaurant: "Karas", phoneNumber: 37467677676)
var restaurnatFounder = Chef(name: "Aram", restaurant: "Belago", phoneNumber: 374667676)
var restaurnatChef = Chef(name: "Gegham", restaurant: "Harsnaqar", phoneNumber: 3746787878)
var restaurnatMaker = Chef(name: "ddf", restaurant: "Chayxona", phoneNumber: 37492640257)


var developer = Developer(name: "Armen", office: "RenderForest", phoneNumbe: 374667676)
var jsDeveloper = Developer(name: "Varazdat",office: "BetConstruct", phoneNumbe: 374567656)
var devOpsDeveloper = Developer(name: "Varuzhan", office: "Cypress", phoneNumbe: 3743345454)
var pytonDeveloper = Developer(name: "Karlen", office: "Pics Art", phoneNumbe: 374667676)
var iOSDeveloper = Developer(name: "Aramayis", office: "VOLO", phoneNumbe: 374567656)


                        
                    /// Մենակ կլաս
    
var instanceOfClass : [AnyObject] = [restaurnatBoss, restaurnatChef, restaurnatOwner, restaurnatMaker, restaurnatFounder, developer, jsDeveloper, devOpsDeveloper, pytonDeveloper, iOSDeveloper]

///ցիկլով անցնել էկզեմպլյարների վրայով և տպել էկզեմպլյարների name փրոփրտին, աշխատանքի վայրը և հեռախոսահամարը։


for human in instanceOfClass {
    
    if human is Person {
        let developer = human as? Developer
        if let optionalDevelopers = developer {
            print("Developer name is \(optionalDevelopers.name) : Office name is \(optionalDevelopers.office) : Phone number is \(optionalDevelopers.phoneNumbe)")
        }
    }
    
    if human is Person {
        let founder = human as? Chef
        if let optionalBoss = founder {
            print("Foundar name is\(optionalBoss.name) : Restaurant name is \(optionalBoss.restaurant) : Phone number is \(optionalBoss.phoneNumber)")
        }
    }
}

///2. Ստեղծել մասիվ Any որը պետք է պարունակի swift -ի բազային տիպերով ստեղծված արժեքներ Int, Double, Float, String
/// ցիկլով տպել այդ արժեքները։


var baseTypesOfSwift = [Any]()

let tuple : (String, Int, AnyObject) = ("HelloWorld!",1, Person(name: "Person Object!!!"))
let dictionary : [String: Any] = ["Hello GITC": 1, "String": ["Hello Array!"]]

baseTypesOfSwift.append(Int(1))
baseTypesOfSwift.append(String("Hello GITC!"))
baseTypesOfSwift.append(Float(12.2))
baseTypesOfSwift.append(Double(10.1))
baseTypesOfSwift.append(dictionary)
baseTypesOfSwift.append(tuple)



for element in baseTypesOfSwift.enumerated(){
    print(element)
}

///3. Int-ի համար գրել Extension
///- plus(r: Int)
///- minus(r: Int)

extension Int {
    
    func setPlus(number: Int) {
        print(self + number)
    }
    func setMinus(number: Int) {
        print(self - number)
    }
    
}

let randomNumber = 10
randomNumber.setPlus(number: 10)
randomNumber.setMinus(number: 5)

///4. Double համար գրել Extension
////- plus(r: Double)
////- minus(r: Double)

extension Double {
    
    func setDoublePlus(sum: Double) {
        print(self + sum)
    }
    func setDoubleMinus(sum: Double) {
        print(self - sum)
    }
    
}



