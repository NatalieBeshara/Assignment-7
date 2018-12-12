// Created on: 11-Dec-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program tells you the forecast
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let dayTextField = UITextField()
    let convertButton = UIButton ()
    let dayLabel = UILabel()
    let highestTempLabel = UILabel()
    let lowestTempLabel = UILabel()
    let windLabel = UILabel()
    let cloudLabel = UILabel()
    let weatherLabel = UILabel()
    let dayLabel2 = UILabel()
    let highestTempLabel2 = UILabel()
    let lowestTempLabel2 = UILabel()
    let windLabel2 = UILabel()
    let cloudLabel2 = UILabel()
    let weatherLabel2 = UILabel()
    let dayLabel3 = UILabel()
    let highestTempLabel3 = UILabel()
    let lowestTempLabel3 = UILabel()
    let windLabel3 = UILabel()
    let cloudLabel3 = UILabel()
    let weatherLabel3 = UILabel()
    let dayLabel4 = UILabel()
    let highestTempLabel4 = UILabel()
    let lowestTempLabel4 = UILabel()
    let windLabel4 = UILabel()
    let cloudLabel4 = UILabel()
    let weatherLabel4 = UILabel()
    let dayLabel5 = UILabel()
    let highestTempLabel5 = UILabel()
    let lowestTempLabel5 = UILabel()
    let windLabel5 = UILabel()
    let cloudLabel5 = UILabel()
    let weatherLabel5 = UILabel()
    
    func getHigh(dayNumberEntered : Int) -> Double{
        //  
        var dayHigh : Double = 0
        
        if dayNumberEntered == 1 {
            dayHigh = -7
        }
        else if dayNumberEntered == 2{
            dayHigh = -7.4
        }
        else if dayNumberEntered == 3{
            dayHigh = -3.4
        }
        else if dayNumberEntered == 4{
            dayHigh = -9.8
        }
        else if dayNumberEntered == 5{
            dayHigh = -1.9
        }
        
        return dayHigh
    }
    
    func getLow(dayNumberEntered : Int) -> Double{
        //  
        var dayLow : Double = 0
        
        if dayNumberEntered == 1 {
            dayLow = -10.3
        }
        else if dayNumberEntered == 2{
            dayLow = -7.4
        }
        else if dayNumberEntered == 3{
            dayLow = -3.6
        }
        else if dayNumberEntered == 4{
            dayLow = -11.8
        }
        else if dayNumberEntered == 5{
            dayLow = -4.5
        }
        
        return dayLow
    }
    func getWind(dayNumberEntered : Int) -> Double{
        //  
        var daysWind : Double = 0
        
        if dayNumberEntered == 1 {
            daysWind = 1.66
        }
        else if dayNumberEntered == 2{
            daysWind = 1.47
        }
        else if dayNumberEntered == 3{
            daysWind = 1.76
        }
        else if dayNumberEntered == 4{
            daysWind = 2.39
        }
        else if dayNumberEntered == 5{
            daysWind = 2.28
        }
        
        return daysWind
    }
    func getCloud(dayNumberEntered : Int) -> Double{
        //  
        var daysCloud : Double = 0
        
        if dayNumberEntered == 1 {
            daysCloud = 0
        }
        else if dayNumberEntered == 2{
            daysCloud = 88
        }
        else if dayNumberEntered == 3{
            daysCloud = 92
        }
        else if dayNumberEntered == 4{
            daysCloud = 0
        }
        else if dayNumberEntered == 5{
            daysCloud = 3
        }
        
        return daysCloud
    }
        
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Please enter whether you want to know the forecast for today, tomorrow or the 5 day forecast (Today/ Tomorrow / 5 Day"
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        dayTextField.borderStyle = UITextField.BorderStyle.roundedRect
        dayTextField.placeholder = "Enter which day"
        view.addSubview(dayTextField)
        dayTextField.translatesAutoresizingMaskIntoConstraints = false
        dayTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        dayTextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        
        convertButton.setTitle("Forecast", for: UIControl.State.normal)
        convertButton.setTitleColor(.blue, for: .normal)
        convertButton.addTarget(self, action: #selector(forecastButton), for: .touchUpInside)
        view.addSubview(convertButton)
        convertButton.translatesAutoresizingMaskIntoConstraints = false
        convertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        convertButton.topAnchor.constraint(equalTo: dayTextField.bottomAnchor, constant: 20).isActive = true
        
        dayLabel.text = nil
        dayLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(dayLabel)
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        dayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        dayLabel.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
        highestTempLabel.text = nil
        highestTempLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(highestTempLabel)
        highestTempLabel.translatesAutoresizingMaskIntoConstraints = false
        highestTempLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        highestTempLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 20).isActive = true
        
        lowestTempLabel.text = nil
        lowestTempLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(lowestTempLabel)
        lowestTempLabel.translatesAutoresizingMaskIntoConstraints = false
        lowestTempLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        lowestTempLabel.topAnchor.constraint(equalTo: highestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        windLabel.text = nil
        windLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(windLabel)
        windLabel.translatesAutoresizingMaskIntoConstraints = false
        windLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        windLabel.topAnchor.constraint(equalTo: lowestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        cloudLabel.text = nil
        cloudLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(cloudLabel)
        cloudLabel.translatesAutoresizingMaskIntoConstraints = false
        cloudLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        cloudLabel.topAnchor.constraint(equalTo: windLabel.bottomAnchor, constant: 20).isActive = true
        
        weatherLabel.text = nil
        weatherLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(weatherLabel)
        weatherLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        weatherLabel.topAnchor.constraint(equalTo: cloudLabel.bottomAnchor, constant: 20).isActive = true
        
        dayLabel2.text = nil
        dayLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(dayLabel2)
        dayLabel2.translatesAutoresizingMaskIntoConstraints = false
        dayLabel2.leadingAnchor.constraint(equalTo: dayLabel.leadingAnchor, constant: 200).isActive = true
        dayLabel2.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
        highestTempLabel2.text = nil
        highestTempLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(highestTempLabel2)
        highestTempLabel2.translatesAutoresizingMaskIntoConstraints = false
        highestTempLabel2.leadingAnchor.constraint(equalTo: highestTempLabel.leadingAnchor, constant: 200).isActive = true
        highestTempLabel2.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 20).isActive = true
        
        lowestTempLabel2.text = nil
        lowestTempLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(lowestTempLabel2)
        lowestTempLabel2.translatesAutoresizingMaskIntoConstraints = false
        lowestTempLabel2.leadingAnchor.constraint(equalTo: lowestTempLabel.leadingAnchor, constant: 200).isActive = true
        lowestTempLabel2.topAnchor.constraint(equalTo: highestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        windLabel2.text = nil
        windLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(windLabel2)
        windLabel2.translatesAutoresizingMaskIntoConstraints = false
        windLabel2.leadingAnchor.constraint(equalTo: windLabel.leadingAnchor, constant: 200).isActive = true
        windLabel2.topAnchor.constraint(equalTo: lowestTempLabel2.bottomAnchor, constant: 20).isActive = true
        
        cloudLabel2.text = nil
        cloudLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(cloudLabel2)
        cloudLabel2.translatesAutoresizingMaskIntoConstraints = false
        cloudLabel2.leadingAnchor.constraint(equalTo: cloudLabel.leadingAnchor, constant: 200).isActive = true
        cloudLabel2.topAnchor.constraint(equalTo: windLabel.bottomAnchor, constant: 20).isActive = true
        
        weatherLabel2.text = nil
        weatherLabel2.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(weatherLabel2)
        weatherLabel2.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel2.leadingAnchor.constraint(equalTo: weatherLabel.leadingAnchor, constant: 200).isActive = true
        weatherLabel2.topAnchor.constraint(equalTo: cloudLabel.bottomAnchor, constant: 20).isActive = true
        
        dayLabel3.text = nil
        dayLabel3.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(dayLabel3)
        dayLabel3.translatesAutoresizingMaskIntoConstraints = false
        dayLabel3.leadingAnchor.constraint(equalTo: dayLabel2.leadingAnchor, constant: 200).isActive = true
        dayLabel3.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
        highestTempLabel3.text = nil
        highestTempLabel3.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(highestTempLabel3)
        highestTempLabel3.translatesAutoresizingMaskIntoConstraints = false
        highestTempLabel3.leadingAnchor.constraint(equalTo: highestTempLabel2.leadingAnchor, constant: 200).isActive = true
        highestTempLabel3.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 20).isActive = true
        
        lowestTempLabel3.text = nil
        lowestTempLabel3.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(lowestTempLabel3)
        lowestTempLabel3.translatesAutoresizingMaskIntoConstraints = false
        lowestTempLabel3.leadingAnchor.constraint(equalTo: lowestTempLabel2.leadingAnchor, constant: 200).isActive = true
        lowestTempLabel3.topAnchor.constraint(equalTo: highestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        windLabel3.text = nil
        windLabel3.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(windLabel3)
        windLabel3.translatesAutoresizingMaskIntoConstraints = false
        windLabel3.leadingAnchor.constraint(equalTo: windLabel2.leadingAnchor, constant: 200).isActive = true
        windLabel3.topAnchor.constraint(equalTo: lowestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        cloudLabel3.text = nil
        cloudLabel3.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(cloudLabel3)
        cloudLabel3.translatesAutoresizingMaskIntoConstraints = false
        cloudLabel3.leadingAnchor.constraint(equalTo: cloudLabel2.leadingAnchor, constant: 200).isActive = true
        cloudLabel3.topAnchor.constraint(equalTo: windLabel.bottomAnchor, constant: 20).isActive = true
        
        weatherLabel3.text = nil
        weatherLabel3.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(weatherLabel3)
        weatherLabel3.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel3.leadingAnchor.constraint(equalTo: weatherLabel2.leadingAnchor, constant: 200).isActive = true
        weatherLabel3.topAnchor.constraint(equalTo: cloudLabel.bottomAnchor, constant: 20).isActive = true
        
        dayLabel4.text = nil
        dayLabel4.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(dayLabel4)
        dayLabel4.translatesAutoresizingMaskIntoConstraints = false
        dayLabel4.leadingAnchor.constraint(equalTo: dayLabel3.leadingAnchor, constant: 200).isActive = true
        dayLabel4.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
        highestTempLabel4.text = nil
        highestTempLabel4.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(highestTempLabel4)
        highestTempLabel4.translatesAutoresizingMaskIntoConstraints = false
        highestTempLabel4.leadingAnchor.constraint(equalTo: highestTempLabel3.leadingAnchor, constant: 200).isActive = true
        highestTempLabel4.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 20).isActive = true
        
        lowestTempLabel4.text = nil
        lowestTempLabel4.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(lowestTempLabel4)
        lowestTempLabel4.translatesAutoresizingMaskIntoConstraints = false
        lowestTempLabel4.leadingAnchor.constraint(equalTo: lowestTempLabel3.leadingAnchor, constant: 200).isActive = true
        lowestTempLabel4.topAnchor.constraint(equalTo: highestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        windLabel4.text = nil
        windLabel4.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(windLabel4)
        windLabel4.translatesAutoresizingMaskIntoConstraints = false
        windLabel4.leadingAnchor.constraint(equalTo: windLabel3.leadingAnchor, constant: 200).isActive = true
        windLabel4.topAnchor.constraint(equalTo: lowestTempLabel2.bottomAnchor, constant: 20).isActive = true
        
        cloudLabel4.text = nil
        cloudLabel4.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(cloudLabel4)
        cloudLabel4.translatesAutoresizingMaskIntoConstraints = false
        cloudLabel4.leadingAnchor.constraint(equalTo: cloudLabel3.leadingAnchor, constant: 200).isActive = true
        cloudLabel4.topAnchor.constraint(equalTo: windLabel.bottomAnchor, constant: 20).isActive = true
        
        weatherLabel4.text = nil
        weatherLabel4.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(weatherLabel4)
        weatherLabel4.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel4.leadingAnchor.constraint(equalTo: weatherLabel3.leadingAnchor, constant: 200).isActive = true
        weatherLabel4.topAnchor.constraint(equalTo: cloudLabel.bottomAnchor, constant: 20).isActive = true
        
        dayLabel5.text = nil
        dayLabel5.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(dayLabel5)
        dayLabel5.translatesAutoresizingMaskIntoConstraints = false
        dayLabel5.leadingAnchor.constraint(equalTo: dayLabel4.leadingAnchor, constant: 200).isActive = true
        dayLabel5.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
        highestTempLabel5.text = nil
        highestTempLabel5.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(highestTempLabel5)
        highestTempLabel5.translatesAutoresizingMaskIntoConstraints = false
        highestTempLabel5.leadingAnchor.constraint(equalTo: highestTempLabel4.leadingAnchor, constant: 200).isActive = true
        highestTempLabel5.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 20).isActive = true
        
        lowestTempLabel5.text = nil
        lowestTempLabel5.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(lowestTempLabel5)
        lowestTempLabel5.translatesAutoresizingMaskIntoConstraints = false
        lowestTempLabel5.leadingAnchor.constraint(equalTo: lowestTempLabel4.leadingAnchor, constant: 200).isActive = true
        lowestTempLabel5.topAnchor.constraint(equalTo: highestTempLabel.bottomAnchor, constant: 20).isActive = true
        
        windLabel5.text = nil
        windLabel5.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(windLabel5)
        windLabel5.translatesAutoresizingMaskIntoConstraints = false
        windLabel5.leadingAnchor.constraint(equalTo: windLabel4.leadingAnchor, constant: 200).isActive = true
        windLabel5.topAnchor.constraint(equalTo: lowestTempLabel2.bottomAnchor, constant: 20).isActive = true
        
        cloudLabel5.text = nil
        cloudLabel5.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(cloudLabel5)
        cloudLabel5.translatesAutoresizingMaskIntoConstraints = false
        cloudLabel5.leadingAnchor.constraint(equalTo: cloudLabel4.leadingAnchor, constant: 200).isActive = true
        cloudLabel5.topAnchor.constraint(equalTo: windLabel.bottomAnchor, constant: 20).isActive = true
        
        weatherLabel5.text = nil
        weatherLabel5.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(weatherLabel5)
        weatherLabel5.translatesAutoresizingMaskIntoConstraints = false
        weatherLabel5.leadingAnchor.constraint(equalTo: weatherLabel4.leadingAnchor, constant: 200).isActive = true
        weatherLabel5.topAnchor.constraint(equalTo: cloudLabel.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func forecastButton() {
        //  
        
        var dayNumberArray : [Int: String] = [1 : "Sky is clear", 2 : "Light snow", 3 : "Snow", 4 : "Light snow", 5 : "Light snow"]
        
        var day : String = String(dayTextField.text!)
        
        var dayNumber = 0
        
        if day == "Today"{
            dayNumber = 1
            
            var highestTemp = getHigh(dayNumberEntered : dayNumber)
            var lowestTemp = getLow(dayNumberEntered : dayNumber)
            var wind = getWind(dayNumberEntered : dayNumber)
            var cloud = getCloud(dayNumberEntered : dayNumber)
            
            dayLabel.text = "Today (Day: \(dayNumber))"
            highestTempLabel.text = "High of: \(highestTemp) °C"
            lowestTempLabel.text = "Low of: \(lowestTemp) °C"
            windLabel.text = "Wind: \(wind) m/s"
            cloudLabel.text = "Cloud: \(cloud) %"
            weatherLabel.text = dayNumberArray[dayNumber]
        }
        else if day == "Tomorrow" {
            dayNumber = 2
            
            var highestTemp = getHigh(dayNumberEntered : dayNumber)
            var lowestTemp = getLow(dayNumberEntered : dayNumber)
            var wind = getWind(dayNumberEntered : dayNumber)
            var cloud = getCloud(dayNumberEntered : dayNumber)
            
            dayLabel.text = "Tomorrow (Day: \(dayNumber))"
            highestTempLabel.text = "High of: \(highestTemp) °C"
            lowestTempLabel.text = "Low of: \(lowestTemp) °C"
            windLabel.text = "Wind: \(wind) m/s"
            cloudLabel.text = "Cloud: \(cloud) %"
            weatherLabel.text = dayNumberArray[dayNumber]
        }
        else if day == "5 Day" {
            for counter in 1...5 {
                dayNumber = counter
                
                var highestTemp = getHigh(dayNumberEntered : dayNumber)
                var lowestTemp = getLow(dayNumberEntered : dayNumber)
                var wind = getWind(dayNumberEntered : dayNumber)
                var cloud = getCloud(dayNumberEntered : dayNumber)
                
                if dayNumber == 1{
                    dayLabel.text = "Day: \(dayNumber)"
                    highestTempLabel.text = "High of: \(highestTemp) °C"
                    lowestTempLabel.text = "Low of: \(lowestTemp) °C"
                    windLabel.text = "Wind: \(wind) m/s"
                    cloudLabel.text = "Cloud: \(cloud) %"
                    weatherLabel.text = dayNumberArray[dayNumber]
                }
                else if dayNumber == 2{
                    dayLabel2.text = "Day: \(dayNumber)"
                    highestTempLabel2.text = "High of: \(highestTemp) °C"
                    lowestTempLabel2.text = "Low of: \(lowestTemp) °C"
                    windLabel2.text = "Wind: \(wind) m/s"
                    cloudLabel2.text = "Cloud: \(cloud) %"
                    weatherLabel2.text = dayNumberArray[dayNumber]
                }
                else if dayNumber == 3{
                    dayLabel3.text = "Day: \(dayNumber)"
                    highestTempLabel3.text = "High of: \(highestTemp) °C"
                    lowestTempLabel3.text = "Low of: \(lowestTemp) °C"
                    windLabel3.text = "Wind: \(wind) m/s"
                    cloudLabel3.text = "Cloud: \(cloud) %"
                    weatherLabel3.text = dayNumberArray[dayNumber]
                }
                else if dayNumber == 4{
                    dayLabel4.text = "Day: \(dayNumber)"
                    highestTempLabel4.text = "High of: \(highestTemp) °C"
                    lowestTempLabel4.text = "Low of: \(lowestTemp) °C"
                    windLabel4.text = "Wind: \(wind) m/s"
                    cloudLabel4.text = "Cloud: \(cloud) %"
                    weatherLabel4.text = dayNumberArray[dayNumber]
                }
                else if dayNumber == 5{
                    dayLabel5.text = "Day: \(dayNumber)"
                    highestTempLabel5.text = "High of: \(highestTemp) °C"
                    lowestTempLabel5.text = "Low of: \(lowestTemp) °C"
                    windLabel5.text = "Wind: \(wind) m/s"
                    cloudLabel5.text = "Cloud: \(cloud) %"
                    weatherLabel5.text = dayNumberArray[dayNumber]
                }
            }
        }
        else {
            dayLabel.text = "You didn't enter a valid day."
        }
            
        
        
        
        //answerLabel.text = String(format: "The volume is %.02f cm^3", volume)
            
        
    }
        override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
