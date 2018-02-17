import AppKit

final class ApplicationController : NSObject, NSApplicationDelegate {
    // This member variable is required to prevent the window from being garbage collected
    // at the end of applicationDidFinishLaunching
    var mainWindow : NSWindow?

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Create the window
        let window = NSWindow(contentRect: NSRect(x: 0, y: 0, width: 800, height: 600),
                              styleMask: [.titled, .closable, .resizable, .miniaturizable],
                              backing: NSWindow.BackingStoreType.buffered,
                              defer: false)
        window.orderFrontRegardless()
        window.title = "Hello, world!"

        // Store the window to prevent it from being garbage collected at the end of this function
        self.mainWindow = window

        // Make this app take focus
        NSApp.activate(ignoringOtherApps: true)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

// Create the shared application object
let app = NSApplication.shared

// Make the app activate like a "regular" app
app.setActivationPolicy(.regular)

// Set the app's delegate
app.delegate = ApplicationController()

// Run the app
app.run()
