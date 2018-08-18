//
//  MasterViewController.swift
//  ShowImageByUrl
//
//  Created by admin on 8/17/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var imageMaster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //tao Activity Indicator
        let myActivityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
        //vi tri cua Activity
        myActivityIndicator.center = view.center
        //an khi stop
        myActivityIndicator.hidesWhenStopped = false
        
        myActivityIndicator.startAnimating()
        view.addSubview(myActivityIndicator)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
