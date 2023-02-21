import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 400
    height: 200
    visible: true

  Rectangle{
    Timer {
        id: timer
        interval: 10
        running: true
        repeat: true
        onTriggered: {
            text.y -= 1
            if (text.y < -text.contentHeight) {
                text.y = height
            }
        }
    }

    Text {
        id: text
        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est eget ex varius, vitae vehicula augue consectetur. Vestibulum id nunc gravida, congue lacus a, vestibulum velit. Fusce sit amet nisl massa. Aliquam feugiat, nisl vel commodo feugiat, ex tortor elementum metus, vel eleifend tellus augue sed turpis. Quisque faucibus fringilla sapien non imperdiet. Sed vel ipsum ac augue semper egestas quis et est. Maecenas in tellus aliquet, tincidunt odio ac, viverra nulla. Morbi nec urna vel enim pellentesque dictum. Phasellus ac purus in lectus bibendum luctus id vel sapien. Aliquam ultricies, nulla ut euismod hendrerit, ipsum mauris sollicitudin velit, at laoreet elit magna vel urna. Vivamus vel magna varius, bibendum est sit amet, efficitur justo. Sed vestibulum dolor at ex bibendum malesuada."
        wrapMode: Text.Wrap
        width: parent.width
        height: contentHeight
        color: "black"
    }
   }
   
   Rectangle{
    Text {
        id: text
        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed auctor est eget ex varius, vitae vehicula augue consectetur. Vestibulum id nunc gravida, congue lacus a, vestibulum velit. Fusce sit amet nisl massa. Aliquam feugiat, nisl vel commodo feugiat, ex tortor elementum metus, vel eleifend tellus augue sed turpis. Quisque faucibus fringilla sapien non imperdiet. Sed vel ipsum ac augue semper egestas quis et est. Maecenas in tellus aliquet, tincidunt odio ac, viverra nulla. Morbi nec urna vel enim pellentesque dictum. Phasellus ac purus in lectus bibendum luctus id vel sapien. Aliquam ultricies, nulla ut euismod hendrerit, ipsum mauris sollicitudin velit, at laoreet elit magna vel urna. Vivamus vel magna varius, bibendum est sit amet, efficitur justo. Sed vestibulum dolor at ex bibendum malesuada."
        wrapMode: Text.Wrap
        width: parent.width
        height: contentHeight
        color: "black"
        
        NumberAnimation on y{
          from: parent.height
          to: -1*text.height
          duration: 10* Math.abs(to-from)
        
        }
    }
   
   
   }
}
