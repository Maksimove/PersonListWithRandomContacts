//
//  HeaderViewCell.swift
//  PersonList
//
//  Created by Evgeniy Maksimov on 03.06.2024.
//

import UIKit

final class HeaderViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    @IBAction func callButtonTapped() {
        print("Call \(nameLabel.text ?? "") \(surnameLabel.text ?? "")")
    }

}
