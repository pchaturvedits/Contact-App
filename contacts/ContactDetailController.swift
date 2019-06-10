//
//  ContactDetailController.swift
//  contacts
//
//  Created by Manish Chaturvedi on 4/14/19.
//  Copyright © 2019 Manish Chaturvedi. All rights reserved.
//

import UIKit

class ContactDetailController: UITableViewController {
    var contact: Contact?
    
    // Outlets
    
   
    @IBOutlet weak var profileVie: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var streetAddressLabel: UILabel!
    
   
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var stateLabel: UILabel!

    @IBOutlet weak var zipLabel: UILabel!
    
    
    
    
    
    
override func viewDidLoad() {
    super.viewDidLoad()
    configureView()
}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureView(){
        guard let contact = contact else { return}
        
        profileVie.image = contact.image
        nameLabel.text = "\(contact.firstName) \(contact.lastName)"
            phoneNumberLabel.text = contact.phone
        emailLabel.text = contact.email
        streetAddressLabel.text = contact.street
        cityLabel.text = contact.city
        stateLabel.text = contact.state
        zipLabel.text = contact.zip
    }
}
