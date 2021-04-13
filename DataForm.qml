import QtQuick 2.12
import QtQuick.Controls 2.12
import 'DataFormJS.js' as DataFormJS

Item {
    anchors.fill: parent

    Component.onCompleted: {
        DataFormJS.cargaInformation();
    }

    ListView {
        id: personalListView
        spacing: 5

        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            bottom: atrasButton.top
        }

        model: ListModel {}

        delegate: Text {
            anchors {
                left: parent.left
                right: parent.right
            }

            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter

            text: 'ID: ' + id + '\n' + 'Nombre: ' + nombre + '\n'
                  + 'Edad:' + edad
        }
    }

    Button {
        id: atrasButton
        text: 'ATRAS'
        height: 50

        anchors {
            left:  parent.left
            right: parent.right
            bottom: parent.bottom
        }

        onClicked: {
            stackView.push(inputForm);
        }
    }
}
