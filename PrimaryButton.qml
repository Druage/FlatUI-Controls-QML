import QtQuick 2.3
import QtGraphicalEffects 1.0

Rectangle {
    id: root;
    width: 175;
    height: 40;
    radius: 4;

    property alias flatColors: constants;
    property alias mouseField: mouseArea;

    Constants {
        id: constants;
    }

    MouseArea {
        id: mouseArea;
        anchors.fill: parent;
        property bool clickedButton: false;

        onClicked: {
            if (clickedButton)
                clickedButton = false;
            else
                clickedButton = true;
        }

        onPressed: {
            primaryButton.color = root.pressColor;
        }

        onReleased: {
            primaryButton.setTimer = true;
        }

        hoverEnabled: true;
        onEntered: primaryButton.color = root.highlightColor;
        onExited: primaryButton.color = root.color;
    }

    property string color: constants.turquoise;
    property string pressColor: constants.greenSea;
    property string highlightColor: "#48c9b0";
    property string text: "Primary Button";
    property string textColor: "white";
    property int pointSize: 12;

    Rectangle {
        id: primaryButton;
        anchors.fill: parent;
        color: root.color;
        radius: root.radius;

        Text {
            id: buttonText;
            anchors.centerIn: parent;
            text: root.text;
            color: root.textColor;
            font {
                pointSize: root.pointSize;
            }
        }

        Behavior on color {
            PropertyAnimation {}
        }

        property bool setTimer: false;

        onSetTimerChanged: {
            if (setTimer)
                overlayTimer.restart();
            else
                overlayTimer.stop();
        }




        Timer {
            id: overlayTimer;
            interval: 50;
            onTriggered:  {
                primaryButton.color = root.color;
                primaryButton.setTimer = false;
                if (mouseArea.containsMouse)
                    primaryButton.color = root.highlightColor;
            }
        }
    }
}

