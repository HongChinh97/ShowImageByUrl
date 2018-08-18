//
//  TableViewController.swift
//  ShowImageByUrl
//
//  Created by admin on 8/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let cache = NSCache<NSString, ExpensiveObjectClass>()
    let myObject: ExpensiveObjectClass
    if let cachedVersion = cach.object
   
   
    override func viewDidLoad() {
        super.viewDidLoad()

        //Create Activity Indicator
        let myActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        
        // Position Activity Indicator in the center of the main view
        myActivityIndicator.center = view.center
        
        // If needed, you can prevent Acivity Indicator from hiding when stopAnimating() is called
        myActivityIndicator.hidesWhenStopped = false
        
        // Start Activity Indicator
        myActivityIndicator.startAnimating()
        
        // Call stopAnimating() when need to stop activity indicator
//        myActivityIndicator.stopAnimating()
        
        
        view.addSubview(myActivityIndicator)

       tableView.reloadData()
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
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        let urlString = "https://img00.deviantart.net/d115/i/2018/227/b/7/mystical_dream_by_ellysiumn-dck1gkt.jpg"
        DispatchQueue.global().async {
//            [weak self] in
            if let data = try? Data(contentsOf: URL(string: urlString)!) {
                if let image =  UIImage(data: data) {
                    DispatchQueue.main.async {
                        cell?.photoImage.image = image
                    }
                }
            }
        }
        return cell!
    }
//func displaySpinner(onView : UIView) -> UIView {
//    let spinnerView = UIView.init(frame: onView.bounds)
//    spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
//    let ai = UIActivityIndicatorView.init(activityIndicatorStyle: .whiteLarge)
//    ai.startAnimating()
//    ai.center = spinnerView.center
//    
//    DispatchQueue.main.async {
//        spinnerView.addSubview(ai)
//        onView.addSubview(spinnerView)
//    }
//    
//    return spinnerView
//}
//
//func removeSpinner(spinner :UIView) {
//    DispatchQueue.main.async {
//        spinner.removeFromSuperview()
//    }
//}
}

