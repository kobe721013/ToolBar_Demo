//
//  ViewController.swift
//  ToolBar_Demo
//
//  Created by kobe on 2017/12/27.
//  Copyright © 2017年 kobe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toolBar: UIToolbar!
    
    var navigationSelectButton:UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
        navigationSelectButton = UIBarButtonItem(title: "Select", style: .plain, target: self, action: #selector(selectButtonTouched))
        self.navigationController?.navigationBar.topItem?.rightBarButtonItem = navigationSelectButton
        
        //self.tabBarController.ite
        toolBar.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func selectButtonTouched(){
        if navigationSelectButton.title == "Select" {
            navigationSelectButton.title = "Cancel"
             self.tabBarController?.tabBar.isHidden = true
            self.toolBar.isHidden = false
        } else {
            navigationSelectButton.title = "Select"
            self.tabBarController?.tabBar.isHidden = false
            self.toolBar.isHidden = true
        }
       
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

