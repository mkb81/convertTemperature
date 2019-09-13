//
//  main.swift
//  TemperatureConvert
//
//  Created by Marc Kevin Bendig on 11.09.19.
//  Copyright © 2019 Marc Kevin Bendig. All rights reserved.
//

import Foundation

/// Prints the main menu
func mainMenu() {
    print("Converting temperatures\n")
    print("-1- Celsius to Fahrenheit")
    print("-2- Celsius to Kelvin")
    print("-3- Fahrenheit to Celius")
    print("-4- Fahrenheit to Kelvin")
    print("-5- Kelvin to Fahrenheit")
    print("-6- Kelvin to Celsius")
    print("-7- Exit\n")
    print("Please chose: ", terminator: "")
}

/// User temperature input
///
/// Reads the user input from keyboard and convert input string to double typ.
/// - Returns:
///   - double: Temperature value
///   - nil:    If convert from string to double fails
func userInput() -> Double? {
    print("Input degree value: ", terminator: "")
    if let inputValue = Double(readLine()!) {
        return inputValue
    } else {
        return nil
    }
}

/// Main function
func main() {
    let convert = Temperature()
    
    while true {
        mainMenu()
        let input = readLine()
        
        guard let degree = userInput() else {
            print("User input was wrong!\n")
            continue
        }
        switch input {
        case "1":
            convert.setCelsius(value: degree)
            convert.celsiusToFahrenheit()
            print("\(String(format: "%.2f",convert.getCelsius())) degree Celsius are \(String(format: "%.2f",convert.getFahrenheit())) degree Fahrenheit\n\n")
        case "2":
            convert.setCelsius(value: degree)
            convert.celsiusToKelvin()
            print("\(String(format: "%.2f",convert.getCelsius())) degree Celsius are \(String(format: "%.2f",convert.getKelvin())) degree Kelvin\n\n")
        case "3":
            convert.setFahrenheit(value: degree)
            convert.FahrenheitToCelsius()
            print("\(String(format: "%.2f",convert.getFahrenheit())) degree Fahrneheit are \(String(format: "%.2f",convert.getCelsius())) degree Celsius\n\n")
        case "4":
            convert.setFahrenheit(value: degree)
            convert.FahrenheitToKelvin()
            print("\(String(format: "%.2f",convert.getFahrenheit())) degree Fahrneheit are \(String(format: "%.2f",convert.getKelvin())) degree Kelvin\n\n")
        case "5":
            convert.setKelvin(value: degree)
            convert.KelvinToFahrenheit()
            print("\(convert.getKelvin()) degree Kelvin are \(convert.getFahrenheit()) degree Fahrnehei\n\n")
        case "6":
            convert.setKelvin(value: degree)
            convert.KelvinToCelsius()
            print("\(convert.getKelvin()) degree Kelvin are \(convert.getCelsius()) degree Celsius\n\n")
        case "7":
            exit(0)
        default:
            print("Wrong input! Please chose 1 to 7\n\n")
        }
    }
}

main()

