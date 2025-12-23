import QtQuick
import QtQuick.Layouts
import Quickshell

PanelWindow{
  id: bar; 
  
  anchors{
    top:true;
    left:true;
    // right:true; 
    bottom:true;
  }
  color: "black"; 
  implicitWidth:30;
  
  Rectangle{
    anchors.fill:parent;
    color:"#6f4e37";
    topLeftRadius: 10;
    topRightRadius: 2;
    bottomLeftRadius: 10;
    bottomRightRadius: 2;

    //Left
    ColumnLayout{
      anchors{
        top: parent.top;
        horizontalCenter: parent.horizontalCenter;
      }
      //Loader {active: true; sourceComponent: Workspaces{}}
    }
    //Center
    ColumnLayout{
      anchors{
        horizontalCenter: parent.horizontalCenter;
        verticalCenter: parent.verticalCenter;
      }

      Loader {active: true; sourceComponent: Workspaces{}}
    }
  
  }
}
