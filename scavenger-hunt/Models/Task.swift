//
//  Task.swift
//  Scavenger Hunt
//
//  Created by Kritika Pant on 01/26/25.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Go for a hike to have a nice break from your studies",
                 description: "Try going to a place where you can connect with nature"),
            Task(title: "Bring sweets for tommorow's family gathering",
                 description: "Bring chocolate to serve the guest tommorrow."),
            Task(title: "Grab fresh flowers",
                 description: "If you are around Trader's Joe or Sprouts, grab some fresh flowers")
        ]
    }
}
