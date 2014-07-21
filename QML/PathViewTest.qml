import QtQuick 2.2


/**
 * pathView
 * http://qt-project.org/doc/qt-5/qml-qtquick-pathview.html
 */
Rectangle {
	id: main
	width: 800
	height: 600

	ListModel {
		id: model

		ListElement {
			paragraph: "Qt Quick provides a declarative framework for building highly dynamic, custom user interfaces from a rich set of QML elements. Qt Quick helps programmers and designers collaborate to build the fluid user interfaces that are becoming common in portable consumer devices, such as mobile phones, media players, set-top boxes and netbooks. Qt Quick consists of the QtDeclarative C++ module, QML, and the integration of both of these into the Qt Creator IDE. Using the QtDeclarative C++ module, you can load and interact with QML files from your Qt application."
		}
		ListElement {
			paragraph: "QML is an extension to JavaScript, that provides a mechanism to declaratively build an object tree of QML elements. QML improves the integration between JavaScript and Qt's existing QObject-based type system, adds support for automatic property bindings and provides network transparency at the language level."
		}
		ListElement {
			paragraph: "The QML elements are a sophisticated set of graphical and behavioral building blocks. These different elements are combined together in QML documents to build components ranging in complexity from simple buttons and sliders, to complete Internet-enabled applications like a photo browser for the popular Flickr photo-sharing site."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
		ListElement {
			paragraph: "Qt Quick builds on Qt's existing strengths. QML can be be used to incrementally extend an existing application or to build completely new applications. QML is fully extensible from C++ through the QtDeclarative Module."
		}
	}

	Component {
		id: delegate
		Rectangle {
			width: 200
			height: 200
			transformOrigin: Item.Bottom
			color: "darkred"
			scale: PathView.scaling
			z: PathView.zIndex
			Text {
				color: "white"
				text: paragraph;
				wrapMode: Text.WordWrap
				anchors.fill: parent
				anchors.margins: 10
				anchors.horizontalCenter: parent.horizontalCenter
				font.pointSize: 16
				clip: true
			}
			MouseArea {
				anchors.fill: parent
				onClicked: {
				}
			}
		}
	}


	PathView {
		id: view
		anchors.fill: parent
		model: model
		delegate: delegate
		clip: true
		path: pPath
		pathItemCount: 10
	}

	Path {
		id: pPath
		startX: -100
		startY: main.height / 2
		PathAttribute {
			name: "scaling"
			value: 0.25
		}
		PathAttribute {
			name: "zIndex"
			value: 1
		}
		PathLine {
			x: main.width / 2
			y: main.height / 2
		}
		PathAttribute {
			name: "scaling"
			value: 1
		}
		PathAttribute {
			name: "zIndex"
			value: 10
		}
		PathLine {
			x: main.width + 100
			y: main.height / 2
		}
	}
}
