import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io

PopupWindow{
  parentWindow: bar;
  width: 200;
  height: 50;
  
  anchor.rect.y: 30;

  Process{
    id: shutdownCommand;
    command: ["shutdown","now"];
  }
  Process{
    id: rebootCommand;
    command: ["reboot"];
  }

  RowLayout{
    Text{
      text: "Shutdown";
      color: "red";
      MouseArea{
        anchors.fill: parent;
        cursorShape: Qt.PointingHandCursor;
        onClicked: shutdownCommand.running = true;
      }
    }
    Text{
      text: "Reboot";
      color: "green";
      MouseArea{
        anchors.fill: parent;
        cursorShape: Qt.PointingHandCursor;
        onClicked: rebootCommand.running = true;
      }
    }
  }
}
