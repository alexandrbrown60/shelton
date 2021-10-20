//
//  HeroData+CoreDataProperties.swift
//  Shelton
//
//  Created by Александр Иванов on 15.10.2021.
//
//

import Foundation
import CoreData


extension HeroData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HeroData> {
        return NSFetchRequest<HeroData>(entityName: "HeroData")
    }

    @NSManaged public var health: Int16
    @NSManaged public var luck: Int16
    @NSManaged public var attackStrenght: Int16
    @NSManaged public var maxHealth: Int16
    @NSManaged public var checkPoint: CheckPoint?

}

extension HeroData : Identifiable {

}
