//
//  ViewController.swift
//  Contact
//
//  Created by Tim Meyerdiercks on 11.07.21.
//

import UIKit


// MARK: - Global Variablen
var contacts: [Contact] = []
let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext


class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var searchBarTextField: UISearchBar!
    @IBOutlet weak var contactsTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Create default test contact
        let defaultContact = Contact(context: context)
        defaultContact.firstName = "Max"
        defaultContact.lastName = "Mustermann"
        defaultContact.phoneNumber = "+49 123 45678910"
        
        contacts.append(defaultContact)
    }
    
    
    // MARK: - Actions
    @IBAction func addButton_Tapped(_ sender: UIButton) {
    }
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        // Setup cell style
        let contact = contacts[indexPath.row]
        
        if contact.firstName != nil && contact.lastName != nil {
            cell.textLabel?.text = contact.firstName! + " " + contact.lastName!
        }else if contact.firstName != nil {
            cell.textLabel?.text = contact.firstName!
        }else if contact.lastName != nil {
            cell.textLabel?.text = contact.lastName!
        }
        
        if contact.phoneNumber != nil {
            cell.detailTextLabel?.text = contact.phoneNumber!
        }
        
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    
}
