//
//  ViewController.swift
//  CustomCell
//
//  Created by 久米田晋太郎 on 2020/09/06.
//  Copyright © 2020 Shintaro Kumeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet var stationList: UITableView!
    
    var stations:[Station] = [Station]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stationList.dataSource = self
        stationList.delegate = self
        stationList.register(UINib(nibName: "StationTableViewCell", bundle: nil), forCellReuseIdentifier: "StationTableViewCell")
        self.setupStations()
        
        
        
    }
    
    
    func setupStations() {
        
        
        let date = Date()
        
      stations = [Station(name: date, prefecture: 1), Station(name: Date(), prefecture: 2), Station(name: Date(), prefecture: 3) ];
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stations.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "StationTableViewCell", for: indexPath ) as! StationTableViewCell

        cell.setCell(station: stations[indexPath.row])

        return cell
        
       }


}

