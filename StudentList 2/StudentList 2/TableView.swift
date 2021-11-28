//
//  TableView.swift
//  StudentList 2
//
//  Created by user on 26.11.21.
//

import UIKit
protocol TableViewDelegate {
    func didSelectStudent(_ student: String)
}

class TableView: UIViewController {
    
     var delegate: TableViewDelegate?
    
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var studentListDataSource = ["Богданович Дмитрий Александрович",
                                 "Гришин Павел Андреевич",
                                 "Куклицкий Максим Сергеевич",
                                 "Лапин Николай Владимирович",
                                 "Малишевский Никита Валерьевич",
                                 "Матвеенко Сергей Александрови",
                                 "Мостовой Алексей Алексеевич",
                                 "Пачковский Михаил Тадеушевич",
                                 "Савков Александр Геннадьевич",
                                 "Симонов Владислав Дмитриевич",
                                 "Сысов Валерий Александрович",
                                 "Артимович Игорь Владимирович",
                                 "Букаренко Арина Олеговна",
                                 "Ефименко Анастасия Владимировна",
                                 "Пернацкая Алеся Юрьевна",
                                 "Сандова Галина Александровна",
                                 "Елисеева Марина Михайловна"
    ].sorted()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }


}
extension TableView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentListDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableCellTableViewCell
        cell.labelName.text = studentListDataSource[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Список студентов: \(studentListDataSource.count)"
    }
    
    
}
extension TableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let name: String
        name = studentListDataSource[indexPath.row]
        print("seleccted row: \(name)")
        delegate?.didSelectStudent(name)
        self.dismiss(animated: true, completion: nil)
    }
}
