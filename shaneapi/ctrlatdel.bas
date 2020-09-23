Attribute VB_Name = "Module2"
Public Declare Function SystemParametersInfo2 Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long
    Public Const SPI_SCREENSAVERRUNNING = 97


Public Sub CtrlAltDel_Disable()
    'in a button or anywhere,
    'put this: ctrlaltdel_disable
    Dim syssend As Long
    syssend& = SystemParametersInfo2(SPI_SCREENSAVERRUNNING, True, False, 0)
End Sub


Public Sub CtrlAltDel_Enable()
    'in a button or anywhere,
    'put this: ctrlaltdel_enable
    Dim syssend As Long
    syssend& = SystemParametersInfo2(SPI_SCREENSAVERRUNNING, False, True, 0)
End Sub

