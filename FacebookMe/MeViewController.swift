//
//  ViewController.swift
//  FacebookMe
//
//  Created by 이유진 on 2021/08/11.
//

import UIKit

class MeViewController: UIViewController{
    @IBOutlet weak var myTableView: UITableView!
    
    let sectionList: [String] = [" "," ","FAVORITES"," "," "]//섹션별 이름

    
    let basicList: [CellInfo] = [//두번째 섹션 데이터
        CellInfo(name: "Friends",imgname: "fb_friends"),
        CellInfo(name: "Events",imgname: "fb_events"),
        CellInfo(name: "Groups",imgname: "fb_groups"),
        CellInfo(name: "CMU",imgname: "fb_education"),
        CellInfo(name: "Town Hall",imgname: "fb_town_hall"),
        CellInfo(name: "Instant Games",imgname: "fb_games")
    
    ]
    
    let favoriteList: [CellInfo] = [//세번째 섹션 데이터
        CellInfo(name: "muck bang",imgname: " "),
        CellInfo(name: "K-pop",imgname: " ")
    ]
    
    let etcList: [CellInfo] = [//네번째 섹션 데이터
        CellInfo(name: "Settings",imgname: "fb_settings"),
        CellInfo(name: "Privacy Shortcuts",imgname: "fb_privacy_shortcuts"),
        CellInfo(name: "Help and Support",imgname: "fb_help_and_support")
        
    ]
    
  
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTableView.rowHeight = UITableView.automaticDimension
    }
    
  
    
}

extension MeViewController: UITableViewDataSource{
    //  UITableViewDataSource
    
    //섹션 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionList.count
    }
    
    //섹션 타이틀 반환
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionList[section]
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 1 {
            return " "
        }
        return ""
    }
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
    //셀 어떻게 보여줄까
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        switch indexPath.section {
        case 0://첫번째 섹션
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as! ProfileCell
            cell.profileImg?.image = UIImage(named: "Loopy")
            cell.nameLabel?.text = "이유진"
            cell.introLabel?.text = "iOS 개발자가 되고 싶습니다."
            cell.chevImg?.image = UIImage(systemName: "chevron.right")
            
            return cell
            
            
        case 1://두번째 섹션
            if indexPath.row == basicList.count {//두번째 섹션의 가장 마지막 셀, See More 버튼
                let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath) as! AddCell
                cell.addButton?.setTitle("See More...", for: .normal)
                return cell
                
            } else {//두번째 섹션의 마지막 셀을 제외한 셀
            let cell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath) as! GeneralCell
            cell.iconImg?.image = basicList[indexPath.row].image
            cell.menuLabel?.text = basicList[indexPath.row].name
                cell.chevImg?.image = UIImage(systemName: "chevron.right")
            return cell
            }
                
            
        case 2://세번째 섹션
                if indexPath.row == favoriteList.count {//세번째 섹션의 가장 마지막 셀, Add Favorite 버튼
                    let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath) as! AddCell
                    cell.addButton?.setTitle("Add Favorites...", for: .normal)
                    return cell
                    
                } else {//세번째 섹션의 마지막 셀을 제외한 셀
                    let cell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath) as! GeneralCell
                    cell.iconImg?.image = favoriteList[indexPath.row].image
                    cell.menuLabel?.text = favoriteList[indexPath.row].name
                    cell.chevImg?.image = UIImage(systemName: "chevron.right")
                    return cell
                }
            
            
        case 3:// 네번째 섹션
            let cell = tableView.dequeueReusableCell(withIdentifier: "generalCell", for: indexPath) as! GeneralCell
            cell.iconImg?.image = etcList[indexPath.row].image
            cell.menuLabel?.text = etcList[indexPath.row].name
            cell.chevImg?.image = UIImage(systemName: "chevron.right")
            return cell
            
            
        case 4:// 다섯번째 섹션
            let cell = tableView.dequeueReusableCell(withIdentifier: "logOutCell", for: indexPath) as! LogOutCell
            cell.logOutButton?.setTitle("Log Out",for: .normal)
            return cell
            
            
        default:
            return UITableViewCell()
            
        }
    }

}

extension MeViewController: UITableViewDelegate{
    //UITableViewDelegate
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
    }


}





