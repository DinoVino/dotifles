import QtQuick
import QtQuick.Layouts
import Quickshell

Rectangle{
  anchors{
    left: parent.left;
  } 
  implicitWidth: workspaceLayout.implicitWidth *2;
  implicitHeight: 22;
  color: "#11151c";
  //width: parent.width;
  radius: 10;

  Rectangle{
    id: workspaceLayout;
    implicitWidth: 50;
    anchors{
      horizontalCenter: parent.horizontalCenter;
      verticalCenter: parent.verticalCenter; 

    }

    RowLayout{
      
      anchors{
        horizontalCenter: parent.horizontalCenter;
        verticalCenter: parent.verticalCenter;
      }
      
      spacing: 7;

      Repeater{
        model: niri.workspaces;

        Rectangle{
          visible: index < 11;
          width: 8;
          height: 8;
          radius: 10;
          color: model.isActive ? "#f0ffffff": "#212D40";

          MouseArea{
            anchors.fill: parent;
            cursorShape: Qt.PointingHandCursor;
            onClicked: niri.focusWorkspaceById(model.id);
          }

        }

      }

    }

  }

}
