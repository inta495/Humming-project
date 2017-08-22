// This is an example Custom Command Qml file. You have full access to the entire Qml language
// for creating any user interface you like. From the ui you can affect the following changes
// with respect to your vehicle:
// 1) Sending COMMAND_LONG commands out over mavlink using QGCButton control
// 2) Modifying parameters
//
// When developing custom Qml file implementations. You must restart QGroundControl to pick up
// the changes. You need to do this even if you select Clear Qml file. Not sure what at the this
// point. Qt must be caching the files somewhere.

import QtQuick 2.2
import QGroundControl.Controls 1.0
import QGroundControl.FactSystem 1.0
import QGroundControl.FactControls 1.0
import QGroundControl.Controllers 1.0
import QGroundControl.ScreenTools   1.0

FactPanel {
 id: panel
 height: ScreenTools.defaultFontPixelWidth * 100
 width:  ScreenTools.defaultFontPixelWidth * 80
 property var qgcView: null 
 CustomCommandWidgetController { id: controller; factPanel: panel }
 // Your own custom changes start here - everything else above is always required
 Column {
 spacing: 20
 QGCButton {
 text: "Start humming system"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 4, 0, 0, 0, 0, 0, 0)
 }
 QGCButton {
 text: "Go to home position (0.1,0.2)"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 5, 0.1, 0.2, 0, 0, 0, 0)
 }
 QGCButton {
 text: "Go to home position (0,0)"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 1, 0, 0, 0, 0, 0, 0)
 }
 QGCButton {
 text: "Liquid position 0.5"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 6, 0, 0, 0.5, 0, 0, 0)
 }	
 QGCButton {
 text: "Liquid back"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 2, 0, 0, 0, 0, 0, 0)
 }
 QGCButton {
 text: "probe position 0.5"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 7, 0, 0, 0, 0.5, 0, 0)
 }	
 QGCButton {
 text: "Probe back"
 width:      ScreenTools.defaultFontPixelWidth * 23
 onClicked: controller.sendCommand(1, 0, 0, 3, 0, 0, 0, 0, 0, 0)
 }
 } 
 // Your own custom changes end here - everything else below is always required
}