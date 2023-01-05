//
//  DetailViewController.swift
//  SuperHeroes
//
//  Created by Semih Mac on 9.12.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var heroNameLabel: UILabel!
    
    var selectedSuperHero=""
    override func viewDidLoad() {
        super.viewDidLoad()

        heroNameLabel.text=selectedSuperHero
    }
    

}
