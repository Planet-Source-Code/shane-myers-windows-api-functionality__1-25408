Attribute VB_Name = "cd_rom"
Public Declare Function SendCD Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long

Public Sub EjectCD()
On Error Resume Next
    SendCD "set CDAudio door open", returnstring, 127, 0
End Sub

Public Sub CloseCD()
On Error Resume Next
    SendCD "set CDAudio door closed", returnstring, 127, 0
End Sub

