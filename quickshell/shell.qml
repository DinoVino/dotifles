import QtQuick;
import QtQuick.Layouts;
import Quickshell;
import Quickshell.Wayland;
import Niri 0.1;
import "./modules/bar/";
import "./services/" as QsServices;

ShellRoot{

  id:root;
  readonly property var timeService: QsServices.Time;
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

