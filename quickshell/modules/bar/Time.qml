import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io


  Text{
    id: clock;
    text: root.time;
    color: "white";
    height: 15;
    font.pointSize: 10;
    font.family: "ttf-cascadia-mono-nerd";
    Process{
      id: dateProcess;
      command: ["date","+%R"]
      stdout: StdioCollector{
        onStreamFinished: root.time = this.text;
      }
    }

    Timer{
      interval:1000;
      running:true;
      repeat:true;
      onTriggered: dateProcess.running = true;
    }
  }
