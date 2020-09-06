
//
//  Station.swift
//  CustomCell
//
//  Created by 久米田晋太郎 on 2020/09/06.
//  Copyright © 2020 Shintaro Kumeda. All rights reserved.
//

import Foundation

class Station : NSObject {
  var name: Date
  var prefecture: Int

  init(name: Date, prefecture: Int){
    self.name = name as Date
    self.prefecture = prefecture as Int
  }
}
