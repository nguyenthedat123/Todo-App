//
//  ManHinhChinhViewController.swift
//  TodoApp
//
//  Created by The Dat on 7/1/21.
//

import UIKit


//MARK: - Class
class MobileBrand {
    var brandName: String?
    var modelName: [String]?
    
    init(brandName: String, modelName: [String]) {
        self.brandName = brandName
        self.modelName = modelName
    }
}

final class ManHinhChinhViewController: UIViewController {
    var checkbtn: Bool = false
    var mobileBrand = [MobileBrand]()
    //MARK: - @IBOutlet
    @IBOutlet weak var table: UITableView!
    var check = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        self.table.delegate = self
        self.table.dataSource = self
        
        mobileBrand.append(MobileBrand.init(brandName: "Apple", modelName: ["iPhone 5s","iPhone 6","iPhone 6s", "iPhone 7+", "iPhone 8", "iPhone 8+", "iPhone 11", "iPhone 11 Pro"]))
        mobileBrand.append(MobileBrand.init(brandName: "Samsung", modelName: ["Samsung M Series", "Samsung Galaxy Note 9", "Samsung Galaxy Note 9+", "Samsung Galaxy Note 10", "Samsung Galaxy Note 10 +"]))
        mobileBrand.append(MobileBrand.init(brandName: "Mi", modelName: ["Mi Note 7", "Mi Note 7 Pro", "Mi K20"]))
        mobileBrand.append(MobileBrand.init(brandName: "Huawei", modelName: ["Huawei Mate 20", "Huawei P30 Pro", "Huawei P10 Plus", "Huawei P20"]))
    }
}
   
//MARK: - UITableViewDelegate
extension ManHinhChinhViewController: UITableViewDelegate {

}

//MARK: - UITableViewDataSource
extension ManHinhChinhViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mobileBrand.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mobileBrand[section].modelName?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.textLabel1?.text = mobileBrand[indexPath.section].modelName?[indexPath.row]
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
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mobileBrand[section].brandName
    }
    
}
