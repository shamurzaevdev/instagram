//
//  ViewController.swift
//  InstagramClone
//
//  Created by Эл on 04.11.2022.
//

import UIKit

/// Our Main menu with general info

final class MainMenuViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var models = [StoriesData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        models.append(StoriesData(text: "usmankhamys",
                                  imageName: "usman"))
        models.append(StoriesData(text: "durov",
                                  imageName: "durov"))
        models.append(StoriesData(text: "musk",
                                  imageName: "musk"))
        
        tableView.register(StoriesTableViewCell.nib(), forCellReuseIdentifier: StoriesTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension MainMenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StoriesTableViewCell.identifier,
                                                 for: indexPath) as! StoriesTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        250.0
    }
}

