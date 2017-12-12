//
//  HoriOScope.swift
//  Exercises - UserDefaults
//
//  Created by C4Q on 12/11/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

class HoriOScope: Codable {
    let mood: String
    let color: String
    let description: String
    let luckyTime: String
    let compatibility: String
    let currentDate: String
    let luckyNumber: String
    
    enum CodingKeys: String, CodingKey {
        case mood
        case color
        case description
        case luckyTime = "lucky_time"
        case compatibility
        case currentDate = "current_date"
        case luckyNumber = "lucky_number"
    }
}

struct UserDefaultsHelper {
    static let manager = UserDefaultsHelper()
    private init() {}
    private let nameKey = "name"
    private let signKey = "sign"
    func getName() -> String? {
        //UserDefaults.standard.value(forKey: nameKey)
        return UserDefaults.standard.string(forKey: nameKey)
    }
    func getSign() -> String? {
        //UserDefaults.standard.value(forKey: signKey)
        return UserDefaults.standard.string(forKey: signKey)
    }
    func setName(to newName: String) {
        //UserDefaults.standard.set(newName, forKey: nameKey)
        UserDefaults.standard.setValue(newName, forKey: nameKey)
    }
    func setSign(to newSign: String) {
        //UserDefaults.standard.set(newSign, forKey: signKey)
        UserDefaults.standard.setValue(newSign, forKey: signKey)
    }
}


