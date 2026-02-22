import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Wayland
import Niri 0.1
import "./modules/bar/"


ShellRoot{

  id:root
  property string time;
  Niri{
    id: niri
    Component.onCompleted: connect()

    onConnected: console.info("Connected to niri")

    onErrorOccurred: function(error) {
      console.error("Niri error:", error)
    }
  }
  Variants {
    model: Quickshell.screens
    LazyLoader{ active: true; component: Bar{} }
  }
  
  //Variants {
  //  model: Quickshell.screens;
  //  LazyLoader{ active:true; component: LeftBar{}}
  //}
}

