//
//  AddContactViewController.swift
//  Contact
//
//  Created by Tim Meyerdiercks on 11.07.21.
//

import UIKit

class AddContactViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var finishButton: UIButton!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstNameTextField.endEditing(true)
        lastNameTextField.endEditing(true)
        phoneNumberTextField.endEditing(true)
    }
    
    
    // MARK: - Actions
    @IBAction func cancelButton_Tapped(_ sender: UIButton) {
    }
    
    @IBAction func finishButton_Tapped(_ sender: UIButton) {
    }
    
    


}
