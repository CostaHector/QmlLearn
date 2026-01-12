import QtQuick 2.15


Rectangle {
    id: rectContainerId
    width: 120
    height: 120 // 如果图片未加载，先用120高度
    color: "lightgray"
    border.color: "red"

    Image {
        id: myImageId
        source: "qrc:/Cristiano Ronaldo 0.jpg";
        width: 120;
        height: 60;
        fillMode: Image.PreserveAspectFit
        asynchronous: true                    // 异步加载（避免界面卡顿）
        cache: true                          // 启用缓存
        opacity: 0.5

        onStatusChanged: function () {
            if (status === Image.Ready) {
                rectContainerId.height = myImageId.height
            }
            console.log("status changed to:", status);
        }
    }
}
