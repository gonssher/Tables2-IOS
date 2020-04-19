//
//  ChooseSiteViewController.swift
//  week82Tables
//
//  Created by Sherwin on 2020-03-04.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class ChooseSiteViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{

   var llistData = ["jays","bluejays","marile","toronto"]
    var siteDate = ["http://www.bluejays.com","http://www.torontomapleleafs.com","https://www.marlies.ca","https://www.torontofc.ca"]
    var imageData = ["jays.jpg","leafs.png","raptors.jpg","marlies.jpeg"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return llistData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      /*  let tableCell =  tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        tableCell.textLabel!.text = llistData[indexPath.row]
        */
        
        let tableCell : SiteCell = tableView.dequeueReusableCell(withIdentifier: "cell") as? SiteCell ?? SiteCell(style: .default, reuseIdentifier: "cell")
        let rowNume = indexPath.row
        tableCell.primaryLabel.text = llistData[rowNume]
        tableCell.secondaryLabel.text = siteDate[rowNume]
        
        let img = UIImage(named: imageData[rowNume] )
        tableCell.myImageView.image = img
        return tableCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let mainDelegate = UIApplication.shared.delegate as! AppDelegate mainDelegate.selectedURL = siteData[indexPath.row]
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  

}
