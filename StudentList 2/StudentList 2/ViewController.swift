//
//  ViewController.swift
//  StudentList 2
//
//  Created by user on 26.11.21.
//

import UIKit

class ViewController: UIViewController {
   
    

    @IBOutlet weak var selcetButton: UIButton!
    
    
    @IBAction func selectButtonTapped(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Main") as! TableView
        self.navigationController?.pushViewController(vc, animated: true)
        vc.delegate = self

    }


}

extension ViewController: TableViewDelegate {
    func didSelectStudent(_ student: String) {
        selcetButton.setTitle(student, for: .normal)
        
    }
    
    
}
