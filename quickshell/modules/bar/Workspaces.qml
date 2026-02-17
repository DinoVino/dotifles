import QtQuick
import QtQuick.Layouts
import Quickshell

Rectangle{
  anchors{
    left: parent.left;
  } 
  color:parent.color;
  height: 20;
  //width: parent.width;
  radius:5;

  Rectangle{
    id: workspaceLayout;
    anchors{
      horizontalCenter: parent.horizontalCenter;
      verticalCenter: parent.verticalCenter; 
      left: parent.left;
      right: parent.right;

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
          color: model.isActive ? "#A67B5b": "#212D40";

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
