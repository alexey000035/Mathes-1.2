import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5


RowLayout{
    id:remotecontrol

    signal one()
    signal two()
    signal three()

    signal gameover()

    property int turn: 1 //текущий ход
    property int count: 0 //количество ходов
    property string winner: ""

    Item {
        id:tools
        Text {
            text: "Убрать спичек:"
            color: "white"
            font.pixelSize: 30
            anchors.bottom: second.top
            anchors.bottomMargin: 30
            anchors.horizontalCenter: second.horizontalCenter
        }
        Button {
            id:first
            width: 50
            height: 50
            text:  "1"
            anchors.right: second.left
            anchors.rightMargin: 10
            font.pixelSize: 30

            // При нажатии вызываем функцию и увеличиваем счетчик ходов, проверяя его на четность, чтобы изменить текущий ход
            // А также проверяем количество спичек на конец игры
            onClicked: {one();count++;if(count % 2 == 0 && count != 0) turn++;nextturn();if(gameplay.value <= 0) gameover()}
        }
        Button {
            id:second
            width: 50
            height: 50
            text:  "2"
            anchors.centerIn: parent
            font.pixelSize: 30

            onClicked: {two();count++;if(count % 2 == 0 && count != 0) turn++;nextturn();if(gameplay.value <= 0) gameover()}

        }
        Button {
            id:third
            width: 50
            height: 50
            text:  "3"
            anchors.left: second.right
            anchors.leftMargin: 10
            font.pixelSize: 30

            onClicked: {three();count++;if(count % 2 == 0 && count != 0) turn++;nextturn();if(gameplay.value <= 0) gameover()}

        }

        Text {
            id: player1
            font.pixelSize: 40
            anchors.right: first.left
            anchors.rightMargin: 100
            color: "white"
            property string name: "Hunter"
            text: qsTr(name) + " " + turn
        }
        Text {
            id: player2
            font.pixelSize: 40
            anchors.left: third.right
            anchors.leftMargin: 100
            color: "white"
            property string name: "Bonbon"
            text: qsTr(name) + " " + turn
        }

        Text {
            id: nameturn
            anchors.horizontalCenter: player1.left
            anchors.top: player1.bottom
            anchors.topMargin: 75
            font.pixelSize: 50
            color: "white"
            property string name: ""
            text: "Ход игрока: " + qsTr(name)
        }

    }

    function playerturn() {
        if(gameplay.player == 0)
            nameturn.name = player1.name
        else
            nameturn.name = player2.name
    }

    function nextturn() {
        if(nameturn.name == player1.name)
            nameturn.name = player2.name
        else
            nameturn.name = player1.name
        winner = nameturn.name
    }

    function name1() {
        player1.name = change.player1newname
    }
    function name2() {
        player2.name = change.player2newname
    }
}
