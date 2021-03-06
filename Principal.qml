import QtQuick 2.1
import org.kde.kirigami 2.1 as Kirigami
import QtCharts 2.2
import QtQuick.Scene3D 2.0

Kirigami.Page {
    id: root
    property var file: ""

    Viewer3D {
        id: entity
        file: root.file
    }


    ChartView {
        height: parent.height/3
        width: parent.width
        anchors.bottom: parent.bottom
        antialiasing: true

        backgroundColor: "transparent"
        LineSeries {
            name: "Ext Temp."
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1.1; y: 2.1 }
            XYPoint { x: 1.9; y: 3.3 }
            XYPoint { x: 2.1; y: 2.1 }
            XYPoint { x: 2.9; y: 4.9 }
            XYPoint { x: 3.4; y: 3.0 }
            XYPoint { x: 4.1; y: 3.3 }
        }
        LineSeries {
            name: "Ext SP."
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1.1; y: 1.1 }
            XYPoint { x: 1.9; y: 2.3 }
            XYPoint { x: 2.1; y: 1.1 }
            XYPoint { x: 2.9; y: 3.9 }
            XYPoint { x: 3.4; y: 2.0 }
            XYPoint { x: 4.1; y: 2.3 }
        }
        LineSeries {
            name: "Bed Temp."
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1.1; y: 0.1 }
            XYPoint { x: 1.9; y: 1.3 }
            XYPoint { x: 2.1; y: 0.1 }
            XYPoint { x: 2.9; y: 2.9 }
            XYPoint { x: 3.4; y: 1.0 }
            XYPoint { x: 4.1; y: 1.3 }
        }
        LineSeries {
            name: "Bed SP."
            XYPoint { x: 0; y: 0 }
            XYPoint { x: 1.1; y: 4.1 }
            XYPoint { x: 1.9; y: 1.3 }
            XYPoint { x: 2.1; y: 3.1 }
            XYPoint { x: 2.9; y: 0.9 }
            XYPoint { x: 3.4; y: 4.0 }
            XYPoint { x: 4.1; y: 0.3 }
        }
    }
}
