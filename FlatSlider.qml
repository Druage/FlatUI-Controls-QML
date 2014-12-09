import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Slider {
    Constants {
        id: constants;
    }

    width: 300;
    height: 12;
    minimumValue: 0;
    maximumValue: 100;
    stepSize: 1;
    value: 25;
    style: SliderStyle {
        groove: Rectangle {
            radius: 10;
            height: control.height;
            width: control.width;
            color: constants.secondary;
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
