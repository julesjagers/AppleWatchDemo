//
//  ActivityRingInterfaceController.swift
//  AppleWatchDemo WatchKit Extension
//
//  Created by Jules Jagers on 04-04-18.
//  Copyright © 2018 Jules Jagers. All rights reserved.
//

import WatchKit
import Foundation
import HealthKit

class ActivityRingInterfaceController: WKInterfaceController {

    @IBOutlet var activityRing: WKInterfaceActivityRing!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate(){
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()


        
        let activitySummary: HKActivitySummary = HKActivitySummary()
        activitySummary.activeEnergyBurned = HKQuantity(unit: HKUnit.smallCalorie(), doubleValue: 100.0)
        
        activityRing.setActivitySummary(activitySummary, animated: true)
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
