import QtQuick
import QtQuick.Controls


Window {
    width: 1080
    height: 720
    visible: true
    title: qsTr("Currency Conversion")
    color: "black"

    function currencyConversion () {
        let money = parseFloat(amountField.text);
        if (isNaN(money)) {
            console.log("Invalid amount entered");
            return;
        }

        if (targetCurrencyComboBox.currentText === "USD") {
            finalMoney.text = (money * 84.72).toString();
        } else if (targetCurrencyComboBox.currentText === "IDR") {
            console.log("Selected IDR");
            finalMoney.text = (money * 0.0053).toString();
        } else if (targetCurrencyComboBox.currentText === "EUR") {
            console.log("Selected EUR");
            finalMoney.text = (money * 89.04).toString();
        }
    }


    Rectangle {
        width: parent.width /2.5
        height: parent.height / 3.5
        color: "white"
        x: parent.width / 15
        anchors {
            verticalCenter: parent.verticalCenter
        }
        ComboBox {
            id: targetCurrencyComboBox
            editable: true
            width: 250
            height:40
            model: ListModel {
                id: model
                ListElement { text: "USD" }
                ListElement { text: "EUR" }
                ListElement { text: "IDR" }
            }
            anchors {
                        top: parent.top
                        topMargin: 20
                        horizontalCenter: parent.horizontalCenter
            }
        }
        TextField {
            id: amountField
            width: 200
            height: 40
            placeholderText: "Enter amount"
            anchors {
                horizontalCenter: parent.horizontalCenter
                verticalCenter: parent.verticalCenter
            }
        }
        Button {
            text: "Convert To INR"
            width: 100
            height: 40
            y: parent.height / 1.4
            anchors {
                topMargin: 20
                horizontalCenter: parent.horizontalCenter
            }
            onClicked: {
                currencyConversion();
            }
        }


    }

    Rectangle {
        width: parent.width /2.5
        height: parent.height / 3.5
        color: "white"
        x: parent.width / 2
        anchors {
            verticalCenter: parent.verticalCenter
        }

        Text {
            id: finalMoney
            anchors.centerIn: parent
            text: "INR Currency Will Be Displayed Here"
            color: "black"
            font.pixelSize: 16
            font.bold: true
            font.family: "Arial"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
