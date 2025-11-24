import QtQuick 2.15
import QtQuick.Controls 2.15

TextArea {
    text: "QTextBrowser->TextArea 多行输入框\n文本段落\n第三行"
    placeholderText: "多行输入框"       // 占位符
    wrapMode: TextArea.Wrap           // 换行模式
    readOnly: false                   // 只读模式
    selectByMouse: true              // 允许鼠标选择
    background: Rectangle {           // 背景样式
        border.color: "gray"
    }
    onTextChanged: function () {
        console.log("text change to [", text, "]");
    }
}
