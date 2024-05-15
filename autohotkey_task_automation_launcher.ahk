; GUI (using an external library like KxGUI)
Gui, Add, ListView, r20 w300, Task|Description
LV_Add("Open Browser", "Launch Chrome")
LV_Add("Edit Script", "Open my_script.ahk in Notepad++")

Gui, Add, Button, gOnButtonClick, Launch Selected
Gui, Show

OnButtonClick:
    LV_GetText(selectedTask, LV_GetNext())
    If (selectedTask = "Open Browser")
        Run chrome.exe
    Else If (selectedTask = "Edit Script")
        Run notepad++.exe my_script.ahk
    ; ... (more tasks)
return
