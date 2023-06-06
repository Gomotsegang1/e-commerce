//
//  ViewAllViewController.swift
//  ios Clothing App
//
//  Created by DA MAC M1 135 on 2023/06/06.
//

import UIKit

class ViewAllViewController: UIViewController {
	
	var text: String?
	
	@IBOutlet weak var dataLabel: UILabel!
	
	var homeVC = ViewController()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		dataLabel.text = text
    }

}
