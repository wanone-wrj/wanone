VERSION 5.00
Begin VB.Form FormHome 
   Caption         =   "����ɱ��"
   ClientHeight    =   1095
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   1095
   ScaleWidth      =   4560
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "����(&C)"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   4215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ֱ�ӽ���(&B)"
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
Private Sub Command1_Click()

    Open "taskkill.bat" For Append As #1
    
    Print #1, "taskkill / f / im; studentmain.exe"
    
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
