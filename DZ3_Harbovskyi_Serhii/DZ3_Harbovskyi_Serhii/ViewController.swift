//
//  ViewController.swift
//  DZ3_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 1/27/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //    --------------- Collections Easy -----------------:


        //    Задание1
        //    НЕТ ФУНКЦИИ, ВЫПОЛНЯЕМ ЗАДАНИЕ НА МЕСТЕ: Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
        print("Collections Easy: Задание 1 ---------------")
        var simpleArray: [Int] = [1,2,3,4]
        simpleArray.removeAll()
        print("now array is empy \(simpleArray)")
        print("==========================================")




        //    Задание2
        //    НЕТ ФУНКЦИИ, ВЫПОЛНЯЕМ ЗАДАНИЕ НА МЕСТЕ: Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.
        print("Collections Easy: Задание 2 ---------------")
        let array1: [Int] = [1,2,3,4]
        let array2: [Int] = [5,6,7,8]
        let concatenetedArrays = array1 + array2
        print("concatenetedArrays \(concatenetedArrays)")
        print("========================================")





        print("Collections Easy: Задание 3 ---------------")
        let arrayOfStrings: [String] = ["go", "away", "yanki"]
        printElemsFromArrayOfStrings(arrayOfStrings)
        print("========================================")






        print("Collections Easy: Задание 4 ---------------")
        let arrayFromFirstAndLastElemsOfArray = createNewArrayFromFirstAndLastElems(arrayOfStrings)
        print("arrayFromFirstAndLastElemsOfArray is \(arrayFromFirstAndLastElemsOfArray)")
        print("========================================")
        




        //    Задание5
        //    НЕТ ФУНКЦИИ, ВЫПОЛНЯЕМ ЗАДАНИЕ НА МЕСТЕ:
        //    Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
        //    Добавить в данный словарь еще 2 новых элемента.
        print("Collections Easy: Задание 5 ---------------")
        var firstDictinary: [String: Int] = [
                                            "Sasha": 30,
                                            "Serhii": 30,
                                            "Dasha": 26,
                                            ]
        firstDictinary["Katya"] = 30
        firstDictinary["Nastya"] = 24
        print("firstDictinary keys:value pairs are \(firstDictinary)")
        print("========================================")





        print("Collections Easy: Задание 6 ---------------")
        removeElementFromDictionaryByKey(dict: firstDictinary, key: "Nastya")
        print("========================================")






        // ---------------------- String Hard ----------------------:


        print("String Hard: Задание 1 ---------------")
        let myConcatedName = "SerhiiHarbovskyi"
        let mySplitedName = splitMyName(concatedName: myConcatedName)
        print("my splited name is \(mySplitedName)")
        print("========================================")





        print("String Hard: Задание 2 ---------------")
        reverseString("one two three")
        print("========================================")





        print("String Hard: Задание 3 ---------------")
        addComa("1232435435")
        print("========================================")




        // --------------------- Collections Hard -------------------------:
        print("Collections Hard: Задание 1 ---------------")
        let arrayOfStrings2: [String] = ["alpha", "beta", "seta"]
        let key: String = "seta"
        let isContains = checkIsArrayContainString(in: arrayOfStrings2, key: key) ?
                                                                  "YES, it does" :
                                                                  "NO, it does not"
        print("\(isContains) contain that key: \(key) in array \(arrayOfStrings2)")
        print("========================================")





        print("Collections Hard: Задание 2 ---------------")
        printAllKeysOfDict(dict: firstDictinary)
        printAllValuesOfDict(dict: firstDictinary)
        print("========================================")





        print("Collections Hard: Задание 3 ---------------")
        let shuffleArray: [Int] = [3, 6, 1, 2, 2, 6, 13, 77, 36]
        let sortedArray = sortAndDeduplicate(array: shuffleArray)
        print("sorted and deduplicated array \(sortedArray)")
        print("========================================")





        print("Collections Hard: Задание 4 ---------------")
        let dict1: [String: Double] = ["one": 1.0]
        let dict2: [String: Double] = ["two": 2.0]
        let superDict: [String: [String: Double]] = ["raz": dict1,
                                                     "dva" : dict2]
        let someCrap = returnValue(from: superDict, by: "dva")
        print("\(someCrap)")
        print("========================================")
    }

    //    Задание3
    //    Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
    func printElemsFromArrayOfStrings(_ arr: [String]) {
        for element in arr {
            print(element)
        }
    }
    
    //    Задание4
    //    Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром
    func createNewArrayFromFirstAndLastElems(_ arr: [String]) -> [String] {
        if let first = arr.first, let second = arr.last {
            return [first, second]
        }
        return [""]
    }
    
    //    Задание6
    //    Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
    //    Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    //    Например: передаваемый словарь будет такой:
    //    ["Max": 1, "Dasha": 2, "Sergey": 3]
    //    И если передать второй аргумент "Sergey", то метод должен удалить элемент из передаваемого массива с ключом "Sergey".
    func removeElementFromDictionaryByKey(dict: [String: Int], key: String) {
        var tempDict = dict
        tempDict.removeValue(forKey: key)
        print("Dictionary \(dict) without key \(key) looks like that \(tempDict)")
    }

    
    
    
    //    String Hard:
    //    Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку,  где они будут разделены пробелом
    //    input = “TungFam”
    //    output = “Tung Fam"
    //    Сложность задачи в том, что имя может быть любое. Например:
    //    Введя “ArtemPigor” должно вернуть “Artem Pigor”
    //    Введя “AnnaSecure” должно вернуть “Anna Secure”
    //    Введя “BlaCar” должно вернуть “Bla Car”
    //    То есть алгоритм разбивает два слова которые начинаются на большую букву
    func splitMyName(concatedName: String) -> String {
        var capitalizedStringCounter: Int = 0
        var resultName: String = ""
        concatedName.forEach { (chr) in
            let str = String(chr)
            if str.lowercased() != str {
                capitalizedStringCounter += 1
                if capitalizedStringCounter > 1 {
                    resultName += " \(str)"
                } else {
                    resultName += str
                }
            } else {
                resultName += str
            }
        }
        return resultName
    }


    
    //    Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП. не используя reverse (сделать алгоритм самому посимвольно)
    func reverseString(_ str: String) {
        var reversedStr: String = ""
        str.forEach { (char) in
            reversedStr = String(char) + reversedStr
        }
        print(reversedStr)
    }



    //    добавить запятые в строку как их расставляет калькулятор
    //    1234567 -> 1,234,567
    //    12345 -> 12,345
    //    (не использовать встроенный метод для применения формата)
    func addComa(_ str: String) {
        var counter: Int = 0
        var reversedStr: String = ""
        let coma: String = ","
        let strReversed = str.reversed()
        strReversed.forEach { (char) in
            counter += 1
            if counter > 3 {
                reversedStr = reversedStr + coma + String(char)
                counter = 1
            } else {
                reversedStr = reversedStr + String(char)
            }
        }
        let result = reversedStr.reversed()
        print("reversedStr \(String(result))")
    }





    //    Collections Hard:
    //    Задание1
    //    Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк).
    //    например массив
    //    let array = [“one”, “two”]
    //    и если передать в этот метод “one“ то должно вернуть true
    //    а если передать “three” то должно вернуть false
    func checkIsArrayContainString(in array: [String], key: String) -> Bool {
        return array.contains(key)
    }




    //    Задание 2
    //    метод который выведет все ключи словаря
    func printAllKeysOfDict(dict: [AnyHashable:AnyHashable]) {
        for (key, _) in dict {
            print("\(key)")
        }
    }
    //    метод который выведет все значения словаря
    func printAllValuesOfDict(dict: [AnyHashable:AnyHashable]) {
        for (_, value) in dict {
            print("\(value)")
        }
    }



    //    Задание 3
    //    сортировка массива не встроенным методом по возрастанию + удалить дубликаты
    //    Например задается массив [3, 6, 1, 2, 2, 6, 13, 77, 36]
    //    Результат должен быть [1, 2, 3, 6, 13, 36, 77]
    func sortAndDeduplicate(array: [Int]) -> [Int] {
        let deduplicatedArray = Array(Set(array))
        // мне лень писать свою сортировку руками, извини)
        return deduplicatedArray.sorted(by: { (a, b) -> Bool in
            a < b
        })
    }



    //    Задание4
    //    Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными. Их мы будем передавать в метод, который напишем.
    //    Создать метод который будет принимать как параметры: словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри элемента ключ которого был передан как аргумент.
    func returnValue(from stuff: [String: [String: Double]], by key: String) -> [String: Double] {
        return stuff[key] ?? ["": 0.0]
    }
}



