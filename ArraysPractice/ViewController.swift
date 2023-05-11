//
//  ViewController.swift
//  ArraysPractice
//
//  Created by Reuben Simphiwe Kuse on 2023/04/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let messagesUsageArray = ["Sent", "Received", "Bytes Sent", "Bytes Received"]
    
    let chatMediaUsageArray = ["Bytes Sent", "Bytes Received"]
    
    let statusMediaUsageArray = ["Bytes Sent", "Bytes Received"]
    
    let whatsappCallsUsageArray = ["Outgoing"]
    
    lazy var networkUsageTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        action()
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(networkUsageTableView)
        
        networkUsageTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        networkUsageTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        networkUsageTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        networkUsageTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return messagesUsageArray.count
        } else if section == 1 {
            return chatMediaUsageArray.count
            
        } else if section == 2 {
            return statusMediaUsageArray.count
            
        } else {
            return whatsappCallsUsageArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        
            let singleLabelCell = tableView.dequeueReusableCell(withIdentifier: "SingleLabelTableViewCellID", for: indexPath) as! SingleLabelTableViewCell
            singleLabelCell.titleLabel.text = messagesUsageArray[indexPath.row]
            return singleLabelCell
            
        } else if indexPath.section == 1 {
            
            let singleLabelCell = tableView.dequeueReusableCell(withIdentifier: "SingleLabelTableViewCellID", for: indexPath) as! SingleLabelTableViewCell
            singleLabelCell.titleLabel.text = chatMediaUsageArray[indexPath.row]
            
        } else if indexPath.section == 2 {
            
            let singleLabelCell = tableView.dequeueReusableCell(withIdentifier: "SingleLabelTableViewCellID", for: indexPath) as! SingleLabelTableViewCell
            singleLabelCell.titleLabel.text = statusMediaUsageArray[indexPath.row]
            
        } else if indexPath.section == 3 {
                    let singleLabelCell = tableView.dequeueReusableCell(withIdentifier: "SingleLabelTableViewCellID", for: indexPath) as! SingleLabelTableViewCell
                     singleLabelCell.titleLabel.text = whatsappCallsUsageArray[indexPath.row]
    
        } else {
            
            let storageCell = tableView.dequeueReusableCell(withIdentifier: "StorageTableViewCellID", for: indexPath) as! StorageTableViewCellstorageCell.titleLabel.text = storageNameLabel[indexPath]
            return storageCell
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(48.0)
    }
    
    func action() {
        networkUsageTableView.register(SingleLabelTableViewCell.self,
                                         forCellReuseIdentifier: "SingleLabelTableViewCellID")
        networkUsageTableView.register(StorageTableViewCell.self,
                                         forCellReuseIdentifier: "StorageTableViewCellID")
    }

}
