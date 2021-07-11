//
//  Contact+CoreDataProperties.swift
//  Contact
//
//  Created by Tim Meyerdiercks on 11.07.21.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var phoneNumber: Int16

}

extension Contact : Identifiable {

}
