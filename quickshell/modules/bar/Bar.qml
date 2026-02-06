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
    topLeftRadius: 10;
    topRightRadius: 2;
    bottomLeftRadius: 10;
    bottomRightRadius: 2;

    //Top
    RowLayout{
      anchors{
        top: parent.top;
        left: parent.left;
        //horizontalCenter: parent.horizontalCenter;
      }
      Loader {active: true; sourceComponent: Applications{}}
    }
    //Center
    RowLayout{
      anchors{
        horizontalCenter: parent.horizontalCenter;
        top: parent.top;
        verticalCenter: parent.verticalCenter;
      }

      Loader {active: true; sourceComponent: Workspaces{}}
    }

    RowLayout{
      anchors{
        right:parent.right;
        top: parent.top;
        //verticalCenter: parent.verticalCenter;
        //horizontalCenter: parent.horizontalCenter;

      }

      Loader {active:true; sourceComponent: Time{}}
    }
  }
}
