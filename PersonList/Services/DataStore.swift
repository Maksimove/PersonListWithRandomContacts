//
//  DataStore.swift
//  PersonList
//
//  Created by fear on 22.05.2024.
//

import Foundation
final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Egor",
        "Kirill",
        "Denis",
        "Polina",
        "Masha",
        "Vova",
        "Yana"
    ]
    
    let surnames = [
        "Mikhaylov",
        "Nagorniy",
        "Andreev",
        "Yatsuk",
        "Fisenko",
        "Pinemasov",
        "Baranova"
    ]
    
    let phoneNumbers = [
        "79234313245",
        "79008906679",
        "74562229065",
        "75679001167",
        "75903339044",
        "76592348181",
        "72207807729"
    ]
    
    let emails = [
        "www@gmail.com",
        "fggg@icloud.com",
        "yooo@mail.ru",
        "ccc@yandex.ru",
        "free33@mail.ru",
        "derrr1@gmail.com",
        "llll@mail.ru"
    ]
}
