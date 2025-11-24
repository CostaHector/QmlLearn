import QtQuick 2.15

Text {
    text: "QLabel -> Text 测试"
    color: "red" // 文字颜色
    font.pixelSize: 16 // 字体大小
    font.bold: true // 粗体
    horizontalAlignment: Text.AlignHCenter  // 水平对齐
    verticalAlignment: Text.AlignVCenter    // 垂直对齐
    elide: Text.ElideRight             // 文本过长时省略方式
    wrapMode: Text.WordWrap            // 换行模式
}
