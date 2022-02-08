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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func searchPressed(_ sender: UIButton) {
        self.presendSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert)
    }
    
}

