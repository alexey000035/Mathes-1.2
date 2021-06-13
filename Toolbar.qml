import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5


RowLayout{
    id:toolbar
    signal changeNames()
    signal start()
    signal rule()

    Item {
        id: lowpanel
        width: 300
        height: 300
        anchors.bottom: lowpanel.bottom
        Button{
            id:name
            width: 300
            height:50
            anchors.top: toolbar.top
            font.pixelSize: 16
            text: "Enter names"
            onClicked: {
                changeNames()
            }
        }
        Button {
            id:rules
            text: "Rules"
            width: 300
            height: 50
            anchors.top: name.bottom
            anchors.topMargin: 75
            font.pixelSize: 16
            onClicked: {
                rule()
            }
        }
        Button{
            id:st
            width: 300
            height: 50
            anchors.bottom: lowpanel.bottom
            font.pixelSize: 16
            text: "Start"
            onClicked: {
                start()
            }
        }
    }
}
