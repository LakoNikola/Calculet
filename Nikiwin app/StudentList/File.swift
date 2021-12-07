//
//  File.swift
//  StudentList
//
//  Created by user on 6.12.21.
//

import Foundation

class StudentManager {
    let userDefaults = UserDefaults.standard
    
    func saveData(menList: [String]?, womenList: [String]) {
    saveMenlist(menList)
    saveWomenList(womenList)
    }
    
    private func saveMenlist(_ menList: [String]?){
        userDefaults.set(menList, forKey: "MenList")
        
    }
    private func saveWomenList(_ womenList: [String]?){
        userDefaults.set(womenList, forKey: "WomenList")
    }
    func readWomenList() -> [String] {
        if let womenList = userDefaults.object(forKey: "WomenList") as? [String]{
            return womenList
        }
        return []
    }
    func readMenList() -> [String]{
        if let menList = userDefaults.object(forKey: "MenList") as? [String] {
            return menList
        }
        return []
    }
}
