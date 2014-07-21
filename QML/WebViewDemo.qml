import Qt 4.7
import QtWebKit 1.0
Flickable {
    id: flick;
	width: 640;
	height: 400
    clip: true
    contentWidth: web.width; 
	contentHeight: web.height
    WebView {
        id: web
        url: "http://qt-project.org"
        onLoadFinished: {
            flick.contentY += 1;
            web.evaluateJavaScript('console.log("Hi there!")');
        }
		javaScriptWindowObjects: QtObject {
			id: testQObject
			property string value: ''
			WebView.windowObjectName: 'data'
		}
    }
}
