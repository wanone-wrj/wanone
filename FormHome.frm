VERSION 5.00
Begin VB.Form FormHome 
   Caption         =   "极域杀手"
   ClientHeight    =   1095
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4935
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   1095
   ScaleWidth      =   4935
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer1 
      Left            =   4440
      Top             =   240
   End
   Begin VB.CommandButton Command2 
      Caption         =   "隐藏(&C)"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "直接结束(&B)"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4215
   End
End
Attribute VB_Name = "FormHome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowPos& Lib "user32" (ByVal hwnd As Long, _
ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, _
ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)
Private Sub Command1_Click()

    Open "taskkill.bat" For Append As #1
    
    Print #1, "taskkill / f / im  studentmain.exe"
    
    Close #1
    
    MsgBox ("OK")
    
    Shell "taskkill.bat"
    
End Sub

Private Sub Command2_Click()
    
    If FormHome.Visible = True Then
    
        FormHome.Hide
        
    Else
    
        FormHome.Show
        
    End If
End Sub

Private Sub Form_Load()
Timer1.Interval = 10
Timer1.Enabled = True
End Sub
Private Sub Timer1_Timer()
SetWindowPos Me.hwnd, -1, 0, 0, 0, 0, 3
End Sub
