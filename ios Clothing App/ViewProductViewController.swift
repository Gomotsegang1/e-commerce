//
//  ViewProductViewController.swift
//  ios Clothing App
//
//  Created by DA MAC M1 117 on 2023/06/05.
//

import UIKit

class ViewProductViewController: UIViewController {

   var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        cartTabBarItem.badgeValue = nil
        //cartTabBarItem.badgeColor?.cgColor = UIColor(named: "green")
    }
    
    @IBAction func newProductButton(_ sender: Any) {
        
        count = count + 1
        let tabBar = self.tabBarController!.tabBar
        let newProduct = tabBar.items![0]
        newProduct.badgeColor = UIColor.red
        newProduct.badgeValue = "\(count)"
    }
    
    @IBOutlet weak var cartTabBarItem: UITabBarItem!
    
}
