//
//  ViewController.swift
//  FacebookMe
//
//  Created by 이유진 on 2021/08/11.
//

import UIKit

class MeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    
    let basicList: [CellInfo] = [
        CellInfo(name: "Friends",imgname: "fb_friends"),
        CellInfo(name: "Events",imgname: "fb_events"),
        CellInfo(name: "Groups",imgname: "fb_groups"),
        CellInfo(name: "CMU",imgname: "fb_education"),
        CellInfo(name: "Town Hall",imgname: "fb_town_hall"),
        CellInfo(name: "Instant Games",imgname: "fb_games")
    
    ]
    
    let favoriteList: [CellInfo] = [
        CellInfo(name: "muck bang",imgname: " "),
        CellInfo(name: "K-pop",imgname: " ")
    ]
    
    let etcList: [CellInfo] = [
        CellInfo(name: "Settings",imgname: "fb_settings"),
        CellInfo(name: "Privacy Shortcuts",imgname: "fb_privacy_shortcuts"),
        CellInfo(name: "Help and Support",imgname: "fb_help_and_support")
        
    ]
    
    let sectionList: [String] = [" "," ","FAVORITES"," "," "]
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.rowHeight = UITableView.automaticDimension
    }
    
    //섹션 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionList.count
    }
    
    //섹션 타이틀 반환
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionList[section]
    }
    
    
    
    
    //  UITableViewDataSource
    
    //셀 몇 개
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        } else if section == 1{
            return basicList.count + 1
        } else if section == 2{
            return favoriteList.count + 1
        } else if section == 3{
            return etcList.count
        } else if section == 4{
            return 1
        } else {
            return 0
        }
        
    }
    //어떻게 보여줄까
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as! ProfileCell
            cell.profileImg?.image = UIImage(named: "Loopy")
            cell.nameLabel?.text = "이유진"
            cell.introLabel?.text = "iOS 개발자가 되고 싶습니다."
            cell.chevImg?.image = UIImage(systemName: "chevron.right")
            
            return cell
            
        case 1:
            if indexPath.row == basicList.count {
                let cell = tableView.dequeueReusableCell(withIdentifier: "btnCell", for: indexPath) as! BtnCell
                cell.addBtn?.setTitle("See More...", for: .normal)
                return cell
                
            } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath) as! GeneralCell
            cell.iconImg?.image = basicList[indexPath.row].image
            cell.menuLabel?.text = basicList[indexPath.row].name
                cell.chevImg?.image = UIImage(systemName: "chevron.right")
            return cell
            }
                
        case 2:
                if indexPath.row == favoriteList.count {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "btnCell", for: indexPath) as! BtnCell
                    cell.addBtn?.setTitle("Add Favorites...", for: .normal)
                    return cell
                    
                } else {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath) as! GeneralCell
                    cell.iconImg?.image = favoriteList[indexPath.row].image
                    cell.menuLabel?.text = favoriteList[indexPath.row].name
                    cell.chevImg?.image = UIImage(systemName: "chevron.right")
                    return cell
                }
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath) as! GeneralCell
            cell.iconImg?.image = etcList[indexPath.row].image
            cell.menuLabel?.text = etcList[indexPath.row].name
            cell.chevImg?.image = UIImage(systemName: "chevron.right")
            return cell
            
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "logOutCell", for: indexPath) as! LogOutCell
            cell.logOutBtn?.setTitle("Log Out", for: .normal)
            return cell
            
        default:
            return UITableViewCell()
            
        }
    }

  
    //UITableViewDelegate
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
    }


}

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

class BtnCell: UITableViewCell {
    @IBOutlet weak var addBtn: UIButton!
}

class LogOutCell: UITableViewCell {
    @IBOutlet weak var logOutBtn: UIButton!
}


struct CellInfo {
    let name: String
    let imgname: String
    let image: UIImage?
    
    
    init(name: String,imgname: String){
        self.name = name
        self.imgname = imgname
        self.image = UIImage(named: imgname)
    }
}

