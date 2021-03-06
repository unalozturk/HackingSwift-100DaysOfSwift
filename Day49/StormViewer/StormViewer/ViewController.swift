//
//  ViewController.swift
//  StormViewer
//
//  Created by Ünal Öztürk on 16.02.2019.
//  Copyright © 2019 Ünal Öztürk. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Strom Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items =  try! fm.contentsOfDirectory(atPath: path )
        
        for item in items {
            if item.hasPrefix("nssl") {
                //this is picture to load!
                pictures.append(item)
            }
        }
        print(pictures)
        pictures.sort { $0 < $1 }
        print(pictures)
        logHowManyTimesShown()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            vc.title = "Picture \(indexPath.row + 1) of \(pictures.count)"
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    func logHowManyTimesShown() {
        let defaults = UserDefaults.standard
        var times = defaults.integer(forKey: "Shown")
        times += 1
        defaults.set(times, forKey: "Shown")
        
        print("Log : \(defaults.integer(forKey: "Shown"))")
    }
    


}

