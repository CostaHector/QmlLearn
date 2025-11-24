import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {
    id: passwordField
    text: "QLineEdit TextField 密码框 6位0~9数字 "        // 文本内容
    placeholderText: "请输入6位0~9数字"// 占位符文本
    maximumLength: 6                 // 最大长度
    echoMode: TextInput.PasswordEchoOnEdit     // 输入模式：Normal/Password/NoEcho
    validator: IntValidator {        // 输入验证器
        bottom: 0; top: 999999
    }
    selectByMouse: true              // 允许鼠标选择文本

    // 添加工具提示, 或者根据输入状态显示不同的提示
    ToolTip.visible: hovered  // 鼠标悬停时显示, hovered
    ToolTip.text: passwordField.acceptableInput ? "输入有效" : "请输入6位数字（0-9）"
    onEditingFinished: function() {
        console.log("password editing finished[", text, "]");
    }
    readOnly: false

    onAccepted: {
        console.log("accepted finished[", text, "]");
    }

    Keys.onReturnPressed: function(event) {
        console.log("return pressed[", text, "]");
        event.accepted = false; // will not block the enter key, onAccepted, onEditingFinished will get triggered
    }
    Keys.onEnterPressed: function(event) {
        console.log("enter pressed[", text, "]");
        event.accepted = false;
    }
}
