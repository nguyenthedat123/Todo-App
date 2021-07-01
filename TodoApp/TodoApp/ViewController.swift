//
//  ViewController.swift
//  TodoApp
//
//  Created by The Dat on 7/1/21.
//

import UIKit
// abc123
//123456

final class ViewController: UIViewController {
    
    //MARK: - @IBOultlet
    @IBOutlet weak var tfUserName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    //MARK: - LifeCycle
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfUserName.layer.cornerRadius = 20
        tfPassword.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
        
        btnLogin.layer.borderWidth = 1
        btnLogin.layer.cornerRadius = 20
        btnLogin.layer.borderColor = UIColor.white.cgColor
        
        
    }
    
    //MARK: - @IBAction
    @IBAction func btnLogin(_ sender: Any) {
        if (tfUserName.text == "abc123" && tfPassword.text == "123456") {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "manhinh2")
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            //lam them nut ok da dismiss UIAlertController
            let alert = UIAlertController(title: "Thông báo", message: "Đăng nhập thất bại", preferredStyle: .alert)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

