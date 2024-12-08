import QtQuick 2.14


Rectangle {
    id: bottomBar
    anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
    }
    color: "black"
    height: parent.height / 12

    Image {
        id: carSettingsIcon
        source: "../assets/carIco.svg"
        anchors {
            left: parent.left
            leftMargin: 20
            verticalCenter: parent.verticalCenter
        }
        height: parent.height * 0.9
            fillMode: Image.PreserveAspectFit
    }

    HVACComponent {
        id: driverHVACComponent
        anchors {
            left: carSettingsIcon.right
            top: parent.top
            bottom: parent.bottom
            leftMargin: 150
        }
        hvacController: driverHVAC

    }

    HVACComponent {
        id: passengerHVACComponent
        anchors {
            right: parent.right
            top: parent.top
            bottom: parent.bottom
            rightMargin: 150
        }
        hvacController: passengerHVAC

    }
}

