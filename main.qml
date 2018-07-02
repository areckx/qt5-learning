import QtQuick 2.5

Image {
    id: root
    source: "images/background.png"

    Image {
        id: pole
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "images/pole.png"
    }

    Image {
        id: wheel

        Behavior on rotation {
            NumberAnimation {
                duration: 250
            }
        }

        anchors.centerIn: parent
        source: "images/pinwheel.png"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: wheel.rotation += 90
    }
}
