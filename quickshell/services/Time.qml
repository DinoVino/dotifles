pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
  id: root;
  property string time;

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
