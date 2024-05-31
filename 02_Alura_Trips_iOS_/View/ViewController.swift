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
        configureTableView()
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
    
    func configureTableView(){
        tripTableView.register(UINib(nibName: "TripTableViewCell", bundle: nil), forCellReuseIdentifier: "TripTableViewCell")// connect tripTableCell to the main View
        tripTableView.dataSource = self
        tripTableView.delegate = self
        
        if #available(iOS 15.0, *) {
            tripTableView.sectionHeaderTopPadding = 0.0
                }
    }
}

// config what to show on the table
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cellTrip = tableView.dequeueReusableCell(withIdentifier: "TripTableViewCell") as? TripTableViewCell else {
            fatalError("Error creating TripTableViewCell")
        }
        
        return cellTrip
    }
}

// edit formating (UI)
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.configureView()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
