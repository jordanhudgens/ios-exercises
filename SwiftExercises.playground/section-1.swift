import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    let newCheese = "My favorite cheese is \(cheese)"
    return newCheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
println("\(fullSentence)")

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray + [5]


var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"
numberDictionary


/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    i
}


// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..11 {
    i
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var returnedArray: String[] = []
    
    for i in characters {
        returnedArray += i["favorite drink"]! // Ricky, is there a better way to do this?
    }
    
    return returnedArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func stringReturner(givenArray: Array<String>) -> String
{
    var returnedString = String()
    
    for i in givenArray {
        returnedString += i + ";"
    }
    return returnedString
}

let expectedOutput = "milk;eggs;bread;challah"
let actualOutput = stringReturner(strings) // Ricky, not perfect since it includes a ';' at the end, is there no built in way to do this?

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
var sortedArray = sort(cerealArray, <)
