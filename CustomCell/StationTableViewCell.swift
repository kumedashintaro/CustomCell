//
//  StationTableViewCell.swift
//  CustomCell
//
//  Created by 久米田晋太郎 on 2020/09/06.
//  Copyright © 2020 Shintaro Kumeda. All rights reserved.
//

import UIKit

class StationTableViewCell: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var prefecture: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setCell(station: Station) {
        let dateFormater = DateFormatter()
        dateFormater.locale = Locale(identifier: "ja_JP")
        dateFormater.dateFormat = "yyyy/MM/dd HH:mm:ss"
        
       // var namename = stain.name as Date

        
        self.name.text = dateFormater.string(from: station.name as Date)
      self.prefecture.text = String(station.prefecture as Int)
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
