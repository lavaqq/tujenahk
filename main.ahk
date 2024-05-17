#Requires AutoHotkey v2.0

global Point1 := {x: 0, y: 0}
global Point2 := {x: 0, y: 0}
global Point3 := {x: 0, y: 0}

à::  ; Key to store Point 1
    MouseGetPos &Point1.x, &Point1.y
    MsgBox "Point 1 stored at: " . Point1.x . ", " . Point1.y
return

ç::  ; Key to store Point 2
    MouseGetPos &Point2.x, &Point2.y
    MsgBox "Point 2 stored at: " . Point2.x . ", " . Point2.y
return

!::  ; Key to store Point 3
    MouseGetPos &Point3.x, &Point3.y
    MsgBox "Point 3 stored at: " . Point3.x . ", " . Point3.y
return

è::  ; Key to move the cursor to Point 3, click, and reset mouse to center
    MouseMove Point3.x, Point3.y
    Click
    CenterMouse()
return

§::  ; Key to move the cursor to Point 1, click, move to Point 2, click, and reset mouse to center
    MouseMove Point1.x, Point1.y
    Click
    MouseMove Point2.x, Point2.y
    Click
    CenterMouse()
return

CenterMouse() {
    SysGet MonitorPrimary, Monitor
    MouseMove MonitorPrimary.Right // 2, MonitorPrimary.Bottom // 2
}
