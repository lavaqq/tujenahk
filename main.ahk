#Requires AutoHotkey v2.0

global reroll := {x: 0, y: 0}
global validate := {x: 0, y: 0}
global scrollbar := {x: 0, y: 0}

SC029::
    {
        MouseGetPos &xpos, &ypos
        reroll := {x: xpos, y: ypos}
        MsgBox "Reroll button stored at: " . reroll.x . ", " . reroll.y
    }

SC027::
    {
        MouseGetPos &xpos, &ypos
        validate := {x: xpos, y: ypos}
        MsgBox "Validate button stored at: " . validate.x . ", " . validate.y
    }

SC00C::
    {
        MouseGetPos &xpos, &ypos
        scrollbar := {x: xpos, y: ypos}
        MsgBox "Scrollbar stored at: " . scrollbar.x . ", " . scrollbar.y
    }

SC00E::
    {
        MouseClick "left", reroll.x, reroll.y
    }

SC02B::
    {
        MouseMove validate.x, validate.y
        MouseClick "left"
        MouseMove scrollbar.x, scrollbar.y
        MouseClick "left"
        MouseMove validate.x, validate.y
        MouseClick "left"
    }