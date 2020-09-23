Attribute VB_Name = "startbutton"
'this is the easiest way i have found so far to add these controls to the module and form code.
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long


Public Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hWnd1 As Long, ByVal hWnd2 As Long, ByVal lpsz1 As String, ByVal lpsz2 As String) As Long


Public Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long


Sub HideStartButton()
    Dim Handle As Long, FindClass As Long
    FindClass& = FindWindow("Shell_TrayWnd", "")
    Handle& = FindWindowEx(FindClass&, 0, "Button", vbNullString)
    ShowWindow Handle&, 0
End Sub


Sub ShowStartButton()
    Dim Handle As Long, FindClass As Long
    FindClass& = FindWindow("Shell_TrayWnd", "")
    Handle& = FindWindowEx(FindClass&, 0, "Button", vbNullString)
    ShowWindow Handle&, 1
End Sub

