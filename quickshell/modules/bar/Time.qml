import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io


  Text{
    id: clock;
    text: root.time;
    color: "white";
    height: 30;
    width: 65;
    font.pointSize: 16;
    font.family: "arcadeclassic";
    
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
