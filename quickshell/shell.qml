import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Io

PanelWindow{
  anchors{
    top:true;
    left:true;
    right:true;
  }
  
  color:'transparent'; 
  implicitHeight:20;
  Rectangle{
    
  }
  Rectangle{
    anchors.fill:parent;
    color:"#222222";
    bottomLeftRadius: 10;
    bottomRightRadius: 10;

    //Left
    RowLayout{
      anchors{
        left:parent.left;
        leftMargin:30;
      }
    }
    //Center
    RowLayout{
      anchors{
        horizontalCenter: parent.horizontalCenter;
        verticalCenter: parent.verticalCenter;
      }

      Text{
        text:"Hello World";
        font.pixelSize:16;
        color:"#999999"
      }
    }
    //Right
    RowLayout{
      anchors{
        verticalCenter:parent.verticalCenter;
        right:parent.right;
        rightMargin:30;
      }
    }

  }
}
