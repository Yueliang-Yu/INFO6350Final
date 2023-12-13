//
//  ViewController.swift
//  seattleImages
//
//  Created by 余玥良 on 2023/12/13.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let photos = ["seattle1", "seattle2", "seattle3", "seattle4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("seattleTableViewCell", owner: self)?.first as! seattleTableViewCell
        cell.imageView?.image = UIImage(named: "seattle\(indexPath.row)")
        cell.lblSeattle.text = photos[indexPath.row]
        return cell
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: <#T##IndexPath#>)
        //cell.textLabel?.text = arr[indexPath.row]
        //return cell
    }
}

