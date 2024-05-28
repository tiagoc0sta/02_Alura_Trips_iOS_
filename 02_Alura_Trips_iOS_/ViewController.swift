//
//  ViewController.swift
//  02_Alura_Trips_iOS_
//
//  Created by Tiago de Freitas Costa on 2024-05-26.
//

import UIKit

class ViewController: UIViewController {
    
    //connection table and ViewController
    @IBOutlet weak var tripTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tripTableView.dataSource = self
        tripTableView.delegate = self
        
        if #available(iOS 15.0, *) {
            tripTableView.sectionHeaderTopPadding = 0.0
                }
        
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
}

// config what to show on the table
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
                
        cell.textLabel?.text = "Trip \(indexPath.row)"
        
        return cell
    }
}

// show the header (HomeTableViewHeader file)
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.configureView()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
