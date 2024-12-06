import QtQuick 2.14

Rectangle {
    id: leftScreen
    anchors {
        left: parent.left
        right: rightScreen.left
        bottom: bottomBar.top
        top: parent.top
    }
    color: "white"

    Image {
        id: carRender
        anchors.centerIn: parent
        source: "../assets/carRender.jpg"
        width: parent.width * 0.95
        fillMode: Image.PreserveAspectFit
    }
}
