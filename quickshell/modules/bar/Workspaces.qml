import QtQuick
import QtQuick.Layouts
import Quickshell

Rectangle{
  anchors{
    left: parent.left;
  } 
  implicitWidth: workspaceLayout.implicitWidth *2;
  implicitHeight: 22;
  color: "transparent";
  //width: parent.width;
  //radius: 5;

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
      spacing: 15;

      Repeater{
        model: niri.workspaces;
        
        Rectangle{
          visible: index < 11;
          width: model.isActive ? 12:8;
          height: 8;
          radius: 10;
          color: model.isActive ? "#f0ffffff": "#212D40";
          Behavior on width{
            NumberAnimation {duration: 150; easing.type:Easing.OutQuad}
          }

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
