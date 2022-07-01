//
//  DataManager.swift
//  PersonsList
//
//  Created by Сергей Белоусов on 29.06.2022.
//

class DataManager {
    var names: [String] = ["Bruce", "John", "Steven", "Aaron", "Tim", "Allan", "Sharon", "Ted", "Carl", "Nicola"].shuffled()
    var surnames: [String] = ["Butler", "Smith", "Black", "Robertson", "Murphy", "Williams", "Isaacson", "Jankin", "Pennyworth", "Dow"].shuffled()
    var phones: [String] = ["341324", "341123", "341653", "765432", "906757", "738573", "019374", "234780", "987628", "000999"].shuffled()
    var emails: [String] = ["aaa@mail.ru", "eee@gmail.com", "fff@yandex.lox", "hhh@mail.com", "ccc@gmail.ru", "jjj@mail.ua", "sss@yandex.com", "yyy@gmail.ua", "bbb@block.com", "xxx@pont.ua"].shuffled()
}
