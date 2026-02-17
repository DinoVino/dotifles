import QtQuick
import QtQuick.Layouts
import Quickshell

PanelWindow{
  id: bar; 
  
  anchors{
    top:true;
    left:true;
    right:true; 
    //bottom:true;
  }
  color: "black"; 
  implicitWidth:10;
  implicitHeight: 30;  

  Rectangle{
    anchors.fill:parent;
    color:"#11151C";

    //Top
    ColumnLayout{
      anchors{
        top: parent.top;
        left: parent.left;
        leftMargin: 7; 
        //horizontalCenter: parent.horizontalCenter;
      }
      Loader {active: true; sourceComponent: Applications{}}
    }
    //Center
    ColumnLayout{
      anchors{
        horizontalCenter: parent.horizontalCenter;
        //verticalCenter: parent.verticalCenter;
        top: parent.top;
        topMargin: 6;
      }

      Loader {active: true; sourceComponent: Workspaces{}}
    }

    ColumnLayout{
      anchors{
        right:parent.right;
        top: parent.top;
        bottom: parent.bottom;
        //verticalCenter: parent.verticalCenter;
        //horizontalCenter: parent.horizontalCenter;
        margins: 7;
      }

      Loader {active:true; sourceComponent: Time{}}
    }
  }
}
