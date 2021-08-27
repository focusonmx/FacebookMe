//
//  View.swift
//  FacebookMe
//
//  Created by 이유진 on 2021/08/19.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    static let cellId = "profileCell"
    
    let profileImg = UIImageView()
    let nameLabel = UILabel()
    let introLabel = UILabel()
    let chevImg = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){
        self.addSubview(profileImg)
        self.addSubview(nameLabel)
        self.addSubview(introLabel)
        self.addSubview(chevImg)
        
        profileImg.translatesAutoresizingMaskIntoConstraints = false
        profileImg.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        profileImg.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        profileImg.widthAnchor.constraint(equalToConstant: 60).isActive = true
        profileImg.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leadingAnchor.constraint(equalTo: profileImg.trailingAnchor,constant: 10).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor,constant: -10).isActive = true
        nameLabel.font = UIFont.systemFont(ofSize: 20)
     
        
        introLabel.translatesAutoresizingMaskIntoConstraints = false
        introLabel.leadingAnchor.constraint(equalTo: profileImg.trailingAnchor,constant: 10).isActive = true
        introLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor,constant: 10).isActive = true
        introLabel.font = UIFont.systemFont(ofSize: 10)
        
        chevImg.translatesAutoresizingMaskIntoConstraints = false
        chevImg.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        chevImg.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        chevImg.widthAnchor.constraint(equalToConstant: 10).isActive = true
        chevImg.heightAnchor.constraint(equalToConstant: 15).isActive = true
        chevImg.tintColor=UIColor.gray
        
    }

    
//    @IBOutlet weak var profileImg: UIImageView!
//    @IBOutlet weak var nameLabel: UILabel!
//    @IBOutlet weak var introLabel: UILabel!
//    @IBOutlet weak var chevImg: UIImageView!
}

class GeneralCell: UITableViewCell {
    
    static let cellId = "generalCell"
    let iconImg = UIImageView()
    let menuLabel = UILabel()
    let chevImg = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func layout(){
        self.addSubview(iconImg)
        self.addSubview(menuLabel)
        self.addSubview(chevImg)
        
        iconImg.translatesAutoresizingMaskIntoConstraints = false
        iconImg.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        iconImg.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        iconImg.widthAnchor.constraint(equalToConstant: 15).isActive = true
        iconImg.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        menuLabel.translatesAutoresizingMaskIntoConstraints = false
        menuLabel.leadingAnchor.constraint(equalTo: iconImg.trailingAnchor,constant: 10).isActive = true
        menuLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
       // menuLabel.font = UIFont.systemFont(ofSize: 10)
     
        chevImg.translatesAutoresizingMaskIntoConstraints = false
        chevImg.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20).isActive = true
        chevImg.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        chevImg.widthAnchor.constraint(equalToConstant: 10).isActive = true
        chevImg.heightAnchor.constraint(equalToConstant: 15).isActive = true
        chevImg.tintColor=UIColor.gray
        
    }
//    @IBOutlet weak var iconImg: UIImageView!
//    @IBOutlet weak var menuLabel: UILabel!
//    @IBOutlet weak var chevImg: UIImageView!
}

class AddCell: UITableViewCell {
    static let cellId = "addCell"
    
    let addButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func layout(){
        self.addSubview(addButton)
       
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 45).isActive = true
        addButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        addButton.heightAnchor.constraint(equalToConstant: 15).isActive = true
        addButton.setTitleColor( UIColor(red: 66.0/255, green: 103.0/255, blue: 178.0/255, alpha: 1.0), for: .normal)
   
    }
//    @IBOutlet weak var addButton: UIButton!
}

class LogOutCell: UITableViewCell {
    static let cellId = "logOutCell"
    
    let logOutButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func layout(){
        self.addSubview(logOutButton)
       
        
        logOutButton.translatesAutoresizingMaskIntoConstraints = false
        logOutButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        logOutButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        logOutButton.setTitleColor(UIColor.red, for: .normal)
   
    }
//    @IBOutlet weak var logOutButton: UIButton!
}
