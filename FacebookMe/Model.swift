//
//  Model.swift
//  FacebookMe
//
//  Created by 이유진 on 2021/08/19.
//

import UIKit

struct CellInfo {
    let name: String
    let imgname: String//imgName
    let image: UIImage?
    
    
    init(name: String,imgname: String){
        self.name = name
        self.imgname = imgname
        self.image = UIImage(named: imgname)
    }
}

