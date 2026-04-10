import QtQuick

Text {
    id: clock;
    text: Time.time;
    color: "white";
    height: 30;
    width: 65;
    font.pointSize: 16;
    font.family: "arcadeclassic";
}
