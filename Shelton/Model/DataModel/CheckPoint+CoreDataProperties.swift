//
//  CheckPoint+CoreDataProperties.swift
//  Shelton
//
//  Created by Александр Иванов on 15.10.2021.
//
//

import Foundation
import CoreData


extension CheckPoint {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CheckPoint> {
        return NSFetchRequest<CheckPoint>(entityName: "CheckPoint")
    }

    @NSManaged public var pathId: Int64
    @NSManaged public var hero: HeroData?
    @NSManaged public var pocket: PocketData?

}

extension CheckPoint : Identifiable {

}
