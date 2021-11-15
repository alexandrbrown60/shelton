//
//  CheckPoint+CoreDataProperties.swift
//  Shelton
//
//  Created by Александр Иванов on 02.11.2021.
//
//

import Foundation
import CoreData


extension CheckPoint {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CheckPoint> {
        return NSFetchRequest<CheckPoint>(entityName: "CheckPoint")
    }

    @NSManaged public var pathId: Int64
    @NSManaged public var attackStrenght: Int16
    @NSManaged public var health: Int16
    @NSManaged public var luck: Int16
    @NSManaged public var maxHealth: Int16
    @NSManaged public var gold: Int16
    @NSManaged public var food: Int16
    @NSManaged public var items: NSSet?

}

// MARK: Generated accessors for items
extension CheckPoint {

    @objc(addItemsObject:)
    @NSManaged public func addToItems(_ value: ItemData)

    @objc(removeItemsObject:)
    @NSManaged public func removeFromItems(_ value: ItemData)

    @objc(addItems:)
    @NSManaged public func addToItems(_ values: NSSet)

    @objc(removeItems:)
    @NSManaged public func removeFromItems(_ values: NSSet)

}

extension CheckPoint : Identifiable {

}
