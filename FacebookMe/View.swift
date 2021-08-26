//
//  View.swift
//  FacebookMe
//
//  Created by 이유진 on 2021/08/19.
//

import UIKit

class ProfileCell: UITableViewCell {
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    @IBOutlet weak var chevImg: UIImageView!
}

class GeneralCell: UITableViewCell {
    @IBOutlet weak var iconImg: UIImageView!
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var chevImg: UIImageView!
}

class AddCell: UITableViewCell {//btn -> button 줄이지않기
    @IBOutlet weak var addButton: UIButton!
}

class LogOutCell: UITableViewCell {
    @IBOutlet weak var logOutButton: UIButton!
}
