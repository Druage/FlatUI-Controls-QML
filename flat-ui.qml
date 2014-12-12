import QtQuick 2.3
import QtGraphicalEffects 1.0

Rectangle {
    id: root;
    width: 900;
    height: 700;

    Constants {
        id: constants;
    }

    Text {
        id: header;
        text: "Basic elements";
        color: constants.wetAsphalt;
        x: 24;
        y: 24;
        font {
            pointSize: 20;
            bold: true;
        }
    }

    Column {
        spacing: 24;
        anchors {
            top: header.bottom;
            left: parent.left;
            right: parent.right;
            bottom: parent.bottom;
            margins: 25;
        }



        Grid {
            spacing: 24;
            anchors {
                left: parent.left;
                right: parent.right;
            }

            PrimaryButton {
            }

            WarningButton {
            }

            DefaultButton {
            }
            DangerButton {
            }
        }

        Text {
            color: constants.wetAsphalt;
            text: "Input";
            font {
                pointSize: 15;
            }
        }

        Row {
            spacing: 24;

            Input {
                placeholderText: "Inactive";
            }

            Input {
                text: "Error";
                error: true;
            }

            Input {
                text: "Success";
                success: true;
            }

            Input {
                text: "Disabled";
                disabled: true;
            }
        }

        Row {
            spacing: 24;

            Text {
                color: constants.wetAsphalt;
                text: "Dropdown";
                font {
                    pointSize: 15;
                }
            }
        }

        Row {
            spacing: 24;

            Dropdown {
                width: 400;
            }

        }

        Text {
            color: constants.wetAsphalt;
            text: "Progress bars & Sliders";
            font {
                pointSize: 15;
            }
        }

        Column {
            FlatSlider {

            }
        }

        Text {
            color: constants.wetAsphalt;
            text: "Radio Buttons";
            font {
                pointSize: 15;
            }
        }

        Row {
            spacing: 48;

            Column {
                spacing: 12;

                FlatRadioButton {

                }
                FlatRadioButton {

                }
                FlatRadioButton {

                }
                FlatRadioButton {

                }

            }
        }


    }
}


