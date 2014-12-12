import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

RadioButton {
    id: radioButton;
    Constants {
        id: constants;
    }

    text: "Default";
    property string textColor: "black";
    property int spacing: 12;
    property bool disabled: false;

    style: RadioButtonStyle {
        spacing: control.spacing;

        indicator: Rectangle {
            height: 20;
            width: 20;
            radius: height * 0.5;
            color:  {
                if (disabled) {
                    return "#e6e8ea";
                }

                else {
                    return control.checked ? constants.silver : constants.secondary;
                }
            }

            Behavior on color {
                PropertyAnimation {duration: 100}
            }

            Rectangle {
                anchors.centerIn: parent;
                height: parent.height * 0.6;
                width: parent.height * 0.6;
                radius: height * 0.5;
                color: control.checked ? "white" : parent.color;
                border {
                    width: 3;
                    color: "white";
                }
                Behavior on color {
                    PropertyAnimation {duration: 100}
                }
            }
        }
    }
}
