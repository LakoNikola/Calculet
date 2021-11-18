//
//  ViewController.swift
//  ls10
//
//  Created by user on 16.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataSourceWoman = [ "Букаренко Арина Олеговна",
                            "Пернацкая Алеся Юрьевна",
                            "Сандова Галина Александровна",
                            "Елисеева Марина Михайловна"
    ]
    var dataSourceMan = [ "Aртимович Игорь Владимирович",
                         "Богданович Дмитрий Александрович",
                         "Симонов Владислав Дмитриевич",
                         "Сысов Валерий Александрович",
                         "Савков Александр Геннадьевич",
                         "Гришин Павел Андреевич",
                         "Ефименко Анастасия Владимировна",
                         "Куклицкий Максим Сергеевич",
                         "Лапин Николай Владимирович",
                         "Малишевский Никита Валерьевич",
                         "Матвеенко Сергей Александрови",
                         "Мостовой Алексей Алексеевич",
                         "Пачковский Михаил Тадеушевич",

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSourceWoman.sort()
        dataSourceMan.sort()
        
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {

           return 2
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dataSourceWoman.count
        case 1:
        return dataSourceMan.count
        default:
            break
        }
    return 0
        
    }
     
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Список студентов \(dataSourceWoman.count)"
        case 1:
            return "Список студентов \(dataSourceMan.count)"
        default:
            break
        }
          return ""
            
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        
        cell.nameLabel.text = ""
        
        switch indexPath.section{
        case 0 :
            cell.nameLabel.text = dataSourceWoman[indexPath.row]
        case 1:
            cell.nameLabel.text = dataSourceMan[indexPath.row]
        default:
            break
        }
        return cell
    }
    
}

