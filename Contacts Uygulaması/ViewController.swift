//
//  ViewController.swift
//  Contacts Uygulaması
//
//  Created by Ezgi Kaltalıoğlu on 26.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var bolumler = ["Family", "Friends","Works"]
    
    var bolumVerileri = [["Ayşe", "Fatma", "Mehmet", "Merve","Aslı"],["Elif", "Eda", "Can", "Kenan","Ezgi"], ["Şeyma","Mutlu", "Nur", "Berk", "İrem"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return bolumler[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bolumler.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bolumVerileri[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "rehberHucre", for: indexPath)
        
        cell.textLabel?.text = bolumVerileri[indexPath.section][indexPath.row]
        
        return cell
    }
}
