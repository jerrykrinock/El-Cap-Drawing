# El-Cap-Drawing

Demonstrates how, starting in OS X 10.11, drawing of windows is deferred until after the run loop cycles.

* Build and run the app.
* Watch the system console or Xcode console for the countdowns.

## Demo #1

* Click in the menu: File > Show Window.

RESULT: In 10.10, a window will appear immediately.  In 10.11, the window will not appear until after the 5-second countdown is done.

## DEMO #2

* Click in the menu: File > Show Open Panel.  An Open Panel will appear.
* Move the panel to some part of your screen which is not all white.
* Select a file and click "Open" button.

RESULT: In 10.10, the panel will disappear immediately and whatever was behind it will show.  In 10.11, the panel will be replaced by a white rectangle.  Whatever was behind will not appear until the 5-second task is done.

