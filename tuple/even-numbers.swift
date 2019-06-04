//
//  even-numbers.swift
//  tuple
//
//  Created by Egor on 04.06.2019.
//  Copyright © 2019 homework. All rights reserved.
//

// создаем функцию по заданию №1:
// Написать функцию принимающую на вход вариативный Int и возвращающую кортеж: (количество четных, их среднее арифметическое)
func evenNumbersMedian (inputArray: Array<Int>) -> (evenNumber: Int, medianValue: Float) {
    // определяем локальную переменную: число четных чисел во входном массиве
    var even: Int = 0
    // определяем локальную переменную: среднее арифметическое - число с плавающей запятой Float
    var median: Float = 0.0
    // сумма всех элементов массива
    var sum: Int = 0
    // подсчитываем все четные числа в входном массиве проходя по каждому элементу массива циклом
    // кстати цикл можно задать и вот так:
    // let count = inputArray.count
    // for i in 0..<count {
    // но для меня лаконичнее форма for item in inputArray {}
    for item in inputArray {
        // Оператор целочисленного деления (a % b) показывает, какое количество b помещается внутри a, и возвращает остаток деления a на b.
        // если элемент массива четное, то результат деления по модулю (item % 2) будет = 0
        if (item % 2) == 0 {
            even += 1 // увеличиваем число четных на + 1
        }
        // вычисляем сумму элементов массива = (предидущее значение суммы + item)
        sum += item
    }
    // вычисляем среднее арифметическое = сумма всех элементов поделенное на кол-во всех элементов во входном массиве
    // вычислить кол-во элементов массива можно с помощью метода .count
    median = Float(sum) / Float(inputArray.count)
    return (even, median)
}