import QtQuick 2.15
import QtQuick.Controls 2.15

Label {
    text: 'QLabel -> Label in Controls <a href="https://www.baidu.com">link</a>'
    color: "orange"
    font.pixelSize: 16
    font.bold: true
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    elide: Text.ElideRight
    wrapMode: Text.WordWrap
    textFormat: Text.StyledText // or RichText
    onLinkHovered: function() {
        console.log("鼠标悬浮在链接上了");
    }
    onLinkActivated: function() {
        console.log("激活链接", text);
    }
}
