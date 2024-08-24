//
//  TabBarViewController.swift
//  PersonList
//
//  Created by fear on 24.05.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewControllers()
        
    }
    
    private func setUpViewControllers() {
        let personContact = Person.getPersonList()
        
        guard let personListVC = viewControllers?.first as? PersonListViewController else { return }
        personListVC.personList = personContact
        guard let personInfoVC = viewControllers?.last as? PersonInfoViewController else { return }
        personInfoVC.personList = personContact
       
    }
}
