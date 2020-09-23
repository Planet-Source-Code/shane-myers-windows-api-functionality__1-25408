Attribute VB_Name = "Module1"
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long


Public Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long


Public Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long


Public Function HideClock()
    Dim FindClass As Long, FindParent As Long, Handle As Long
    FindClass& = FindWindow("Shell_TrayWnd", vbNullString)
    FindParent& = FindWindowEx(FindClass&, 0, "TrayNotifyWnd", vbNullString)
    Handle& = FindWindowEx(FindParent&, 0, "TrayClockWClass", vbNullString)
    ShowWindow Handle&, 0
End Function


Public Function ShowClock()
    Dim FindClass As Long, FindParent As Long, Handle As Long
    FindClass& = FindWindow("Shell_TrayWnd", vbNullString)
    FindParent& = FindWindowEx(FindClass&, 0, "TrayNotifyWnd", vbNullString)
    Handle& = FindWindowEx(FindParent&, 0, "TrayClockWClass", vbNullString)
    ShowWindow Handle&, 1
End Function
