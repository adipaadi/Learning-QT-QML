import QtQuick 2.0

Rectangle {
    id: navigationBox
    radius: 5
    color: "#f0f0f0"
    anchors {
        left: lockIcon.left
        top: lockIcon.bottom
        topMargin: 15
    }
    width: parent.width * 1/3
    height: parent.height * 1/12
}
