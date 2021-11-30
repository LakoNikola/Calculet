//
//  ViewController.swift
//  StudentList 2
//
//  Created by user on 26.11.21.
//

import UIKit

class ViewController: UIViewController {
   
 
    var arrayStudentList:[String] = []
    
    @IBOutlet weak var tableViewController: UITableView!
    
    @IBOutlet weak var selcetButton: UIButton!
    @IBAction func selectButtonTapped(_ sender: Any) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Main") as! TableView
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}



extension ViewController: TableViewDelegate {
    func didSelectStudent(_ student: String) {
        arrayStudentList.append(student)
        tableViewController.reloadData()
    }
   
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayStudentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        arrayStudentList.sort()
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellView", for: indexPath) as! LabelNameTableCell
        
        cell.labelNameView.text = arrayStudentList[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if arrayStudentList.isEmpty {
            return nil
        } else {
        return "Количиство: \(arrayStudentList.count)"
        }
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }


    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableViewController.beginUpdates()
            arrayStudentList.remove(at: indexPath.row)
            tableViewController.deleteRows(at: [indexPath], with: .fade)
            tableViewController.endUpdates()
            tableViewController.reloadData()
        }
    }
    }
