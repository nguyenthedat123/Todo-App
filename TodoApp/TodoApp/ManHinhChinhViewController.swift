//
//  ManHinhChinhViewController.swift
//  TodoApp
//
//  Created by The Dat on 7/1/21.
//

import UIKit

final class ManHinhChinhViewController: UIViewController {
    var checkbtn: Bool = false
    //MARK: - @IBOutlet
    @IBOutlet weak var table: UITableView!
    var check = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.table.delegate = self
        self.table.dataSource = self
    }
}
   
//MARK: - UITableViewDelegate
extension ManHinhChinhViewController: UITableViewDelegate {

}

//MARK: - UITableViewDataSource
extension ManHinhChinhViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
        if cell.isChecked == false {
            cell.isChecked = true
            cell.btnCheck.setImage(UIImage(named: "checkfalse"), for: .normal)
        } else {
            cell.isChecked = false
            cell.btnCheck.setImage(UIImage(named: "checktrue"), for: .normal)
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
        cell.btnCheck.setImage(UIImage(named: "checkfalse"), for: .normal)
    }
    
}
