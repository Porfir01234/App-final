//
//  TableViewController.swift
//  IOS APP
//
//  Created by Porfirio on 29/08/23.
//

import UIKit
class TableViewController: UITableViewController {
    
    var arrFilteredeArray2: [NameCell]?
    var nameRow: NameRow = NameRow()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameRow.setArrFormType()
        self.tableView.reloadData()
    }
    
    @IBAction func buttonAdd(_ sender: UIButton) {

        let arrFilteredeArray = nameRow.getArrFomrType()?.filter({ $0.done })
        arrFilteredeArray2 = arrFilteredeArray
        performSegue(withIdentifier: "ToSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToSegue"{
            let optencion = segue.destination as! ViewController
           optencion.arrFilteredeArray3 = arrFilteredeArray2
            
        }
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let valor = nameRow.getArrFomrType()?.count{
            return valor
        }
        return 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if let valor = nameRow.getArrFomrType()?[indexPath.row]{
                        
            cell.textLabel?.text = valor.name
            cell.accessoryType = valor.done ? .checkmark : .none
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let valor = nameRow.getArrFomrType()?[indexPath.row]{
            nameRow.nameRow?[indexPath.row].done = !valor.done
            tableView.reloadData()
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
