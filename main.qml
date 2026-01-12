import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.15
import "./components" as Components


Components.ApplicationWindow {
    id: applicationWindowId
    width: 720
    height: 480
    visible: true
    title: qsTr("Application Window Learning")
    Component.onCompleted: {
        console.log("instance completed", applicationWindowId);
    }
}

// Window {
//     id: mainWindow

//
    // ColumnLayout {
    //     spacing: 5
    //     anchors.centerIn: parent

    //     Components.MyText {
    //     }

    //     Components.MyLabel {
    //     }

    //     Components.MyTextField {
    //     }

    //     Components.MyTextArea {
    //     }

    //     Components.MyImage {
    //     }



    //     // 账号行
    //     RowLayout {
    //         spacing: 10
    //         Layout.alignment: Qt.AlignHCenter

    //         Label {
    //             id: accountLabelId
    //             text: qsTr("Account:")
    //             Layout.preferredWidth: 80
    //             Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
    //             font.pixelSize: 14
    //         }
    //         TextField {
    //             id: accountLineEditId
    //             text: "admin"
    //             placeholderText: "Input your account here"
    //             selectByMouse: true
    //             verticalAlignment: Text.AlignVCenter
    //         }
    //     }

    //     // 密码行
    //     RowLayout {
    //         spacing: 10
    //         Layout.alignment: Qt.AlignHCenter

    //         Label {
    //             id: passwordLabelId
    //             text: qsTr("Password:")
    //             Layout.preferredWidth: 80
    //             Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
    //             font.pixelSize: 14
    //         }
    //         TextField {
    //             id: passwordTextEditId
    //             text: "123456"
    //             placeholderText: "Input your password here"
    //             selectByMouse: true
    //             echoMode: TextInput.PasswordEchoOnEdit
    //             verticalAlignment: Text.AlignVCenter
    //         }
    //     }
    //     // Remember/AutoLogin/Login

    //     GridLayout {
    //         columns: 3
    //         columnSpacing: 5
    //         rowSpacing: 10

    //         // 第一行：账号
    //         Label {
    //             id: accountLabelId_grid
    //             text: qsTr("Account:")
    //             Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
    //             Layout.preferredWidth: 80
    //             font.pixelSize: 14
    //             Layout.columnSpan: 1
    //         }
    //         TextField {
    //             id: accountLineEditId_grid
    //             text: "admin"
    //             placeholderText: "Input your account here"
    //             selectByMouse: true
    //             verticalAlignment: Text.AlignVCenter
    //             Layout.columnSpan: 2
    //         }

    //         // 第二行：密码
    //         Label {
    //             id: passwordLabelId_grid
    //             text: qsTr("Password:")
    //             Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
    //             Layout.preferredWidth: 80
    //             font.pixelSize: 14
    //             Layout.columnSpan: 1
    //         }
    //         TextField {
    //             id: passwordTextEditId_grid
    //             text: "123456"
    //             placeholderText: "Input your password here"
    //             selectByMouse: true
    //             echoMode: TextInput.PasswordEchoOnEdit
    //             verticalAlignment: Text.AlignVCenter
    //             Layout.columnSpan: 2
    //         }

    //         // line3: login choice
    //         CheckBox {
    //             id: buttonRemember
    //             text: "remember"
    //             checkable: true
    //             checked: false
    //             onClicked: {
    //                 console.log("clicked:", buttonRemember.text, "isChecked:", buttonRemember.checked);
    //             }
    //         }
    //         CheckBox {
    //             id: buttonAutoLogin
    //             text: "auto login"
    //             checkable: true
    //             checked: false
    //             onClicked: {
    //                 console.log("clicked:", buttonAutoLogin.text, "isChecked:", buttonAutoLogin.checked);
    //             }
    //         }
    //         Button {
    //             id: loginBtn
    //             text: qsTr("Login")
    //             onClicked: {
    //                 console.log("Login with Account and password", accountLineEditId.text, passwordTextEditId.text);
    //             }
    //         }

    //         // nation line
    //         Label {
    //             id: country_id
    //             text: "Country"
    //         }

    //         RadioButton {
    //             id: country_america_id;
    //             text: "America";
    //         }

    //         RadioButton {
    //             id: country_china_id;
    //             text: "China";
    //         }

    //         RadioButton {
    //             id: country_japan_id;
    //             text: "Japan";
    //         }

    //     }
    // }
// }
