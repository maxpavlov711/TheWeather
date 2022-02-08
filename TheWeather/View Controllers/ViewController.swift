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
    
    let networkWeatherManager = NetworkWeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkWeatherManager.feetchCurrentWeather(forCity: "Minsk")
    }


    @IBAction func searchPressed(_ sender: UIButton) {
        self.presendSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert) { city in
            self.networkWeatherManager.feetchCurrentWeather(forCity: city)
        }
    }
    
}

