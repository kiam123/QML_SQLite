import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.LocalStorage 2.12
import 'InpuFormJS.js' as InputFormJS

Item {
    anchors.fill: parent
    id: parentObject

    Column {
        anchors.fill: parent
        spacing: 2

        Row {
            spacing: 2

            Label {
                id: nombreLabel
                text: "Nombre"
            }

            TextField {
                id: nombreTextField
                width: parentObject.width - nombreLabel.width
            }
        }

        Row {
            spacing: 2

            Label {
                id: edadLabel
                text: 'Edad'
            }

            TextField {
                id: edadTextField
                width: parentObject.width - edadLabel.width
            }
        }

        Button {
            id: guardarButton
            text: 'GUARDAR'
            height: 50
            width: parent.width

            onClicked: {
                InputFormJS.guardaInformation()
            }
        }

        Button {
            id: atrasButton
            text: 'ATRAS'
            width: parent.width
            height: 50


            onClicked: {
                stackView.push(dataForm);
            }
        }
    }
}
