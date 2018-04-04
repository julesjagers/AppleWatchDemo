//
//  TimerInterfaceController.swift
//  AppleWatchDemo WatchKit Extension
//
//  Created by Leon Stoffels on 4/4/18.
//  Copyright © 2018 Jules Jagers. All rights reserved.
//

import WatchKit
import Foundation


class TimerInterfaceController: WKInterfaceController {

    @IBOutlet var timer: WKInterfaceTimer!
    private var timerIsActive = false;
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        timer.start()
        timerIsActive = true;
    }

    @IBAction func touchedTimer(_ sender: Any) {
        if (timerIsActive) {
            timer.stop()
            let time  = Date(timeIntervalSinceNow: 0.0)
            timer.setDate(time)
            timer.start()
        } else {
            timer.start()
        }
        timerIsActive = !timerIsActive
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
