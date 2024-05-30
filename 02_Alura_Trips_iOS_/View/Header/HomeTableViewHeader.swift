//
//  HomeTableViewHeader.swift
//  02_Alura_Trips_iOS_
//
//  Created by Tiago de Freitas Costa on 2024-05-27.
//

import UIKit

class HomeTableViewHeader: UIView {

   
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var headerView: UIView!
    
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    
    @IBOutlet weak var bannerView: UIView!
    
    func configureView(){
        headerView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 500
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
    }
   
    
}
