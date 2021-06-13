import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

RowLayout{
    id:remotecontroltop

    width: 1920

    signal newgame()

        Button {
            width: 200
            id:new_game
            font.pixelSize: 30
            text: "New game"
            palette {button: "cyan"}
            anchors.left: remotecontroltop.left
            onClicked: {
                newgame()
            }
        }

        Button {
            width: 150
            id:out
            font.pixelSize: 30
            text: "Out"
            palette {button: "red"}
            anchors.left: new_game.right
            onClicked: Qt.quit()
        }

        Text {
            id: countcandle
            property string name: gameplay.value
            font.pixelSize: 45
            color: "white"
            anchors.left: out.right
            anchors.leftMargin: 100
            text: "Количество спичек " + qsTr(name)
        }
    Button {
        id:fs
        Rectangle {
            color: "lightgreen"
            anchors.fill: parent
        }

        text: "fullscreen"
        anchors.right: remotecontroltop.right
        onClicked: showFullScreen()
    }
    Button {
        id: ns
        Rectangle {
            color: "lightsalmon"
            anchors.fill: parent
        }
        text: "window"
        implicitWidth: fs.width
        implicitHeight: fs.height
        anchors.right: fs.left
        onClicked: showNormal()

   }

}
