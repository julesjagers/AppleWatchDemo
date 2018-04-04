//
//  PickerInterfaceController.swift
//  AppleWatchDemo WatchKit Extension
//
//  Created by Leon Stoffels on 4/4/18.
//  Copyright © 2018 Jules Jagers. All rights reserved.
//

import WatchKit
import Foundation


class PickerInterfaceController: WKInterfaceController {
    
    let pickerItems = ["Separator","Menu","Menu item", "Activity ring"]

    @IBOutlet var picker: WKInterfacePicker!
    
    @IBOutlet var selectedpickerItemLabel: WKInterfaceLabel!
    
    @IBAction func pickerAction(_ value: Int) {
        picker.setSelectedItemIndex(value)
        selectedpickerItemLabel.setText("Selected: \(pickerItems[value])")
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        var items = [WKPickerItem]()
        for item in pickerItems{
            let newItem = WKPickerItem()
            newItem.title = item
            items.append(newItem)
        }
        picker.setItems(items)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
