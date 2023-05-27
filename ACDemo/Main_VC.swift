//
//  Main_VC.swift
//  ACDemo
//
//  Created by Yifan Du on 5/26/23.
//

import Foundation
import UIKit

class Main_VC : UIViewController {
    
    // primitive data type declaration
    let add_bt_size : CGFloat = 36
    
    // UILabel is an UIObject to display string value
    let Date_label : UILabel = {
       // inner parameter define
        let lb = UILabel() // variable declaration and UILable() is a constructor
        lb.text = "Today"
        lb.font = UIFont.boldSystemFont(ofSize: 28)
        lb.textColor = UIColor.black
        lb.backgroundColor = UIColor.blue
        return lb
    }()
    
    let MDW : UILabel = {
       // inner parameter define
        let lb = UILabel() // variable declaration and UILable() is a constructor
        lb.text = "Sep 10, Sun"
        lb.font = UIFont.boldSystemFont(ofSize: 12)
        lb.backgroundColor = UIColor.blue
        lb.textColor = UIColor.black
        return lb
    }()
    
    let Add_Bt : UIButton = {
        let bt = UIButton()
        bt.setImage(UIImage(systemName: "plus"), for: .normal)
        bt.tintColor = UIColor.white // modify image's color
        bt.backgroundColor = .black // bgColor
        bt.clipsToBounds = true
        bt.layer.cornerRadius = 5
        return bt
    }()
    
    // Method declaration
    func setup_UI() {
        // define Date_label's dimension (x, y, w, h)
        Date_label.frame = CGRect(x: 10, y: 100, width: view.frame.width / 3, height: 32)
        
        // define MDW's dimension right next to Date_label
        MDW.frame = CGRect(x: Date_label.center.x + Date_label.frame.width / 2, y: 100, width: view.frame.width / 3, height: 14)
        
        // define add button's dimension right next to iphone's right corner
        Add_Bt.frame = CGRect(x: view.frame.width - add_bt_size - 24, y: 100, width: add_bt_size, height: add_bt_size)
        print(Date_label.frame.width, Date_label.text?.count)
        // display UIObject at view
        view.addSubview(Date_label)
        view.addSubview(MDW)
        view.addSubview(Add_Bt)
    }
    
    // main entry main method
    override func viewDidLoad() {
        super.viewDidLoad()
        // inheritance
        view.backgroundColor = UIColor.white
        // method call
        setup_UI()
    }
    
}
