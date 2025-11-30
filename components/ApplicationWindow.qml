import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import "../components" as Components
import com.example 1.0

ApplicationWindow {
    id: mainWindow
    width: 400
    height: 300
    visible: true
    title: "Tab Example"

    ColumnLayout {
        anchors.fill: parent
        spacing: 0


        // 标签栏（类似QTabWidget）
        TabBar {
            id: tabBar
            Layout.fillWidth: false
            property string unselectedGrey: "#9F9F9F"

            background: Rectangle {
                color: "lightgray"
            }

            TabButton {
                text: "0. 绝对"
                property int myindex: 0;
                background: Rectangle {
                    color: tabBar.currentIndex === parent.myindex ? "white" : tabBar.unselectedGrey;
                    border.color: tabBar.currentIndex === parent.myindex ? "cyan" : "white";
                    radius: 15;
                    border.width: 5
                }

                contentItem: Text {
                    text: parent.text;
                    font: parent.font;
                    color: "black";  // 固定为黑色确保可读性
                    horizontalAlignment: Text.AlignHCenter;
                    verticalAlignment: Text.AlignVCenter;
                }
            }
            TabButton {
                text: "1. 垂直"
                property int myindex: 1;
                background: Rectangle {
                    color: tabBar.currentIndex === parent.myindex ? "white" : tabBar.unselectedGrey;
                    border.color: tabBar.currentIndex === parent.myindex ? "cyan" : "white";
                    radius: 15;
                    border.width: 5
                }

                contentItem: Text {
                    text: parent.text;
                    font: parent.font;
                    color: "black";  // 固定为黑色确保可读性
                    horizontalAlignment: Text.AlignHCenter;
                    verticalAlignment: Text.AlignVCenter;
                }
            }

            TabButton {
                text: "2. 网格"
                property int myindex: 2;
                background: Rectangle {
                    color: tabBar.currentIndex === parent.myindex ? "white" : tabBar.unselectedGrey;
                    border.color: tabBar.currentIndex === parent.myindex ? "cyan" : "white";
                    radius: 15;
                    border.width: 5
                }

                contentItem: Text {
                    text: parent.text;
                    font: parent.font;
                    color: "black";  // 固定为黑色确保可读性
                    horizontalAlignment: Text.AlignHCenter;
                    verticalAlignment: Text.AlignVCenter;
                }
            }

            TabButton {
                text: "3. 标签"
                property int myindex: 3;
                background: Rectangle {
                    color: tabBar.currentIndex === parent.myindex ? "white" : tabBar.unselectedGrey;
                    border.color: tabBar.currentIndex === parent.myindex ? "cyan" : "white";
                    radius: 15;
                    border.width: 5
                }

                contentItem: Text {
                    text: parent.text;
                    font: parent.font;
                    color: "black";  // 固定为黑色确保可读性
                    horizontalAlignment: Text.AlignHCenter;
                    verticalAlignment: Text.AlignVCenter;
                }
            }

            TabButton {
                text: "4. anchor"
                property int myindex: 4;
                background: Rectangle {
                    color: tabBar.currentIndex === parent.myindex ? "white" : tabBar.unselectedGrey;
                    border.color: tabBar.currentIndex === parent.myindex ? "cyan" : "white";
                    radius: 15;
                    border.width: 5
                }

                contentItem: Text {
                    text: parent.text;
                    font: parent.font;
                    color: "black";  // 固定为黑色确保可读性
                    horizontalAlignment: Text.AlignHCenter;
                    verticalAlignment: Text.AlignVCenter;
                }
            }

            TabButton {
                text: "计算器"
                property int myindex: 5;
                background: Rectangle {
                    color: tabBar.currentIndex === parent.myindex ? "white" : tabBar.unselectedGrey;
                    border.color: tabBar.currentIndex === parent.myindex ? "cyan" : "white";
                    radius: 15;
                    border.width: 5
                }

                contentItem: Text {
                    text: parent.text;
                    font: parent.font;
                    color: "black";  // 固定为黑色确保可读性
                    horizontalAlignment: Text.AlignHCenter;
                    verticalAlignment: Text.AlignVCenter;
                }
            }

            onCurrentIndexChanged: function() {
                let widgetIndex = tabBar.currentIndex;
                console.log("widgetIndex: ", widgetIndex, ". tab text:", tabBar.currentItem.text)
                switch(widgetIndex) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    console.log("widgetIndex invalid: ", widgetIndex)
                    break;
                }
                // stackLayout.currentIndex = 1
            }
        }

        // 页面堆栈（类似QStackedWidget）
        StackLayout {
            id: stackLayout
            Layout.fillWidth: true
            Layout.fillHeight: true
            currentIndex: tabBar.currentIndex

            // 第一个页面 - 绝对布局
            Item {
                id: absoluteLayoutPage

                Rectangle {
                    x: 20
                    y: 20
                    width: 100
                    height: 60
                    color: "lightblue"
                    Text {
                        anchors.centerIn: parent
                        text: "绝对布局 element 1"
                    }
                }

                Rectangle {
                    x: 150
                    y: 50
                    width: 80
                    height: 80
                    color: "lightgreen"
                    Text {
                        anchors.centerIn: parent
                        text: "绝对布局 element 2"
                    }
                }
            }

            // 第二个页面 - 垂直布局
            ColumnLayout {
                id: verticalLayoutPage
                spacing: 10

                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 60
                    color: "lightcoral"
                    Text {
                        anchors.centerIn: parent
                        text: "填充"
                    }
                }

                Rectangle {
                    Layout.alignment: Qt.AlignLeft
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 60
                    color: "lightgreen"
                    Text {
                        anchors.centerIn: parent
                        text: "左对齐"
                    }
                }

                Rectangle {
                    Layout.alignment: Qt.AlignHCenter
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 60
                    color: "lightgreen"
                    Text {
                        anchors.centerIn: parent
                        text: "水平居中"
                    }
                }

                Rectangle {
                    Layout.alignment: Qt.AlignRight
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 60
                    color: "lightgreen"
                    Text {
                        anchors.centerIn: parent
                        text: "右对齐"
                    }
                }
            }


            GridLayout {
                width: parent.width

                columns: 3
                columnSpacing: 5
                rowSpacing: 10

                Components.MyLabel {
                    text: "账号";
                    color: "black";
                    Layout.columnSpan: 1;
                }
                Components.MyTextField {
                    id: accountLineEditId
                    text: "admin";
                    Layout.columnSpan: 2;
                    echoMode: TextInput.Normal;
                }
                Components.MyLabel {
                    text: "密码"
                    color: "black";
                    Layout.columnSpan: 1
                }
                Components.MyTextField {
                    id: passwordLineEditId
                    text: "012345"
                    ToolTip.text: "echoMode: TextInput.PasswordEchoOnEdit";
                    Layout.columnSpan: 2
                }

                CheckBox {
                    id: rememberSwitchId
                    text: "不记忆"
                    tristate: true  // 启用三态功能
                    checkState: Qt.Unchecked  // 设置状态：Unchecked, PartiallyChecked, Checked
                    onCheckStateChanged: function() {
                        switch (checkState) {
                        case Qt.PartiallyChecked:
                            text = "记住账号";
                            break;
                        case Qt.Checked:
                            text = "记住账号和密码";
                            break;
                        case Qt.Unchecked:
                            text = "不记忆"
                            break;
                        default:
                            console.log("checkState invalid", checkState);
                            break;
                        }
                    }
                }

                CheckBox {
                    id: autoLoginSwitchId
                    text: "自动登录"
                    tristate: false
                    checkable: true
                    checked: false
                    onToggled: function() {
                        console.log("no input parms");
                        if (checked) {
                            text = "自动登录"
                        } else {
                            text = "不自动登录"
                        }
                    }
                }


                Button {
                    id: loginBtn
                    text: "登录"
                    Component.onCompleted: {
                        console.log("default button property checkable=", checkable, "checked=", checked);
                    }
                    onClicked: {
                        console.log("Try login with Account[", accountLineEditId.text, "] Password[", passwordLineEditId.text, "]");
                        mainWindow.title = "Try login";
                    }
                }

                Label {
                    id: recommendNewsLabel
                    text: "------推荐板块------"
                    font.pointSize: 16
                    Layout.columnSpan: 3
                }

                Label {
                    id: recommendNewsFootballLabel
                    text: "足球"
                    Layout.columnSpan: 3
                }
                GroupBox {
                    Layout.columnSpan: 3;
                    ButtonGroup {
                        id: footballPlayerButtonsGrp;
                        buttons: footballPlayerButtons.children;
                        onCheckedButtonChanged: {
                            console.log("football team checkedButton=", checkedButton.text);
                        }
                    }
                    Row {
                        id: footballPlayerButtons
                        RadioButton {
                            text: "Real Madrid"
                        }
                        RadioButton {
                            text: "FC Barcelona"
                        }
                        RadioButton {
                            text: "Bayern"
                        }
                    }
                }

                Label {
                    id: recommendNewsMovieLabel
                    text: "影视明星"
                    Layout.columnSpan: 3
                }

                GroupBox {
                    Layout.columnSpan: 3;
                    ButtonGroup {
                        id: starButtonsGrp;
                        buttons: starButtons.children;
                        exclusive: true;
                        onCheckedButtonChanged: function(nowCheckedButton) {
                            if (checkedButton) {
                                console.log("Movie star checkedButton=", checkedButton.text)
                            }
                        }
                    }
                    Row {
                        id: starButtons;
                        RadioButton {
                            text: "Chris Evans"
                            checked: true
                        }
                        RadioButton {
                            text: "Henry Cavill"
                        }
                        RadioButton {
                            text: "Michael Fassbender"
                        }
                    }
                }
            }

            ColumnLayout {
                width: parent.width

                Label {
                    text: "basic Label";
                    color: "red";
                    font.pointSize: 24;
                    font.bold: true;
                }
                Text {
                    textFormat: Text.StyledText

                    text: 'Text or Url `textFormat: Text.StyledText;` <a href="https://www.baidu.com">link</a>';
                    color: "black";
                    font.pointSize: 18;

                    onLinkHovered: function(lnk) {
                        console.log("hovered on text[", text, "]and lnk is:", lnk);
                    }

                    onLinkActivated: function(lnk) {
                        console.log("activated on text[", text, "]and lnk is:", lnk);
                    }
                }

                Text {
                    Layout.fillWidth: true;

                    text: "This is a paragraph.\n```qml\nwrapMode: Text.WordWrap;\nLayout.fillWidth: true;\n```\n so long long long long long long long that one line can not even fit in";
                    wrapMode: Text.WordWrap;
                    textFormat: Text.Normal
                    font.pointSize: 16;
                }

                Item {
                    id: rectImage;
                    property int widthOfImage: 600;
                    Layout.preferredWidth: widthOfImage;
                    Layout.preferredHeight: image.paintedHeight;
                    Image {
                        id: image
                        source: "qrc:/Cristiano Ronaldo 0.jpg";
                        width: rectImage.widthOfImage;
                        fillMode: Image.PreserveAspectFit;
                    }
                }
            }


            Rectangle {
                Image {
                    id: imageInCenter
                    anchors.left: parent.left
                    anchors.top: parent.top
                    source: "qrc:/Cristiano Ronaldo 0.jpg"
                    width: 320
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: imageInRightTop
                    anchors.left: imageInCenter.right;
                    anchors.top: parent.top;
                    anchors.leftMargin: 10;
                    source: "qrc:/Kaka - 1.png";
                    width: imageInCenter.width / 3;
                    height: imageInCenter.height;
                }

                Image {
                    id: imageInLeftBottom
                    anchors.left: parent.left;
                    anchors.top: imageInCenter.bottom;
                    anchors.topMargin: 10;
                    source: "qrc:/Kaka - 1.png";
                    width: imageInCenter.width;
                    height: imageInCenter.height / 3;
                }

                Image {
                    id: imageInRightBottom
                    anchors.left: imageInLeftBottom.right;
                    anchors.top: imageInLeftBottom.top;
                    anchors.leftMargin: 10;
                    source: "qrc:/Kaka - 1.png";
                    readonly property string imageLocalPath: "../../Kaka - 1.png";
                    width: imageInRightTop.width;
                    height: imageInLeftBottom.height;

                    MouseArea {
                        anchors.fill: parent;
                        cursorShape: Qt.PointingHandCursor  // 鼠标悬停时显示手型 ArrowCursor
                        onClicked: {
                            console.log("equal?", parent === imageInRightBottom);
                            console.log("点击图片，路径:", imageInRightBottom.source.toString())

                            fileOpenerInst.printPath(imageInRightBottom.imageLocalPath);
                            fileOpenerInst.openFile(imageInRightBottom.imageLocalPath);

                            FileOpener.printPath(imageInRightBottom.imageLocalPath);
                            FileOpener.openFile(imageInRightBottom.imageLocalPath);
                        }
                    }
                }


                Text {
                    id: textUnderImageId
                    text: "Text\nA\nSingle\nRow\nHere\it\nis"
                    anchors.top: imageInLeftBottom.bottom;
                    anchors.left: parent.left;
                    anchors.topMargin: 10
                }

                TextArea {
                    id: textAreaUnderImageId
                    text: "TextArea multiRow [readOnly: false 无输出框 但可以输入]"
                    wrapMode: TextArea.Wrap;      // 换行模式
                    readOnly: false;                  // 只读模式
                    selectByMouse: true;              // 允许鼠标选择
                    anchors.left: textUnderImageId.right;
                    anchors.leftMargin: 10
                    anchors.verticalCenter: textUnderImageId.verticalCenter
                }
            }

            Rectangle {
                visible: true
                GridLayout {
                    columns: 4
                    Label{
                        text: "lhs:"
                        Layout.columnSpan: 1
                    }
                    TextField {
                        id: lhsNumberID
                        selectByMouse: true;
                        placeholderText: "input a left hand"
                    }
                    Label{
                        text: "rhs:"
                        Layout.columnSpan: 1
                    }
                    TextField {
                        id: rhsNumberID
                        selectByMouse: true;
                        placeholderText: "input a right hand"
                    }
                    Label{
                        text: "ans:"
                        Layout.columnSpan: 1
                    }
                    TextArea {
                        id: ansNumberID
                        placeholderText: "Answers will be here";
                        Layout.columnSpan: 1;
                        selectByMouse: true;
                        readOnly: true;
                    }
                    Button {
                        text: "copy ans"
                        Layout.columnSpan: 2;
                        onClicked: {

                        }
                    }
                    Button {
                        text: "calculate now"
                        Layout.columnSpan: 4;
                        onClicked: {
                            let lhsStr = lhsNumberID.text.trim();
                            let rhsStr = rhsNumberID.text.trim();
                            if (!lhsStr) {
                                ansNumberID.text = "错误：左操作数不能为空";
                                return;
                            }
                            if (!rhsStr) {
                                ansNumberID.text = "错误：右操作数不能为空";
                                return;
                            }
                            const DEFAULT_RADIX = 10;
                            let lhsNumber = parseInt(lhsStr, DEFAULT_RADIX);
                            let rhsNumber = parseInt(rhsStr, DEFAULT_RADIX);
                            // 检查转换是否成功
                            if (isNaN(lhsNumber)) {
                                ansNumberID.text = "错误：左操作数不是有效的整数";
                                return;
                            }
                            if (isNaN(rhsNumber)) {
                                ansNumberID.text = "错误：右操作数不是有效的整数";
                                return;
                            }
                            let ansNumber = StaticCalulator.add(lhsNumber, rhsNumber);
                            ansNumberID.text = String(ansNumber);
                            console.log(ansNumber.toString() === String(ansNumber));

                            console.log("ViewTypes.LIST", ViewTypes.LIST);
                            console.log("ViewTypes.TABLE", ViewTypes.TABLE);
                            console.log("ViewTypes.TREE", ViewTypes.TREE);
                        }
                    }
                }
            }
        }
    }
}
