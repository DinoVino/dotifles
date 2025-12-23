import QtQuick
import QtQuick.Layouts
import Quickshell

Rectangle{
  anchors{
    left: parent.left;
  } 
  color:parent.color;
  height: 100;
  //width: parent.width;
  radius:5;

  Rectangle{
    id: workspaceLayout;
    anchors{
      verticalCenter: parent.verticalCenter;
      left: parent.left;
      right: parent.right;

    }

    ColumnLayout{
      
      anchors{
        horizontalCenter: parent.horizontalCenter;
        verticalCenter: parent.verticalCenter;
      }
      
      spacing: 5;

      Repeater{
        model: niri.workspaces;

        Rectangle{
          visible: index < 11;
          width: 8;
          height: 8;
          radius: 10;
          color: model.isActive ? "#FED8B1": "#A67B5b";

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
