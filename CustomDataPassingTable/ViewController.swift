//
//  ViewController.swift
//  CustomDataPassingTable
//
//  Created by nikhil boriwale on 4/26/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var mytable: UITableView!
    var arrayname = ["A","b","C","D"]
    var arraysirname = ["E","F","G","H"]
 var arrimg = [#imageLiteral(resourceName: "c5"), #imageLiteral(resourceName: "c6"),#imageLiteral(resourceName: "c7"), #imageLiteral(resourceName: "c4"),#imageLiteral(resourceName: "c8"), #imageLiteral(resourceName: "c2"),#imageLiteral(resourceName: "c3"), #imageLiteral(resourceName: "c1")]    // type  "image literal"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return arrayname.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: customcell = (tableView.dequeueReusableCell(withIdentifier: "cell") as! customcell)
        cell.lblname.text = arrayname[indexPath.row]
        cell.lblsirname.text = arraysirname[indexPath.row]
        cell.profileimage.image = arrimg[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let passingdata : PassingdataVC = self.storyboard?.instantiateViewController(withIdentifier: "PassingdataVC") as! PassingdataVC
        
        passingdata.strlbl1 = arrayname[indexPath.row]
        passingdata.strlbl2 = arraysirname[indexPath.row]
        passingdata.passimg = arrimg[indexPath.row]
        self.navigationController?.pushViewController(passingdata, animated: true)
    
    }
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            arrayname.remove(at: indexPath.row)
            arraysirname.remove(at: indexPath.row)
            arrimg.remove(at: indexPath.row)
            mytable.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

