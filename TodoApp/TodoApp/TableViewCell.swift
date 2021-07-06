//
//  TableViewCell.swift
//  TodoApp
//
//  Created by The Dat on 7/2/21.
//

import UIKit

final class TableViewCell: UITableViewCell {
    // thieu mark nay em
    //MARK: - @IBOutlet
    @IBOutlet weak var btnCheck: UIButton!
    // nen doi lai thanh UIBUtton
    // sau do luc nao an vao button thi goi ham set lai image cho no
    //Ten @IBOutlet phai la: ten button + Btn !! Khong duoc de la check khong nhu the kia
    // thieu mark nay em
    
    //MARK: - Properties
    public var isChecked = false // khong doi trang thai o day thi len vao mat a :v
    //luon luon can nhac viec mot bien co su dung o nhieu noi hay khong de set cho no la private hay public - tips
    //MARK: - func
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    //MARK: - @IBAction
    @IBAction func onTouchCheckBtn(_ sender: Any) {
        //isChecked ? :
        // check true false o day nhe roi set lai icon cho no
        if isChecked == false {
            btnCheck.setImage(UIImage(named: "checkfalse"), for: .normal)
            isChecked = true
        } else {
            btnCheck.setImage(UIImage(named: "checktrue"), for: .normal)
            isChecked = false
        }
    }
    
}
