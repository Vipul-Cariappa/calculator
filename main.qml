import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.15

Window {
    id: app
    width: 640
    height: 480
    visible: true
    title: qsTr("Calculator")

    property double num1: 0
    property double num2: 0
    property string op: ""

    function operation(ope) {
        if (app.op === "") {
            app.op = ope
        } else if (app.op === "+") {
            app.num1 = app.num1 + app.num2
            app.num2 = 0
            display.text = app.num1
            app.op = ope
        } else if (app.op === "-") {
            app.num1 = app.num1 - app.num2
            app.num2 = 0
            display.text = app.num1
            app.op = ope
        } else if (app.op === "*") {
            app.num1 = app.num1 * app.num2
            app.num2 = 0
            display.text = app.num1
            app.op = ope
        } else if (app.op === "/") {
            app.num1 = app.num1 / app.num2
            app.num2 = 0
            display.text = app.num1
            app.op = ope
        }
    }

    Rectangle {
        id: win_top
        x: 0
        y: 0
        height: app.height / 4
        width: app.width
        color: "blue"

        Text {
            id: display
            anchors.fill: parent
            anchors.margins: 16
            font.pixelSize: 24
            horizontalAlignment: Text.AlignRight
        }
    }

    Rectangle {
        id: win_bottom
        x: 0
        y: win_top.height
        height: app.height - win_top.height
        width: app.width
        color: "red"

        property int btn_h: win_bottom.height / 4
        property int btn_w: win_bottom.width / 4

        Button {
            id: button1
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 1
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 1
                    display.text = app.num2
                }

            }
            x: 0
            y: 0
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "1"
            background: Rectangle {
                anchors.fill: parent
                color: button1.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button2
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 2
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 2
                    display.text = app.num2
                }

            }
            x: win_bottom.btn_w
            y: 0
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "2"
            background: Rectangle {
                anchors.fill: parent
                color: button2.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button3
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 3
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 3
                    display.text = app.num2
                }

            }
            x: win_bottom.btn_w * 2
            y: 0
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "3"
            background: Rectangle {
                anchors.fill: parent
                color: button3.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button4
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 4
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 4
                    display.text = app.num2
                }

            }
            x: 0
            y: win_bottom.btn_h
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "4"
            background: Rectangle {
                anchors.fill: parent
                color: button4.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button5
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 5
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 5
                    display.text = app.num2
                }

            }
            x: win_bottom.btn_w
            y: win_bottom.btn_h
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "5"
            background: Rectangle {
                anchors.fill: parent
                color: button5.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button6
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 6
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 6
                    display.text = app.num2
                }

            }
            x: win_bottom.btn_w * 2
            y: win_bottom.btn_h
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "6"
            background: Rectangle {
                anchors.fill: parent
                color: button6.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button7
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 7
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 7
                    display.text = app.num2
                }

            }
            x: 0
            y: win_bottom.btn_h * 2
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "7"
            background: Rectangle {
                anchors.fill: parent
                color: button7.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button8
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 8
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 8
                    display.text = app.num2
                }

            }
            x: win_bottom.btn_w
            y: win_bottom.btn_h * 2
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "8"
            background: Rectangle {
                anchors.fill: parent
                color: button8.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button9
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 9
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 9
                    display.text = app.num2
                }

            }
            x: win_bottom.btn_w * 2
            y: win_bottom.btn_h * 2
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "9"
            background: Rectangle {
                anchors.fill: parent
                color: button9.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button0
            onClicked: {
                if (app.op === "") {
                    app.num1 = app.num1 * 10 + 0
                    display.text = app.num1
                } else {
                    app.num2 = app.num2 * 10 + 0
                    display.text = app.num2
                }

            }
            x: 0
            y: win_bottom.btn_h * 3
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "0"
            background: Rectangle {
                anchors.fill: parent
                color: button0.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button_cc
            onClicked: {
                app.num1 = 0
                app.num2 = 0
                app.op = ""
                display.text = app.num1
            }
            x: win_bottom.btn_w
            y: win_bottom.btn_h * 3
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "cc"
            background: Rectangle {
                anchors.fill: parent
                color: button_cc.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button_eq
            onClicked: app.operation("")
            x: win_bottom.btn_w * 2
            y: win_bottom.btn_h * 3
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "="
            background: Rectangle {
                anchors.fill: parent
                color: button_eq.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button_add
            onClicked: app.operation("+")
            x: win_bottom.btn_w * 3
            y: 0
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "+"
            background: Rectangle {
                anchors.fill: parent
                color: button_add.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button_sub
            onClicked: app.operation("-")
            x: win_bottom.btn_w * 3
            y: win_bottom.btn_h
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "-"
            background: Rectangle {
                anchors.fill: parent
                color: button_sub.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button_mul
            onClicked: app.operation("*")
            x: win_bottom.btn_w * 3
            y: win_bottom.btn_h * 2
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "*"
            background: Rectangle {
                anchors.fill: parent
                color: button_mul.down ? "lightblue" : "grey"
            }
        }

        Button {
            id: button_div
            onClicked: app.operation("/")
            x: win_bottom.btn_w * 3
            y: win_bottom.btn_h * 3
            height: win_bottom.btn_h
            width: win_bottom.btn_w
            text: "/"
            background: Rectangle {
                anchors.fill: parent
                color: button_div.down ? "lightblue" : "grey"
            }
        }

    }

}
