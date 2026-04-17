import QtQuick
import QtQuick.Layouts
import Quickshell
import "../../scripts/logic.js" as Logic

Rectangle{
  anchors{
    left: parent.left;
  } 
  implicitWidth: workspaceLayout.implicitWidth * 2;
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
      spacing: 20;

      Repeater{
        model: niri.workspaces;
        anchors{
          horizontalCenter:parent.horizontalCenter;
        }
    
        Rectangle{
          visible: index < 11;
          width: 8;
          height: 8;
          transform: Scale {xScale: Logic.workspaceExpansion(model.isActive)}
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
