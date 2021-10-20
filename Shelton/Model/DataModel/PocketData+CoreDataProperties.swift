//
//  PocketData+CoreDataProperties.swift
//  Shelton
//
//  Created by Александр Иванов on 15.10.2021.
//
//

import Foundation
import CoreData


extension PocketData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PocketData> {
        return NSFetchRequest<PocketData>(entityName: "PocketData")
    }

    @NSManaged public var gold: Int16
    @NSManaged public var food: Int16
    @NSManaged public var items: NSSet?
    @NSManaged public var checkPoint: CheckPoint?

}

// MARK: Generated accessors for items
extension PocketData {

    @objc(addItemsObject:)
    @NSManaged public func addToItems(_ value: ItemData)

    @objc(removeItemsObject:)
    @NSManaged public func removeFromItems(_ value: ItemData)

    @objc(addItems:)
    @NSManaged public func addToItems(_ values: NSSet)

    @objc(removeItems:)
    @NSManaged public func removeFromItems(_ values: NSSet)

}

extension PocketData : Identifiable {

}
