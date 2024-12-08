import QtQuick 2.0

Item {
    property var hvacController

    Rectangle {
        id: decrementButton
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }
        width: height / 2
        color: "black"
        Text {
            id: decrementText
            anchors.centerIn: parent
            text: "<"
            color: "#f0eded"
            font.pixelSize: 12
        }
        MouseArea {
            anchors.fill: parent
            onClicked: hvacController.incrementTargetTemperature(-1);
        }
    }
    Text {
        id: tempText
        anchors {
            left: decrementButton.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter
        }
        color: "#f0eded"
        font.pixelSize: 24
        text: hvacController.targetTemperature;
    }
    Rectangle {
        id: incrementButton
        anchors {
            left: tempText.right
            top: parent.top
            leftMargin: 15
            bottom: parent.bottom
        }
        width: height / 2
        color: "black"
        Text {
            id: incrementText
            anchors.centerIn: parent
            text: ">"
            color: "#f0eded"
            font.pixelSize: 12
        }
        MouseArea {
            anchors.fill: parent
            onClicked: hvacController.incrementTargetTemperature(+1);
        }
    }
}
