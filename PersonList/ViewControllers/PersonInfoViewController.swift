//
//  PersonInfoViewController.swift
//  PersonList
//
//  Created by fear on 24.05.2024.
//

import UIKit

final class PersonInfoViewController: UITableViewController {
    var personList: [Person]!
}
    // MARK: - UITableViewDataSource
extension PersonInfoViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList[section].rows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showPhone", for: indexPath)
        let person = personList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        content.text = indexPath.row == 0
        ? person.phone
        : person.email
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "phone")
        : UIImage(systemName: "tray.fill")
        
        cell.contentConfiguration = content
        return cell
    }
}
    // MARK: - UITableViewDelegate
extension PersonInfoViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
//    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let contentView = UIView()
//        contentView.backgroundColor = .lightGray
//        
//        let fullNamelabel = UILabel(
//            frame: CGRect(
//                x: 16,
//                y: 3,
//                width: tableView.frame.width - 32,
//                height: 20
//            )
//        )
//        
//        fullNamelabel.font = UIFont.boldSystemFont(ofSize: 17)
//        fullNamelabel.textColor = .white
//        fullNamelabel.text = personList[section].fullName
//        
//        contentView.addSubview(fullNamelabel)
//        return contentView
//    }
//
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell")
        let headerCell = cell as? HeaderViewCell
        let person = personList[section]
        
        headerCell?.nameLabel.text = person.name
        headerCell?.surnameLabel.text = person.surname
        
        return headerCell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 0.3) {
            view.transform = CGAffineTransform.identity
        }
    }
}
