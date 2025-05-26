//
//  HomeTableViewHeader.swift
//  Trips
//
//  Created by Juliano Sgarbossa on 26/05/25.
//

import UIKit

class HomeTableViewHeader: UIView {

    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    
    func configuraView() {
        
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        headerView.layer.cornerRadius = 500
        
        bannerView.layer.cornerRadius = 10
        bannerView.clipsToBounds = true
    }
}
