//
//  ViewController.swift
//  ContactApp
//
//  Created by User on 20/01/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

        var contacts: [Contact] =  [
            Contact(firstName: "Niska", lastName: "Charo", age: 10),
            Contact(firstName: "Jul", lastName: "Julien", age: 20),
            Contact(firstName: "Karris", lastName: "Kar", age: 30),
            Contact(firstName: "MDH", lastName: "Mohamed", age: 40),
            Contact(firstName: "Koba L D", lastName: "Koko", age: 50),
            Contact(firstName: "PNL", lastName: "peace n love", age: 60),
            Contact(firstName: "Gims", lastName: "Maitre", age: 70),
            Contact(firstName: "Stromae", lastName: "Maestro", age: 80),
            Contact(firstName: "Gazo", lastName: "Zoga", age: 90),
            Contact(firstName: "La crime", lastName: "Mecri", age: 100)
        ]
    
    var selectedContact : Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailsViewController{
            detailVC.contact = selectedContact
        }
    }
    
    //Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        self.selectedContact = contacts[indexPath.row]
        return indexPath
    }
    
    //Datasource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        
        if let firstName = contact.firstName, let lastName = contact.lastName {
            cell.textLabel?.text = "\(firstName) \(lastName)"

        }
        return cell
    }
    
}

