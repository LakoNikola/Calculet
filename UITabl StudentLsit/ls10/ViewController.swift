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
    ].sorted()
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
                         "Пачковский Михаил Тадеушевич"
    ].sorted()
    
    var filteredDataSourceMan:[String] = []
    var filteredDataSource:[String] = []
    let searchController = UISearchController(searchResultsController: nil)
    var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else {return false}
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search"
        definesPresentationContext = true
        navigationItem.searchController = searchController
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {

           return 2
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: if isFiltering {
            return filteredDataSource.count
        } else
            { return dataSourceWoman.count }
        case 1:
       if isFiltering {
            return filteredDataSourceMan.count
        } else
            { return dataSourceMan.count }
        default:
            break
        }
    return 0
        
    }
     
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Список студентов: \(dataSourceWoman.count)"
        case 1:
            return "Список студентов: \(dataSourceMan.count)"
        default:
            break
        }
          return ""
            
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath) as! StudentCell
        
        cell.nameLabel.text = ""
        
        switch indexPath.section{
        case 0 : if isFiltering{
            cell.nameLabel.text = filteredDataSource[indexPath.row]
        } else {
            cell.nameLabel.text = dataSourceWoman[indexPath.row]}

        case 1: if isFiltering{
            cell.nameLabel.text = filteredDataSourceMan[indexPath.row]
        } else {
            cell.nameLabel.text = dataSourceMan[indexPath.row]}
        default:
            break
        }
        return cell
    }

    
}
extension ViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        filterDataSourceMan(searchController.searchBar.text!)
        filterDataSourceWoman(searchController.searchBar.text!)
    }
    private func filterDataSourceMan(_ serchText: String){
        filteredDataSourceMan = dataSourceMan.filter({ filteretString in
            return filteretString.lowercased().contains(serchText.lowercased())
        })
   
        
        tableView.reloadData()
    }
   
    private func filterDataSourceWoman(_ serchText: String){
        filteredDataSource = dataSourceWoman.filter({ filteretString in
            return filteretString.lowercased().contains(serchText.lowercased())
        })
   
        
        tableView.reloadData()
    }
     
}

