//
//  ItemData+CoreDataProperties.swift
//  Shelton
//
//  Created by Александр Иванов on 02.11.2021.
//
//

import Foundation
import CoreData


extension ItemData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemData> {
        return NSFetchRequest<ItemData>(entityName: "ItemData")
    }

    @NSManaged public var action: Int16
    @NSManaged public var name: String?
    @NSManaged public var checkPoint: CheckPoint?

}

extension ItemData : Identifiable {

}
