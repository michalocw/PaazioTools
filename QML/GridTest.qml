import QtQuick 2.2


Rectangle {
	width: 800
	height: 600

	Grid {
		 columns: 3
		 spacing: 2
		 Rectangle { color: "red"; width: 50; height: 50 }
		 Rectangle { color: "green"; width: 20; height: 50 }
		 Rectangle { color: "blue"; width: 50; height: 20 }
		 Rectangle { color: "cyan"; width: 50; height: 50 }
		 Rectangle { color: "magenta"; width: 10; height: 10 }
	 }
}
