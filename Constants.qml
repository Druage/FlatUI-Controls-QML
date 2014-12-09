import QtQuick 2.3

Item {

    readonly property color alizarin: "#e74c3c";
    readonly property color amethyst: "#9b59b6";
    readonly property color asbestos: "#7f8c8d";
    readonly property color belize_hole: "#2980b9";
    readonly property color carrot: "#e67e22";
    readonly property color clouds: "#ecf0f1";
    readonly property color concrete: "#95a5a6";
    readonly property color emerald: "#2ecc71";
    readonly property string greenSea: "#16A085";
    readonly property color midnightBlue : "#2c3e50"
    readonly property color nephritis     : "#27ae60"
    readonly property color orange        : "#f39c12"
    readonly property color peterRiver   : "#3498db"
    readonly property color pomegranate   : "#c0392b"
    readonly property color pumpkin       : "#d35400"
    readonly property color silver        : "#bdc3c7"
    readonly property color sunFlower    : "#f1c40f"
    readonly property string turquoise: "#1ABC9C";
    readonly property color wetAsphalt   : "#34495e"
            readonly property color wisteria      : "#8e44ad"

            // Grays
            readonly property color gray       : concrete
            readonly property color grayLight : silver
            readonly property color inverse    : "white"

            // Brand colors
            readonly property color primary   : wetAsphalt
            readonly property color secondary : turquoise
            readonly property color success   : emerald
            readonly property color warning   : sunFlower
            readonly property color danger    : alizarin
            readonly property color info      : peterRiver

            // Settings for some of the most global styles.
            readonly property color body_bg    : "#ffffff"
            readonly property color textColor : primary

            // Global textual link color.
            readonly property color link_color       : greenSea
            readonly property color link_hover_color : turquoise
}
