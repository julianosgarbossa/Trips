//
//  ViewController.swift
//  Trips
//
//  Created by Juliano Sgarbossa on 26/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1.0)
        self.configuraTableView()
        self.setTableViewDataSourceAndTableViewDelegate()
    }
    
    private func configuraTableView() {
        self.viagensTableView.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1.0)
        self.viagensTableView.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier: "ViagemTableViewCell")
    }
    
    private func setTableViewDataSourceAndTableViewDelegate() {
        self.viagensTableView.dataSource = self
        self.viagensTableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellViagem = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell", for: indexPath) as? ViagemTableViewCell else { return UITableViewCell() }
        
        return cellViagem
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        headerView?.configuraView()
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}

