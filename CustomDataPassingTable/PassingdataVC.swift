//
//  PassingdataVC.swift
//  CustomDataPassingTableOperation
//
//  Created by nikhil boriwale on 4/26/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class PassingdataVC: UIViewController {

    @IBOutlet weak var imagepasstosecond: UIImageView!
    @IBOutlet weak var namepass: UILabel!
    @IBOutlet weak var sirnamepass: UILabel!
    
    
    var strlbl1 : String?
    var strlbl2 :String?
    var passimg : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        namepass.text = strlbl1
        sirnamepass.text = strlbl2
        imagepasstosecond.image = passimg

        
        // Do any additional setup after loading the view.
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
