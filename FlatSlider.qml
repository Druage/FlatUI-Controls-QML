import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Slider {
    id: slider;
    objectName: "Slider";
    Constants {
        id: constants;
    }

    width: 300;
    height: 12;
    minimumValue: 0;
    maximumValue: 100;
    value: 25;
    property int tickCount: 4;

    stepSize: tickCount !== 0 ? maximumValue / tickCount : 1;
    onStepSizeChanged: {
        var list = [];
        for (var i=0; i < tickCount+1; ++i)
            list.push(i);
        _tickModel = list;
    }

    property var _tickModel: [1,2,3,4,5];

    property bool _ticksEnabled: tickCount > 0;

    Component.onCompleted: {
        if (tickCount % 2 !== 0)
            console.error(slider.objectName + ".tickCount needs to have an even numbered tickCount");
    }

    style: SliderStyle {
        groove: Rectangle {
            z: 1;
            radius: 10;
            height: control.height;
            width: control.width;
            color: "#ebedef";
            Rectangle {
                id: highlightGroove;
                z: 3
                radius: parent.radius
                color: constants.secondary;
                anchors {
                    top: parent.top;
                    bottom: parent.bottom;
                    left: parent.left;
                }
                width: slider.width * (slider.value/100);
            }

            ListView {
                visible: slider._ticksEnabled;
                id: listView;
                z: 2;
                anchors.fill: parent;
                orientation: ListView.Horizontal;
                spacing: slider.width / listView.count;

                model: slider._tickModel;
                delegate: Item {
                    anchors {
                        top: parent.top;
                        bottom: parent.bottom;
                    }

                    width: 10;

                    Rectangle {
                        visible: (index !== 0 && index !== listView.count - 1);
                        anchors.centerIn: parent;
                        height: 6;
                        width: 6;
                        radius: width * 0.5;
                        color: "#d9dbdd";
                    }
                }
            }
        }

        handle: PrimaryButton {
            height: control.height * 1.8;
            width: height;
            radius: width * 0.5;
            color: constants.greenSea;
            text: "";
        }
    }
}
