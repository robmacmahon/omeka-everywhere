import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

/*!
   \qmltype OmekaToggle

   OmekaToggle is a checkable control with two images representing the checked state
  */
Button {

    width: childrenRect.width
    height: childrenRect.height
    checkable: true

    /*!
        \qmlproperty url OmekaToggle::defaultSource
        Default state image path
    */
    property url defaultSource

    /*!
        \qmlproperty url OmekaToggle::checkedSource
        Checked state image path
    */
    property url checkedSource

    /*!
        \qmlproperty url OmekaToggle::iconScale
        Scale of icon relative to actual file size
    */
    property real iconScale: 1

    //default state
    Image {
        source: defaultSource
        visible: !parent.checked
        fillMode: Image.PreserveAspectFit
        width: sourceSize.width * iconScale
    }

    //checked state
    Image {
        source: checkedSource
        visible: parent.checked
        fillMode: Image.PreserveAspectFit
        width: sourceSize.width * iconScale
    }

    //custom background
    style: ButtonStyle { background: Item{} }
}
