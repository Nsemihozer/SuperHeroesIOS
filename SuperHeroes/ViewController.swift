//
//  ViewController.swift
//  SuperHeroes
//
//  Created by Semih Mac on 9.12.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    
    var names=[String]()
    var selectedName=""

    @IBOutlet weak var heroesTV: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        heroesTV.delegate=self
        heroesTV.dataSource=self
        
        
        names.append("Batman")
        names.append("Superman")
        names.append("Xmen")
        names.append("Cyclop")
        names.append("Ressemahe")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text=names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            names.remove(at: indexPath.row)
            heroesTV.deleteRows(at: [indexPath], with: .fade)
        }
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName=names[indexPath.row]
        performSegue(withIdentifier: "showSuperHeroVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="showSuperHeroVC"{
            let detailVC = segue.destination as! DetailViewController
            detailVC.selectedSuperHero=selectedName
        }
    }

}

