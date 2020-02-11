import UIKit
import Foundation

// 1. Создайте функцию принимающую значение String и возвращающую длину данной строки.

func lengthText (str: String) -> Int {
    var count = 0
    for char in str {
        if char == " " { // длина строки без учета пробела
            
        } else {
            count += 1
        }
        
    }
    return count
}

lengthText(str: "Hello! World? I'm junior!")


//2. Имеется строка - “Привет! Это мой первый тест для поиска работы. Juno мне поможет”. Переведите в верхний регистр первую букву каждого слова.

var someText = "Привет! Это мой первый тест для поиска работы. Juno мне поможет"

someText.capitalized


//3. Имеется строка - “Juno - эффективный поиск работы”. Удалите все пробелы в данной строке

var newText = "Juno - эффективный поиск работы"
newText.replacingOccurrences(of: " ", with: "")

//4. Создайте функцию принимающую на вход одно значение - Int и одно значение String. Причем значения могут быть опциональными. Обрежьте каждое слово в принимающем значение String, на длину Int. Если длина входного параметра Int, превышает или меньше длины слова в строке, слово не обрезается.

func trimWord (numbers: Int?, word: String?) {
    let numUnwrap = numbers ?? 0
    let wordUnwrap = word ?? "--"
    if numUnwrap >= 1 && numUnwrap < wordUnwrap.count {
        let newWord = String(wordUnwrap.dropLast(numUnwrap))
        print(newWord)
    } else {
        print(wordUnwrap)
    }
    
}



trimWord(numbers: 5, word: nil)
trimWord(numbers: nil, word: "Viktor")
trimWord(numbers: 3, word: "Safonov")


/* 2. Swift + ООП.
 • Создайте класс Phone. Объявите 2 хранимых свойства в данном классе: modelPhone (String), operationSystem (String)
 
 • Создайте инициализатор класса Phone
 
 • Создайте метод getOperationSystem - возвращающий свойство operationSystem.
 
 • Создайте класс MyPhone, унаследованный от Phone. Объявите свойство name(String), создайте инициализатор класса. Переопределите реализацию унаследованного метода getOperationSystem - необходимо вывести свойство operationSystem + name.
 
 • Создайте класс FriendPhone, унаследованный от Phone. Объявите свойство year(Int), month(Int), day(Int). Для данных свойств установите модификатор доступа, чтобы их можно было получить только внутри класса. Создайте инициализатор класса.
 
 • Создайте по одному экземпляру каждого класса.
 
 • Распечатайте у каждого экземпляра класса свойство modelPhone.
 
 
 */

class Phone {
    var modelPhone: String
    
    var operationSystem: String
    
    init (modelPhone: String, operationSystem: String) {
        self.modelPhone = modelPhone
        self.operationSystem = operationSystem
    }
    
    func getOperationSystem () -> String {
        return "OS is - \(operationSystem) this - "
    }
}


class MyPhone : Phone {
    var name = String()
    
    convenience init (name: String) {
        self.init (modelPhone: String(), operationSystem: String())
        self.name = name
        
    }
    
    override func getOperationSystem() -> String {
        return super.getOperationSystem() + name
    }
}


class FriendPhone : Phone {
    private var year = Int()
    private var month = Int()
    private var day = Int()
    
    convenience init (year: Int, month: Int, day: Int){
        self.init(modelPhone: String(), operationSystem: String())
        self.year = year
        self.month = month
        self.day = day
    }
}
let iPhone5S = Phone(modelPhone: "5S", operationSystem: "IOS9")
let iPhone6S = MyPhone(modelPhone: "6S", operationSystem: "IOS11")
let iPhone7 = FriendPhone(modelPhone: "7", operationSystem: "IOS13")

iPhone6S.name = "Iphone6S"
iPhone6S.getOperationSystem()
iPhone7.modelPhone
iPhone5S.modelPhone
iPhone6S.modelPhone
