VERSION 5.00
Begin VB.Form dialog 
   Caption         =   "You may Use this Program for whatever you wish-"
   ClientHeight    =   1755
   ClientLeft      =   60
   ClientTop       =   375
   ClientWidth     =   5790
   LinkTopic       =   "Form1"
   Picture         =   "dialog.frx":0000
   ScaleHeight     =   1755
   ScaleWidth      =   5790
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Caption         =   $"dialog.frx":1D86
      Height          =   1095
      Left            =   360
      TabIndex        =   1
      Top             =   720
      Width           =   5175
   End
   Begin VB.Label Label2 
      Caption         =   "   QZsoftware concepts  De_Killer_bee@hotmail.com"
      DragIcon        =   "dialog.frx":1EE6
      Height          =   495
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "dialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit 'not needed

Private Sub OKButton_Click()
Form1.Show 'show Form1
Unload Me 'unload this form
End Sub

Private Sub Label1_Click()

End Sub
