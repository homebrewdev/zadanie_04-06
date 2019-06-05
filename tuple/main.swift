//
//  main.swift
//  tuple
//
//  Created by Egor on 04.06.2019.
//  Copyright © 2019 homework. All rights reserved.
//

import Foundation

// пример кортежа
let some_tuple = (name: "John", score: 4000)

// доступ к кортежу по имени параметра или по индексу
print(some_tuple.name)
print(some_tuple.1)

// объявляем функцию которая возвращает несколько параметров
func getHighScore() -> (name: String, score: Int) {
    let thisName = "константин"
    let thisScore = 3000
    //метод .capitilized преобразует исходную строку в строку с заглавной буквой
    return (thisName.capitalized, thisScore)
}

print(getHighScore())

// работа по заданию:
// Написать функцию принимающую на вход вариативный Int и возвращающую кортеж: (количество четных, их среднее арифметическое)

// создаем входной массив из целочисленных элементов Int
let myInputArr: [Int] = [2, 7, 35, 22, 64, 78, 43]

// либо можно написать полную форму объявления массива
// let inputArray: Array<Int> = [2, 7, 35, 23, 64, 78, 45]

// используем функцию из задачи по вычислению числа четных и ср арифметического в входном массиве
// evenNumbersMedian определена в файле even-numbers.swift
// и результат работы функции evenNumbersMedian записываем в кортеж let (even, median)
let (even, median) = evenNumbersMedian(numbers: 5, 23, 22, 14, 77, 52, 15)

// размер массива можно определить методом .count
var count: Int = 0
count = myInputArr.count

print("Количество элементов входного массива = \(count)")
print("Число четных элементов в массиве = \(even)")
print("Среднее арифметическое всех элементов массива = \(median)")
