//
//  Models.swift
//  HomeLap1
//
//  Created by Nor on 12/01/1400 AP.
//

import Foundation

struct Resturant{
    var name:String
    var id:String
    var priceDelivert:String
    var rating:String
    var desic:String
    var image:String
}

struct Meals {
    var id:String
    var idRest:String
    var name:String
    var details:String
    var rating:String
    var image:String
    var price:String
}


let resturantList = [Resturant(name: "Ithaa", id: "1", priceDelivert: "15", rating: "5", desic: "The world’s first – andonly – under the sea restaurant offers its guests a 270-degree panoramic view of the Maldives’ sea creatures, with a 14 seat capacity.", image: "r1"),
                     Resturant(name: "Parallax Restaurant", id: "3", priceDelivert: "25", rating: "3", desic: "Your luxury snowcat chariot awaits! This high-altitude dining experience takes place slopeside at Mammoth Mountain Inn – 9,600 feet up – overlooking the snowcapped peaks of the Eastern Sierra landscape.", image: "r3"),
                     Resturant(name: "Dinner in the Sky", id: "2", priceDelivert: "20", rating: "4", desic: "Bring your dining experience to new heights at Dinner in the Sky. This one-of-a-kind restaurant, suspended 160+ feet in the air, can accommodate 22 brave diners and three staffers.", image: "r2"),
                     Resturant(name: " Sur un Arbre Perché", id: "3", priceDelivert: "15", rating: "3.5", desic: "Looking for a unique way to unwind? Sur un Arbre Perché gives you just that, as you’re seated in a swing for the entirety of your dining experience.", image: "r4"),]


let mealsList = [
    Meals(id: "1", idRest: "1", name: "Masala dosa, India", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4", image: "r1m1", price: "50")
                 ,Meals(id: "2", idRest: "1", name: "",details:"A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.",rating: "4.3", image: "r1m2", price: "340"),
                 Meals(id: "3", idRest: "1", name: " Som tam, Thailand", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4", image: "r1m3", price: "20"),
                        Meals(id: "4", idRest: "1", name: "Chicken rice, Singapore", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4", image: "r1m4", price: "150"),
    
    Meals(id: "5", idRest: "2", name: "Chicken rice, Singapore", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "2", image: "r2m4", price: "43"),
    Meals(id: "6", idRest: "2", name: "Buttered toast with Marmite, UK", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4.4", image: "r2m3", price: "23"),
    Meals(id: "7", idRest: "2", name: "Stinky tofu, Southeast Asia", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4.6", image: "r3m2", price: "84"),
    Meals(id: "8", idRest: "2", name: "Tacos, Mexico", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4", image: "r2m1", price: "34"),
    
    Meals(id: "9", idRest: "3", name: "Chili crab, Singapore", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "5", image: "r3m2", price: "24"),
    
    Meals(id: "11", idRest: "3", name: "Chicken parm, Australia", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "3.9", image: "r3m1", price: "564"),
    
    Meals(id: "12", idRest: "3", name: "Ketchup, United States", details: "A crispy, rice-batter crepe encases a spicy mix of mashed potato, which is then dipped in coconut chutney, pickles, tomato-and-lentil-based sauces and other condiments. It's a fantastic breakfast food that'll keep you going till lunch, when you'll probably come back for another.", rating: "4.8", image: "r3m1", price: "54"),
    
]

class Orders {
    var id:String!
    var meals:Meals!
    var total:Int!
    var count:Int!
    
    init(id:String,meals:Meals,total:Int,count:Int) {
        self.id = id
        self.meals = meals
        self.total = total
        self.count = count
    }
}

struct Users {
    var name:String
    var phone:String
    var email:String
    var password:String
}


var cartList:Array<Orders> = []
var usersList:Array<Users> = []

var ids:Int = 0

var userLogin :Users!
