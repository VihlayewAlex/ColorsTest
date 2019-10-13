//
//  AppDelegate.swift
//  ColorsTest
//
//  Created by Alex on 13.10.2019.
//  Copyright © 2019 Alex. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var windows = [NSWindow]()
        
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        print(ColorsBridge.getInt())
        
        openStripWindows(number: 3)
    }
    
    func openStripWindows(number: Int) {
        for _ in 0..<3 {
            let contentView = StripView()

            // Create the window and set the content view.
            let window = NSWindow(
                contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
                styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
                backing: .buffered, defer: false)
            window.center()
            window.setFrameAutosaveName("Main Window")
            window.contentView = NSHostingView(rootView: contentView)
            window.level = .floating
            window.makeKeyAndOrderFront(nil)
            
            windows.append(window)
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }

}

