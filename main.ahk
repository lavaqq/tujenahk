#Requires AutoHotkey v2.0

global Point1 := {x: 0, y: 0}
global Point2 := {x: 0, y: 0}
global Point3 := {x: 0, y: 0}

SC029:: ; Key to store Point 1
{
    MouseGetPos, xPos, yPos
    Point1 := {x: xPos, y: yPos}
    MsgBox "Point 1 stored at: " . Point1.x . ", " . Point1.y
}

SC027:: ; Key to store Point 2
{
    MouseGetPos, xPos, yPos
    Point2 := {x: xPos, y: yPos}
    MsgBox "Point 2 stored at: " . Point2.x . ", " . Point2.y
}

SC00C:: ; Key to store Point 3
{
    MouseGetPos, xPos, yPos
    Point3 := {x: xPos, y: yPos}
    MsgBox "Point 3 stored at: " . Point3.x . ", " . Point3.y
}

SC00E:: ; Key to move the cursor to Point 3, click, and reset mouse to center
{
    MouseMove Point3.x, Point3.y
    Click
    CenterMouse()
}

SC02B:: ; Key to move the cursor to Point 1, click, move to Point 2, click, and reset mouse to center
{
    MouseMove Point1.x, Point1.y
    Click
    MouseMove Point2.x, Point2.y
    Click
    CenterMouse()
}

CenterMouse() {
    SysGet MonitorPrimary, Monitor
    MouseMove MonitorPrimary.Right // 2, MonitorPrimary.Bottom // 2
}
