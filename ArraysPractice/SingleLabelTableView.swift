//
//  SingleLabelTableView.swift
//  ArraysPractice
//
//  Created by Reuben Simphiwe Kuse on 2023/04/08.
//

import Foundation
import UIKit

class SingleLabelTableViewCell: UITableViewCell {

    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: UIFont.Weight.regular)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        accessoryType = .disclosureIndicator
        setupUI()
    }
    
    func setupUI() {
        addSubview(titleLabel)


        titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
        
    }
    
}
