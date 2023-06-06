//
//  ViewController.swift
//  ios Clothing App
//
//  Created by DA MAC M1 163 on 2023/06/01.
//

import UIKit

class ViewController: UIViewController {
	
	var menClicked = false
	var womenClicked = false
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func gotToViewALLVC_men(_ sender: UIButton){
//		menClicked.toggle()
//		print(menClicked)
		
//		func prepare(for segue: UIStoryboardSegue, sender: Any?){
//			if segue.identifier == "men"{
//
//				if let viewAllVC = segue.destination as? ViewAllViewController{
//					viewAllVC.text = "Men"
////					viewAllVC.dataLabel?.text = String(menClicked)
//				}
//			}
//		}
	}
	
	@IBAction func goToViewAllVC_women(_ sender: UIButton){
//		womenClicked.toggle()
//		print(womenClicked)
//		func prepare(for segue: UIStoryboardSegue, sender: Any?){
//			if segue.identifier == "women"{
//
//				if let viewAllVC = segue.destination as? ViewAllViewController{
//					viewAllVC.text = String(womenClicked)
//					viewAllVC.dataLabel?.text = String(womenClicked)
//				}
//			}
//		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?){
		if segue.identifier == "men"{
			
			menClicked.toggle()
			print("Men: \(menClicked)")

			if let viewAllVC = segue.destination as? ViewAllViewController{
				viewAllVC.text = String(menClicked)
				viewAllVC.dataLabel?.text = String(viewAllVC.text ?? "Data value")
			}
		}
		
		else if segue.identifier == "women"{
			womenClicked.toggle()
			print("Women: \(womenClicked)")
			
			if let viewAllVC = segue.destination as? ViewAllViewController{
				viewAllVC.text = String(womenClicked)
			}
		}
		
		else{
			print("Custom Error")
		}
	}

}

