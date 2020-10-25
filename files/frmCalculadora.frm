VERSION 5.00
Begin VB.Form frmCalculadora 
   Caption         =   "Calculadora"
   ClientHeight    =   4485
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4380
   Icon            =   "frmCalculadora.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4000
   ScaleMode       =   0  'User
   ScaleWidth      =   3755.627
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdadição 
      Caption         =   "+"
      Height          =   495
      Left            =   2040
      TabIndex        =   9
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdsubtração 
      Caption         =   "-"
      Height          =   495
      Index           =   1
      Left            =   2760
      TabIndex        =   6
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmddivisão 
      Caption         =   "/"
      Height          =   495
      Left            =   1320
      TabIndex        =   5
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdmultiplicação 
      Caption         =   "X"
      Height          =   495
      Left            =   600
      TabIndex        =   4
      Top             =   2040
      Width           =   495
   End
   Begin VB.TextBox txtResultado 
      Height          =   495
      Left            =   600
      Locked          =   -1  'True
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton cmdLimpar 
      Caption         =   "&Limpar"
      Height          =   495
      Left            =   2040
      TabIndex        =   2
      Top             =   2880
      Width           =   1095
   End
   Begin VB.TextBox txtNum2 
      Height          =   525
      Left            =   600
      TabIndex        =   1
      Top             =   1200
      Width           =   1095
   End
   Begin VB.TextBox txtNum1 
      Height          =   525
      Left            =   600
      TabIndex        =   0
      Top             =   360
      Width           =   1095
   End
   Begin VB.Label txtnumero2 
      Caption         =   "Número 2"
      Height          =   495
      Left            =   2040
      TabIndex        =   8
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label txtnumero1 
      Caption         =   "Número 1"
      Height          =   375
      Left            =   2040
      TabIndex        =   7
      Top             =   480
      Width           =   1695
   End
End
Attribute VB_Name = "frmCalculadora"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Label1_Click()

End Sub

Private Sub Text2_Change()

End Sub

Private Sub declarar_variaveis()
    Dim Valor1 As Single
    Dim Valor2 As Single
End Sub

Private Sub cmdadição_Click()
    Valor1 = txtNum1.Text
    Valor2 = txtNum2.Text
    txtResultado.Text = Format$(Valor1 * 1 + Valor2, "###,###.00")
End Sub

Private Sub cmddivisão_Click()
    Valor1 = txtNum1.Text
    Valor2 = txtNum2.Text
    txtResultado.Text = Format$(Valor1 / Valor2, "###,###.00")
End Sub

Private Sub cmdLimpar_Click()
    txtResultado.Text = ""
    txtNum1.Text = ""
    txtNum2.Text = ""
    txtNum1.SetFocus

End Sub

Private Sub cmdmultiplicação_Click()
    Valor1 = txtNum1.Text
    Valor2 = txtNum2.Text
    txtResultado.Text = Format$(Valor1 * Valor2, "###,###.00")
End Sub

Private Sub cmdsubtração_Click(Index As Integer)
    Valor1 = txtNum1.Text
    Valor2 = txtNum2.Text
    txtResultado.Text = Format$(Valor1 - Valor2, "###,###.00")
End Sub

