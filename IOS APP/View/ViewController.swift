//
//  ViewController.swift
//  IOS APP
//
//  Created by Porfirio on 29/08/23.
//

import UIKit

class ViewController: UIViewController {
    var arrFilteredeArray3: [NameCell]?
    
    @IBOutlet weak var tableViewSecond: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        tableViewSecond.delegate = self
        tableViewSecond.dataSource = self
    }

    func configTableView() {
        let nibCamara = UINib(nibName: "CamaraCellTableViewCell", bundle: nil)
        tableViewSecond.register(nibCamara, forCellReuseIdentifier: "CamaraCellTableViewCell")
        
        let nibFoto = UINib(nibName: "FotoCell", bundle: nil)
        tableViewSecond.register(nibFoto, forCellReuseIdentifier: "FotoCell")
        
        let nibNombre = UINib(nibName: "NombreCell", bundle: nil)
        tableViewSecond.register(nibNombre, forCellReuseIdentifier: "NombreCell")
        
        let nibNumero = UINib(nibName: "NumeroTelefonoCell", bundle: nil)
        tableViewSecond.register(nibNumero, forCellReuseIdentifier: "NumeroTelefonoCell")
        
        let nibFecha = UINib(nibName: "FechaNacimientoCell", bundle: nil)
        tableViewSecond.register(nibFecha, forCellReuseIdentifier: "FechaNacimientoCell")
        
        let nibSexo = UINib(nibName: "SexoCell", bundle: nil)
        tableViewSecond.register(nibSexo, forCellReuseIdentifier: "SexoCell")
        
        let nibColor = UINib(nibName: "ColorCell", bundle: nil)
        tableViewSecond.register(nibColor, forCellReuseIdentifier: "ColorCell")
        
        
    }

}
// MARK: - Table view data source
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let valor = arrFilteredeArray3?.count{
            return valor
        }
            return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell
      
        let formType = arrFilteredeArray3?[indexPath.row]
        switch formType?.type{
        
        case .foto:
            cell = tableView.dequeueReusableCell(withIdentifier: "FotoCell", for: indexPath)
        case .nombre:
            cell = tableView.dequeueReusableCell(withIdentifier: "NombreCell", for: indexPath)
        case .telefono:
            cell = tableView.dequeueReusableCell(withIdentifier: "NumeroTelefonoCell", for: indexPath)
        case .fecha:
            cell = tableView.dequeueReusableCell(withIdentifier: "FechaNacimientoCell", for: indexPath)
        case .sexo:
            cell = tableView.dequeueReusableCell(withIdentifier: "SexoCell", for: indexPath)
        case .color:
            cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        case .camara:
            cell = tableView.dequeueReusableCell(withIdentifier: "CamaraCellTableViewCell", for: indexPath)
            
        default:
             cell = tableView.dequeueReusableCell(withIdentifier: "CamaraCellTableViewCell", for: indexPath)
        }
        return cell
    }
}
