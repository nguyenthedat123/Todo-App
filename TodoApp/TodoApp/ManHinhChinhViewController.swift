//
//  ManHinhChinhViewController.swift
//  TodoApp
//
//  Created by The Dat on 7/1/21.
//

import UIKit

final class ManHinhChinhViewController: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet weak var table: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
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
        guard let cell = table.dequeueReusableCell(withIdentifier: "Cell") else {
            return UITableViewCell()
        }
        cell.textLabel?.text = "Hello"
        return cell
    }
}
