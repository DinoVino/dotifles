import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
ColumnLayout{ 
  ColumnLayout{
    LazyLoader{
      id: popupLoader;
      loading: true;
      component: PopupPower{}  
    }
    Text{
      id:archbutton;
      property string archcolorActive: "white";
      property string archcolorNeutral: "green";
      property string archIcon: "\udb82\udcc7";
      text: archIcon;
      color: archcolorActive;
      font.pointSize: 16; 
      MouseArea{
        anchors.fill:parent;
        cursorShape: Qt.PointingHandCursor;
        onClicked: popupLoader.item.visible = !popupLoader.item.visible;
      }  
    }

  }
   
  //ColumnLayout{
  //  Text{
  //    id:ttesting;
  //    text: niri.focusedWindow?.title ?? "";
  //    color: "white"
  //  }
  //}
}
