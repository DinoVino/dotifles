import QtQuick
import QtQuick.Layouts
import Quickshell

Scope {
  id:root;
  property string time;

  PanelWindow {
    id: bar; 
    
    anchors{
      top:true;
      left:true;
      right:true; 
      //bottom:true;
    }

    color: "transparent"; 
    implicitWidth:10;
    implicitHeight: 30;  
  
    Rectangle{
      anchors.fill:parent;
      color: "#090c0f";

      //Top or Left
      ColumnLayout{
        anchors{
          top: parent.top 
          left: parent.left;
          topMargin: 4;
          //leftMargin: 7; 
          //horizontalCenter: parent.horizontalCenter;
        }
        Loader {active: true; sourceComponent: Workspaces{}}
      }
  
      //Center
      ColumnLayout{
        anchors{
          horizontalCenter: parent.horizontalCenter;
          //verticalCenter: parent.verticalCenter;
          top: parent.top;
          topMargin: 0;
        }
        Loader {active: true; sourceComponent: Applications{}}
      }
      
      // Bottom or Right
      ColumnLayout{
        anchors{
          right:parent.right;
          top: parent.top;
          bottom: parent.bottom;
          //verticalCenter: parent.verticalCenter;
          //horizontalCenter: parent.horizontalCenter;
          margins: 1;
        }
        Loader {active:true; sourceComponent: Time{}}
      }
    }
  }
}
