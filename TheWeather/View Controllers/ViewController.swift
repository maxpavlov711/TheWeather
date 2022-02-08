//
//  ViewController.swift
//  TheWeather
//
//  Created by Max Pavlov on 8.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weaherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    var networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkWeatherManager.onCompletion = { currentWeather in
            print(currentWeather.cityName)
        }
        networkWeatherManager.feetchCurrentWeather(forCity: "Minsk") 
    }
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        self.presendSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkWeatherManager.feetchCurrentWeather(forCity: city)
        }
    }
}



