//
//  TableViewController.swift
//  ShowImageByUrl
//
//  Created by admin on 8/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let detailPhoto = segue.destination as? DetailViewController {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                detailPhoto.photo? =
//
//            }
//        }
//    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 8
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
            
        let urlString = "https://img00.deviantart.net/d115/i/2018/227/b/7/mystical_dream_by_ellysiumn-dck1gkt.jpg"
        DispatchQueue.global().async { //3
            let data =  NSData(contentsOf: URL(string: urlString)!)
            DispatchQueue.main.async { //4
                cell?.photoImage.image = UIImage(data: data! as Data)
                tableView.reloadData()
            }
        }
        return cell!

    }
    

    
}
