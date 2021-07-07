//
//  ViewController.swift
//  Collection.Function
//
//  Created by Harbros47 on 15.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        printNumbers()
        print("\(printSumNumbers(arrayNumbers: arrayNumbers))")
        print("\(getArithmeticMeanNumbers(arrayNumbers: arrayNumbers))")
        informationYear()
    }
    private var arrayNumbers = [
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50),
        Int.random(in: 1...50)
    ]
    
    private var month: [String : (days: Int, number: Int)] {
        ["Январь": (days: 31, number: 1), "Февраль": (days: 28, number: 2),
         "Март": (days: 31, number: 3), "Апрель": (days: 30, number: 4),
         "Май": (days: 31, number: 5), "Июнь": (days: 30, number: 6),
         "Июль": (days: 31, number: 7), "Август": (days: 31, number: 8),
         "Сентябрь": (days: 30, number: 9), "Октябрь": (days: 31, number: 10),
         "Ноябрь": (days: 30, number: 11), "Декабрь": (days: 31, number: 12) ]
    }
    
    private func printNumbers() {
        for number in arrayNumbers {
            print(number)
        }
    }
    
    private func filterNumbersMore30(arrayNumbers: [Int]) {
        _ = arrayNumbers.filter { $0 > 30 }
    }
    
    private func transformationNumbers(arrayNumbers: [Int]) {
        _ = arrayNumbers.map { str in String(str) }
    }
    
    private func getSumNumbers(arrayNumbers: [Int]) -> Int {
        arrayNumbers.reduce(0, +)
    }
    
    private func printSumNumbers(arrayNumbers: [Int]) -> String {
        let sumNumbers = getSumNumbers(arrayNumbers: arrayNumbers)
        return "Сумма массива с числами \(sumNumbers)"
    }
    
    private func getArithmeticMeanNumbers(arrayNumbers: [Int]) -> String {
        let arithmeticMeanNumbers = getSumNumbers(arrayNumbers: arrayNumbers) / arrayNumbers.count
        return "Средне арифметическое \(arithmeticMeanNumbers)"
    }
    
    private func informationYear() {
        var numberOfDaysInYear = 0
        for year in month {
            print("Порядковый номер: \(year.value.number) название месяца: \(year.key) количество дней в месяце: \(year.value.days) ")
            numberOfDaysInYear += year.value.days
        }
        print("Общее количество дней в году \(numberOfDaysInYear)")
    }
    
}
