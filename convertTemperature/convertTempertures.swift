//
//  convertTempertures.swift
//  convertTemperature
//
//  Created by Marc Kevin Bendig on 11.09.19.
//  Copyright © 2019 Marc Kevin Bendig. All rights reserved.
//

import Foundation

public class Temperature {
    // MARK: - Variables
    private var celsius: Double
    private var fahrenheit: Double
    private var kelvin: Double
    private let absoluteZeroCelsius = -273.15
    private let absoluteZeroFahrenhet = -459.67
    private let absoluteZeroKelvin = 0.0
    
    init() {
        self.celsius = 0.0
        self.fahrenheit = 0.0
        self.kelvin = 0.0
    }
    
    // MARK: - Setter
    
    /// Set degree Celsius
    ///
    /// If value is smaller as absolute zero in Celsius (-273.15) then the value will set to *0.0*
    ///
    ///     Example call:
    ///     convert.setCelsius(value: 25.4)
    /// - Parameter value: Temperature value in degree Celsius
    public func setCelsius(value: Double) {
        if value < absoluteZeroCelsius {
            print("Wrong Celsius value!")
        } else {
            self.celsius = value
        }
    }
    
    /// Set degree Fahrenheit
    ///
    /// If value is smaller as absolute zero in Fahrenheit (-459.67) then the value will set to *0.0*
    /// - Parameter value: Temperature value in degree Fahrenheit
    public func setFahrenheit(value: Double) {
        if value < absoluteZeroFahrenhet {
            print("Wrong Fahrenheit value!")
        } else {
            self.fahrenheit = value
        }
    }
    
    /// Set degree Kelvin
    ///
    /// If value is smaller as absolute zero in Kelvin (0.0) then the value will set to *0.0*
    /// - Parameter value: Temperature value in Kelvin
    public func setKelvin(value: Double) {
        if value < absoluteZeroKelvin {
            print("Wrong Kelvin value!")
        } else {
            self.kelvin = value
        }
    }
    
    // MARK: - Getter
    
    /// Get degree Celsius
    public func getCelsius() -> Double {
        return self.celsius
    }
    
    /// Get degree Fahrenheit
    public func getFahrenheit() -> Double {
        return self.fahrenheit
    }
    
    /// Get degree Kelvin
    public func getKelvin() -> Double {
        return self.kelvin
    }
    
    // MARK: - Methods
    
    /// Convert from degree Celsius to degree Fahrenheit
    public func celsiusToFahrenheit() {
        self.fahrenheit = self.celsius * 1.8 + 32
    }
    
    /// Convert from degree Celsius to degree Kelvin
    public func celsiusToKelvin() {
        self.kelvin = (self.celsius + (absoluteZeroCelsius * -1))
    }
    
    /// Convert from degree Fahrenheit to degree Celsius
    public func FahrenheitToCelsius() {
        self.celsius = (self.fahrenheit - 32) / 1.8
    }
    
    /// Convert from degree Fahrenheit to degree Kelvin
    public func FahrenheitToKelvin() {
        self.kelvin = self.fahrenheit + (absoluteZeroFahrenhet * -1) / 1.8
    }
    
    /// Convert from degree Kelvin to degree Celsius
    public func KelvinToCelsius() {
        self.celsius = self.kelvin - (absoluteZeroCelsius * -1)
    }
    
    /// Convert from degree Kelvin to degree Fahrenheit
    public func KelvinToFahrenheit() {
        self.fahrenheit = self.kelvin * 1.8 - (absoluteZeroFahrenhet * -1)
    }
}

