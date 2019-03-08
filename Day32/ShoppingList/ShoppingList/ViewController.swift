//
//  ViewController.swift
//  ShoppingList
//
//  Created by Ünal Öztürk on 7.03.2019.
//  Copyright © 2019 Ünal Öztürk. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var shoppingList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
        navigationItem.leftBarButtonItem  = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reflesh))
    }
    
    //Tableview
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Item", for: indexPath)
        cell.textLabel?.text = shoppingList[indexPath.row]
        return cell
    }
    
    @objc func addItem() {
        let ac = UIAlertController(title: "Shopping List", message: "Write item name", preferredStyle: .alert)
        ac.addTextField()
        
        let submit = UIAlertAction(title: "Submit", style: .default) {
            [weak self, weak ac] _ in
            guard let answer = ac?.textFields?[0].text else{ return }
            
            self?.shoppingList.insert(answer, at: 0)
            
            let indexPath = IndexPath(row: 0, section: 0)
            self?.tableView.insertRows(at: [indexPath], with: .fade)
            
            
        }
        ac.addAction(submit)
        present(ac, animated: true)
        
    }
    
    @objc func reflesh() {
        shoppingList.removeAll()
        tableView.reloadData()
        
    }
    
    
    
    
    
    


}

