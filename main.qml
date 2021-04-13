import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.LocalStorage 2.12
import QtQuick.Controls 2.12
import 'JSMain.js' as JSMain

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string dbId: "MyDatabase"
    property string dbVersion: '1.0'
    property string dbDescription: 'Database application'
    property int dbSize: 100000
    property var db


    Component.onCompleted: {
        JSMain.ejecutaConfigurationInicial()
    }

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: inputForm
    }

    Component {
        id: dataForm
        DataForm {}
    }

    Component {
        id: inputForm
        InputForm {}
    }
}
