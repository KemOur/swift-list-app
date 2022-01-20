//
//  DetailsViewController.swift
//  ContactApp
//
//  Created by User on 20/01/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var firsnameLabel: UILabel!
    
    @IBOutlet weak var lastnameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    var contact : Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(contact)
        
        firsnameLabel.text = "Prénom: \(contact?.firstName ?? "")"
        lastnameLabel.text = "Prénom: \(contact?.lastName ?? "")"
        
        if let age = contact?.age {
            ageLabel.text = "Âge: \(age) ans"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
