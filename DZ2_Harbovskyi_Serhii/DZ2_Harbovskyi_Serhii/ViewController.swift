//
//  ViewController.swift
//  DZ2_Harbovskyi_Serhii
//
//  Created by Harbovskyi Serhii on 1/23/18.
//  Copyright © 2018 Harbovskyi Serhii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        // Блок 1 --------------------------------- //
        print("Блок 1, Задание 1")
        helloMisha()
        print("===========================")

        print("Блок 1, Задание 2")
        returnAge(30)
        print("===========================")

        print("Блок 1, Задание 3")
        let resultReturnFiveFn = returnFive()
        print("returnFive \(resultReturnFiveFn)")
        print("===========================")

        print("Блок 1, Задание 4")
        ddosHelloPrint(times: 4)
        print("===========================")

        print("Блок 1, Задание 5")
        let resulttrimNumber = trimNumber(number1: 7, number2: 23)
        print("Блок 1, Задание 5: result of trimNumber(number1: 7, number2: 23)\(resulttrimNumber)")
        print("===========================")


        // Блок 2 --------------------------------- //
        print("Блок 2, Задание 1")
        findBiggestInteger(5, 5)
        print("===========================")

        print("Блок 2, Задание 2")
        coubNumber(number: 3)
        print("===========================")

        print("Блок 2, Задание 3")
        printNumbers(times: 4)
        print("===========================")

        print("Блок 2, Задание 4")
        findDividers(of: 7)
        print("===========================")

        print("Блок 2, Задание 5")
        evenNumberBigger(than: 19)
        print("===========================")

        print("Блок 2, Задание 6")
        isExcelent(number: 496)
        print("===========================")

        print("Блок 2, Задание 7")
        isSqr(number: 16)
        print("===========================")

        // Блок 3 --------------------------------- //
        print("Блок 3, Задание 1")
        printAllEventInt(between: 12, and: 3)
        print("===========================")

        print("Блок 3, Задание 2")
        let possibleProfit = manhethenIsland(price: 24, year: 1826, interest: 6)
        print("Possible profit of interests could be \(possibleProfit)")
        print("===========================")

        print("Блок 3, Задание 3")
        pureStudent(stipend: 100, losts: 105)
        print("===========================")

    }

    //        Блок 1
    //        Задание 1
    //        Создать метод при вызове которого в консоль будет выводиться фраза “Hello my name is Misha”. Метод ничего не принимает как параметры и ничего не возвращает
    func helloMisha() {
        print("Hello my name is Misha")
    }

    //        Задание 2
    //        Создать метод в который будет передаваться ваш возраст как целое число. Метод не возвращает ничего. Метод выводит в консоль фразу “Hello world, my age is 33” (33 - просто пример)
    func returnAge(_ age: Int) {
        print("Hello world, my age is \(age)")
    }
    //        Задание 3
    //        Создать метод который называется returnFive(), который не будет иметь параметров, но должен просто напросто возвращать целое число 5 и все.
    func returnFive() -> Int {
        return 5
    }
    //        Задание 4
    //        Создать метод, который будет принимать как аргумент целое число и будет выводить в консоль приветствие столько раз сколько передано в аргументе.
    func ddosHelloPrint(times: Int) {
        for i in 0..<times {
            print("Hello \(i) from \(times)")
        }
    }

    //        Задание 5
    //        Создать метод в который передается 2 параметра (оба целые числа). Метод должен возвращать одно целое число которое является остатком от деления одного на другое (какое на какое не важно). Остаток от деления это %
    //        Возвращаемое число нужно вывести в консоль.
    //        Дополнение к задаче 5
    //        Улучшить предыдущий метод так чтобы внутри функции делили с остатком не просто любое первое на второе число, а большее число делилось с остатком на меньшее.
    func trimNumber(number1: Int, number2: Int) -> Int {
        let result: Int
        if number1 >= number2 {
            result = number1 % number2
        } else {
            result = number2 % number1
        }
        return result
    }
    //
    //        Блок 2
    //        Задача 1. Создать метод который имеет 2 параметра (целые числа) и выводит сообщение в консоль со значением большего из них, или то что они равны. Данный метод ничего не возвращает.
    func findBiggestInteger(_ a: Int, _ b: Int) {
        if a > b {
            print("The biggest number is \(a)")
        } else if b > a {
            print("The biggest number is \(b)")
        } else {
            print("Numbers are equal, \(a)==\(b)")
        }
    }
    //        Задача 2.  Создать метод который получает 1 аргумент и возвращает куб введенного числа. Возвращаемое число вывести в консоль.
    func coubNumber(number: Double) {
        let result = number * number * number;
        print("Coub of number \(number) is \(result)")
    }
    //        Задача 3. Создать метод с 1 параметром. Данный метод ничего не возвращает. Метод выводит в консоль все числа от 0 до заданного числа в параметре и в обратном порядке до 0.
    //        Примечание: `reversed` использовать нельзя :)
    func printNumbers(times: Int) {
        for i in 0...times {
            print(i)
        }

        for i in 0...times {
            print(times - i)
        }
    }
    //        Задача 4. Создать метод с 1 параметром. Данный метод ничего не возвращает. Метод подсчитывает число (количество) делителей числа (полученного как аргумент метода). Вывести в консоль число (количество) делителей, а также и вывести эти сам делители.
    //
    //        Делители это: больше тут.
    func findDividers(of number: Int) {
        var dividersList = [Int]()
        for i in 1...number {
            if number % i == 0 {
                dividersList.append(i)
            }
        }
        print("All dividers of number \(number) are \(dividersList). \n Number of dividers is \(dividersList.count)")
    }
    //        Задача 5.  Создать метод в который будет передаваться целое число. Данный метод ничего не возвращает. Метод выводит в  консоль минимальное четное число, большее числа переданного в параметр.
    //        Примеры:
    //        в параметр передали “19” >> вывод в консоль “20”
    //        в параметр передали “20” >> вывод в консоль “22”
    func evenNumberBigger(than number: Int) {
        let result: Int
        if number % 2 == 0 {
            result = number + 2
        } else {
            result = number + 1
        }
        print("next even integer after \(number) is \(result)")
    }
    //        Задача 6
    //        Создать метод с 1 параметром. Данный метод ничего не возвращает.
    //        Проверить, является ли заданное число (число переданное как аргумент) совершенным и найти их делители.
    //        Примеры совершенных чисел и их делителей.
    //        •1-е совершенное число — 6  имеет следующие собственные делители: 1, 2, 3; их сумма равна 6.
    //        •2-е совершенное число — 28  имеет следующие собственные делители: 1, 2, 4, 7, 14; их сумма равна 28.
    //        •3-е совершенное число — 496 имеет следующие собственные делители: 1, 2, 4, 8, 16, 31, 62, 124, 248; их сумма равна 496.
    //        •4-е совершенное число — 8128 имеет следующие собственные делители: 1, 2, 4, 8, 16, 32, 64, 127, 254, 508, 1016, 2032, 4064; их сумма равна 8128.
    func isExcelent(number: Int) {
        var sum: Int = 0
        var deliteli = [Int]()
        for i in 1...number {
            if number % i == 0 {
                sum += i
                deliteli.append(i)
            }
            if sum == number {
                print("YES. Number \(number) is excelent. It's deliteli are \(deliteli)")
                break
            } else if sum > number {
                print("Number is NOT excelent")
            }
        }
    }
    //        Результат: вывести строку “YES” если число является совершенным и “NO” если нет.
    //        Дальше вывести все делители, если это было совершенное число.
    //
    //        Примечание: совершенные числа не останавливаются на 8128. То есть их бесконечно… нужно написать чтобы метод был универсальный а не работать только для этих 4 чисел. Эти 4 числа просто пример для проверки.
    //
    //        Задача 7. Создать метод в который будет передаваться целое положительное число.  Данный метод ничего не возвращает. Если число является целой степенью двойки, метод выводит в  консоль  "yes", иначе  "no".
    //        Пример: если ввести такие числа как: 2, 4, 8, 16, 32, 64 и тд то выведет “yes”
    //        Если ввести любые другие числа (которые не являются числом 2 в целой степени), то будет “no”
    func isSqr(number: Int) {
        let result = sqrt(Double(number))
        if Int(result) % 2 == 0 {
            print("YES")
        } else {
            print("NO")
        }
    }
    //        -- Не забываем о форме оформления ДЗ
    //
    //        Блок 3
    //        Задание1. Создать метод в который будет передаваться два целых числа min, max.  Данный метод ничего не возвращает.Метод выводит в  консоль в столбик чётные числа от min до max включительно.
    //        Пример
    //        0 10
    //        Пример вывода в консоль
    //        0
    //        2
    //        4
    //        6
    //        8
    //        10
    func printAllEventInt(between numberA: Int, and numberB: Int) {
        var evenNumbers = [Int]()
        let min, max :Int
        if numberA > numberB {
            min = numberB
            max = numberA
        } else {
            min = numberA
            max = numberB
        }
        for i in min...max {
            if i % 2 == 0 {
                evenNumbers.append(i)
            }
        }
        print("\(evenNumbers)")
    }
    //        Примечание:
    //        Каждая следующая задача (задачи 2-4) это отдельные методы. все вводные данные в задачах должны быть параметрами функции. То есть например в Задаче 2 параметрами функции должны быть цена, год и годовой процент.
    //        Примечание 2:
    //        в задачах 2-4 используем сложные проценты, а не простые.
    //        Задание 2  Остров Манхэттен был приобретен поселенцами за $24 в 1826 г. Каково было бы в настоящее время состояние их счета, если бы эти 24 доллара были помещены тогда в банк под 6% годового дохода?
    func manhethenIsland(price: Double, year: Int, interest: Double) -> Double {
        return price * pow((1 + interest / 100), Double(2018 - year))
    }
    //        Задание 3 Ежемесячная стипендия студента составляет А гривен, а расходы на проживание превышают ее и составляют B грн. в месяц. Рост цен ежемесячно увеличивает расходы на 3% Определить, какую нужно иметь сумму денег, чтобы прожить учебный год (10 месяцев), используя только эти деньги и стипендию.
    func pureStudent(stipend: Double, losts: Double) -> Double {
        if stipend > losts {
            print("Student doesn't need extra money")
            return 0.0
        } else {
            var extraMoney: Double = 0.0
            var lostThisMonth: Double = losts
            for _ in 0..<10 {
                lostThisMonth *= 1.03
                extraMoney += (lostThisMonth - stipend)
            }
            print("Student needs \(extraMoney) of extra money")
            return extraMoney
        }
    }
    
}

