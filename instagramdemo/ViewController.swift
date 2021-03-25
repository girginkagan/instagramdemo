//
//  ViewController.swift
//  instagramdemo
//
//  Created by Kagan Girgin on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell")!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

class PostTableViewCell: UITableViewCell{
    
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var btnLike: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        btnLike.addTarget(self, action: #selector(btnLikeTapped), for: .touchUpInside)
        btnSave.addTarget(self, action: #selector(btnSaveTapped), for: .touchUpInside)
    }
    
    @objc func btnLikeTapped(_ sender: UIButton){
        btnLike.isSelected = !btnLike.isSelected
    }
    
    @objc func btnSaveTapped(_ sender: UIButton){
        btnSave.isSelected = !btnSave.isSelected
    }
    
}

