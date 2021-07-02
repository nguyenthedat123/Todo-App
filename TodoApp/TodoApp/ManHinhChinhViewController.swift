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
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
        cell.selectedBackgroundView = view
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
