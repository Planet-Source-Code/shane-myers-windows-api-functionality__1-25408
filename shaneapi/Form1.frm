VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Windows functionality "
   ClientHeight    =   3165
   ClientLeft      =   60
   ClientTop       =   375
   ClientWidth     =   7200
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":030A
   ScaleHeight     =   3165
   ScaleWidth      =   7200
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command16 
      Caption         =   "About the Author"
      Height          =   735
      Left            =   2880
      TabIndex        =   23
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Frame Frame7 
      Caption         =   "Taskbar"
      Height          =   855
      Left            =   4320
      TabIndex        =   20
      Top             =   2160
      Width           =   2775
      Begin VB.CommandButton Command15 
         Caption         =   "Show"
         Height          =   495
         Left            =   1440
         TabIndex        =   22
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton Command14 
         Caption         =   "Hide"
         Height          =   495
         Left            =   120
         TabIndex        =   21
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "ctrl+alt+del"
      Height          =   855
      Left            =   0
      TabIndex        =   16
      Top             =   2160
      Width           =   2775
      Begin VB.CommandButton Command12 
         Caption         =   "Disable"
         Height          =   495
         Left            =   1320
         TabIndex        =   18
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton Command11 
         Caption         =   "Enable"
         Height          =   495
         Left            =   120
         TabIndex        =   17
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Mouse"
      Height          =   1215
      Left            =   4320
      TabIndex        =   5
      Top             =   840
      Width           =   1355
      Begin VB.CommandButton Command8 
         Caption         =   "Show Mouse"
         Height          =   375
         Left            =   120
         TabIndex        =   13
         Top             =   600
         Width           =   1095
      End
      Begin VB.CommandButton Command7 
         Caption         =   "Hide Mouse"
         Height          =   375
         Left            =   120
         TabIndex        =   12
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Miscellaneous"
      Height          =   1215
      Left            =   5760
      TabIndex        =   4
      Top             =   840
      Width           =   1355
      Begin VB.CommandButton Command10 
         Caption         =   "Show Clock"
         Height          =   375
         Left            =   120
         TabIndex        =   15
         Top             =   600
         Width           =   1095
      End
      Begin VB.CommandButton Command9 
         Caption         =   "Hide Clock"
         Height          =   375
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Win Session"
      Height          =   1455
      Left            =   2880
      TabIndex        =   3
      Top             =   840
      Width           =   1355
      Begin VB.CommandButton Command13 
         Caption         =   "Time On"
         Height          =   375
         Left            =   120
         TabIndex        =   19
         Top             =   960
         Width           =   1095
      End
      Begin VB.CommandButton Command6 
         Caption         =   "Restart"
         Height          =   375
         Left            =   120
         TabIndex        =   11
         Top             =   600
         Width           =   1095
      End
      Begin VB.CommandButton Command5 
         Caption         =   "Log Off User"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "CD rom"
      Height          =   1215
      Left            =   1440
      TabIndex        =   2
      Top             =   840
      Width           =   1355
      Begin VB.CommandButton Command4 
         Caption         =   "Close CD"
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   600
         Width           =   1095
      End
      Begin VB.CommandButton Command3 
         Caption         =   "Open CD"
         Height          =   375
         Left            =   120
         TabIndex        =   8
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Start button"
      Height          =   1215
      Left            =   0
      TabIndex        =   1
      Top             =   840
      Width           =   1335
      Begin VB.CommandButton Command2 
         Caption         =   "Show Start"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   600
         Width           =   1095
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Hide Start"
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Label Label1 
      Caption         =   $"Form1.frx":2090
      Height          =   855
      Left            =   960
      TabIndex        =   0
      Top             =   0
      Width           =   5535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    HideStartButton
End Sub


Private Sub Command10_Click()
ShowClock
End Sub

Private Sub Command11_Click()
CtrlAltDel_Enable

End Sub

Private Sub Command12_Click()
CtrlAltDel_Disable
End Sub

Private Sub Command13_Click()
MsgBox "This windows session has been going for " & Format(GetTickCount / 60000, "0") & " minutes.", vbOKOnly + vbInformation, "Time in windows"
End Sub

Private Sub Command14_Click()
 Dim hwnd As Long
    hwnd = FindWindow("Shell_traywnd", "")
    Call SetWindowPos(hwnd, 0, 0, 0, 0, 0, SWP_HIDEWINDOW)
End Sub

Private Sub Command15_Click()
 Dim hwnd As Long
    hwnd = FindWindow("Shell_traywnd", "")
    Call SetWindowPos(hwnd, 0, 0, 0, 0, 0, SWP_SHOWWINDOW)
End Sub

Private Sub Command16_Click()
dialog.Show 'show Form1
Unload Me 'unload this form
End Sub

Private Sub Command2_Click()
    ShowStartButton
End Sub


    
Private Sub Command3_Click()
    EjectCD
End Sub

Private Sub cmd4_Click()
     
    'call sub
    CloseCD
End Sub
    
Private Sub Command4_Click()
retvalue = MciSendString("set CDAudio door closed", vbNullString, 0, 0)
End Sub

Private Sub Command5_Click()
ExitWindowsEx EWX_LOGOFF, 0
End Sub

Private Sub Command6_Click()
ExitWindowsEx EWX_REBOOT, 0
ExitWindowsEx EWX_REBOOT, 0
ExitWindowsEx EWX_REBOOT, 0
End Sub

Private Sub Command7_Click()
ShowCursor (bShow = True)
End Sub

Private Sub Command8_Click()
ShowCursor (bShow = False)
End Sub

Private Sub Command9_Click()
HideClock
End Sub
