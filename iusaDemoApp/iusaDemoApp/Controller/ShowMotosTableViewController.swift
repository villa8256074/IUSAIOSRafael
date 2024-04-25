//
//  ShowMotosTableViewController.swift
//  iusaDemoApp
//
//  Created by Rafael Villa on 24/04/24.
//

import UIKit

class ShowMotosTableViewController: UITableViewController {
    
    var findMoto: Dictionary<String,Any> = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cellfindmotouser")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        let dataArray = findMoto["motos"] as! NSArray;
        print(dataArray.count);
        
        return dataArray.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let dataArray = findMoto["motos"] as! NSArray;
        print((dataArray[section] as! NSObject).value(forKey: "idMoto") ?? "");
        return (dataArray[section] as! NSObject).value(forKey: "idMoto") as? String;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let dataArray = findMoto["motos"] as! NSArray;
        print(dataArray.count);
              
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellfindmotouser", for: indexPath) as! FindMotoTableViewCell
        let dataArray = findMoto["motos"] as! NSArray;
        let moto = dataArray[indexPath.section] as! NSObject
        
        cell.changeValues(moto: moto.value(forKey: "moto") as? String ?? "", bateriaOne: moto.value(forKey: "bateria1") as? String ?? "", bateriaTwo: moto.value(forKey: "bateria2") as? String ?? "")
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 3.5
    }

}
