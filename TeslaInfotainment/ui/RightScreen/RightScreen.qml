import QtQuick 2.14
import QtPositioning 5.11
import QtLocation 5.11


Rectangle {
    id: rightScreen
    anchors {
        right: parent.right
        bottom: bottomBar.top
        top: parent.top
    }

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        anchors.fill: parent
        zoomLevel: 14
        plugin: mapPlugin
        center: QtPositioning.coordinate(33.9342, 75.1137)
    }

    Image {
        id: lockIcon
        anchors {
            top: parent.top
            left: parent.left
            margins: 20
        }

        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
        source: (systemHandler.carLocked ? "../assets/lock.svg" : "../assets/unlock.svg")

        MouseArea {
            anchors.fill: parent
            onClicked: systemHandler.setCarLocked(!systemHandler.carLocked)
        }
    }
    Text {
        id: outdoorTempDisplay
        anchors {
            left: lockIcon.right
            bottom: lockIcon.bottom
            leftMargin: 40
        }

        font {
            bold: true
            pixelSize: 14
        }
        color: "black"
        text: systemHandler.outdoorTemp + "°C"
    }

    Text {
        id: userName
        anchors {
            left: outdoorTempDisplay.right
            bottom: lockIcon.bottom
            leftMargin: 40
        }

        font {
            bold: true
            pixelSize: 14
        }
        color: "black"
        text: systemHandler.userName
    }

    NavigationBox {
        Image {
            source: "../assets/search.svg"
            id: searchIcon

            anchors {
                left: parent.left
                leftMargin: 25
                verticalCenter: parent.verticalCenter
            }
            height: parent.height * 0.45
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: navPlaceholder
            visible: navInput.text === ""
            color: "#373737"
            text: "Navigate"
            anchors {
                verticalCenter: parent.verticalCenter
                left: searchIcon.right
                leftMargin: 20
            }
        }

        TextInput {
            id: navInput
            clip: true
            anchors {
                top: parent.top
                bottom: parent.bottom
                right: parent.right
                left: searchIcon.right
                leftMargin: 20
            }
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16
        }
    }

    width: parent.width * 2/3
}
