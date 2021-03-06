VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frmSelDefFormaPago 
   Appearance      =   0  'Flat
   BackColor       =   &H00DDDDDD&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Formas de Pago"
   ClientHeight    =   3870
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3735
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmSelDefFormaPago.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   3870
   ScaleWidth      =   3735
   Begin VB.Frame Frame1 
      BackColor       =   &H00DDDDDD&
      Caption         =   "Formas de Pago"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   120
      TabIndex        =   9
      Top             =   120
      Width           =   3495
      Begin VB.TextBox txtDescripcion 
         Enabled         =   0   'False
         Height          =   690
         Left            =   1440
         MultiLine       =   -1  'True
         TabIndex        =   2
         Top             =   1125
         Width           =   1920
      End
      Begin VB.TextBox txtTiempo 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2058
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         Height          =   315
         Left            =   1440
         TabIndex        =   3
         Text            =   "0"
         Top             =   1845
         Width           =   1530
      End
      Begin VB.TextBox txtPeriodo 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2058
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         Height          =   315
         Left            =   1440
         TabIndex        =   4
         Text            =   "0"
         Top             =   2205
         Width           =   1530
      End
      Begin MSDataListLib.DataCombo dcmbCodigo 
         Height          =   330
         Left            =   1440
         TabIndex        =   0
         Top             =   360
         Width           =   1920
         _ExtentX        =   3387
         _ExtentY        =   582
         _Version        =   393216
         MatchEntry      =   -1  'True
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo dcmbNombre 
         Height          =   330
         Left            =   1440
         TabIndex        =   1
         Top             =   765
         Width           =   1920
         _ExtentX        =   3387
         _ExtentY        =   582
         _Version        =   393216
         MatchEntry      =   -1  'True
         Text            =   ""
      End
      Begin VB.Label lblCodigo 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "C�digo:"
         ForeColor       =   &H00000080&
         Height          =   210
         Left            =   120
         TabIndex        =   14
         Top             =   420
         Width           =   540
      End
      Begin VB.Label lblNombre 
         BackStyle       =   0  'Transparent
         Caption         =   "Forma de Pago:"
         ForeColor       =   &H00000080&
         Height          =   225
         Left            =   120
         TabIndex        =   13
         Top             =   825
         Width           =   1290
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Descripci�n:"
         ForeColor       =   &H00000080&
         Height          =   210
         Left            =   120
         TabIndex        =   12
         Top             =   1245
         Width           =   900
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Tiempo (d�as):"
         ForeColor       =   &H00000080&
         Height          =   210
         Left            =   120
         TabIndex        =   11
         Top             =   1890
         Width           =   1020
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Per�odo (d�as):"
         ForeColor       =   &H00000080&
         Height          =   210
         Left            =   120
         TabIndex        =   10
         Top             =   2250
         Width           =   1050
      End
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "&Salir"
      Height          =   375
      Left            =   1920
      TabIndex        =   8
      Top             =   3360
      Width           =   1455
   End
   Begin VB.CommandButton cmdEliminar 
      Caption         =   "&Eliminar"
      Enabled         =   0   'False
      Height          =   375
      Left            =   360
      TabIndex        =   7
      Top             =   3360
      Width           =   1455
   End
   Begin VB.CommandButton cmdModificar 
      Caption         =   "&Modificar"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1920
      TabIndex        =   6
      Top             =   2880
      Width           =   1455
   End
   Begin VB.CommandButton cmdNuevo 
      Caption         =   "&Nuevo"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   2880
      Width           =   1455
   End
End
Attribute VB_Name = "frmSelDefFormaPago"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'################################################################################'
'#  Forma para la seleccion de la L�nea y poder modificar,                      #
'#  crear o eliminar lineas                                                     #
'#  frmSelDefFormaPago V1.0                                                     #
'#  Copyright (C) 2002                                                          #
'#                                                                              #
'#  Ventana para consultar las lineas que al momento estan                      #
'#  ingresadas en el sistema. Desde esta ventana se puede crear una nueva       #
'#  linea o modificar o eliminar las lineas ya creadas.                         #
'#  Desde esta ventana se llama a la ventana frmLinea en la que se crea         #
'#  y modifica las lineas                                                       #
'#                                                                              #
'#  Tablas que se maneja:                                                       #
'#        linea: En esta tabla se almacenan las nuevas lineas, se               #
'#               modifican los datos de las lineas y se eliminan.               #
'#                                                                              #
'#  Procedimientos INTERNOS:                                                    #
'#  Procedimientos EXTERNOS:                                                    #
'#                                                                              #
'#  Objetos de la forma:                                                        #
'#    clsCon_Def clsConsulta: Objeto para consultar a la base de datos          #
'#                                                                              #
'#                                                                              #
'################################################################################
'/****************************************************************************/'

Private clsCon_Def As clsConsulta
Private Sub Form_Unload(Cancel As Integer)
    Dim i As Long
    On Error Resume Next
    For i = 0 To Me.Controls.count - 1
        Set Me.Controls(i).DataSource = Nothing
    Next i
    On Error GoTo 0
    Set clsCon_Def = Nothing
End Sub

Private Sub cmdEliminar_Click()
   Dim strSql As String
    
    ' Consulta para conocer si existen ingresos asociados con la forma de pago a eliminar
    strSql = " SELECT count(ing_codigo) As Ing " & _
             " FROM ingreso " & _
             " WHERE for_pag_codigo='" & dcmbCodigo.Text & "'" & _
             " AND emp_codigo='" & strEmpresa & "'"
    clsCon_Def.Ejecutar (strSql)
    ' Si existen ingresos o egresos con esta forma de pago no se elimina
    If clsCon_Def.adorec_Def("Ing") > 0 Then
        MsgBox "No Puede eliminar esta categor�a", vbInformation, "Eliminaci�n"
    Else
        'Consulta para conocer si existen egresos asociados con la forma de pago a eliminar
        strSql = " SELECT count(egr_codigo) As Egr " & _
                 " FROM egreso " & _
                 " WHERE for_pag_codigo='" & dcmbCodigo.Text & "'" & _
                 " AND emp_codigo='" & strEmpresa & "'"
        clsCon_Def.Ejecutar (strSql)
        
        ' Si existen ingresos o egresos con esta forma de pago no se elimina
        If clsCon_Def.adorec_Def("Egr") > 0 Then
            MsgBox "No Puede eliminar esta Forma de Pago", vbInformation, "Eliminaci�n"
        Else ' Si no existen ingresos ni egresos se puede eliminar esta forma de pago
            strSql = " DELETE " & _
                     " FROM forma_pago " & _
                     " WHERE for_pag_codigo='" & dcmbCodigo.Text & "'" & _
                     " AND emp_codigo='" & strEmpresa & "'"
            clsCon_Def.Ejecutar (strSql)
            MsgBox "Forma de Pago eliminada", vbInformation, "Eliminaci�n"
        End If
    End If
    ' Consulta para actualizar los combos
    strSql = " SELECT for_pag_codigo,for_pag_nombre,for_pag_descripcion,for_pag_tiempo,for_pag_periodo " & _
             " FROM forma_pago " & _
             " WHERE emp_codigo='" & strEmpresa & "' " & _
             " ORDER BY for_pag_nombre "
    clsCon_Def.Ejecutar (strSql)
    Set dcmbCodigo.RowSource = clsCon_Def.adorec_Def.DataSource
    dcmbCodigo.ListField = "for_pag_codigo"
    Set dcmbNombre.RowSource = clsCon_Def.adorec_Def.DataSource
    dcmbNombre.ListField = "for_pag_nombre"
    dcmbNombre.BoundColumn = "for_pag_codigo"
    dcmbCodigo.Text = ""
End Sub

Private Sub cmdModificar_Click()
' Modifica los datos de una linea, se manda a la variable Tag del formulario una bandera para
' conocer que se esta modificando y ademas se envia el c�digo de la linea que se modificar�
    frmDefFormaPago.Show
    frmDefFormaPago.txtCodigo.Text = Me.dcmbCodigo.Text
    frmDefFormaPago.txtNombre.Text = Me.dcmbNombre.Text
    frmDefFormaPago.TxtDescripcion.Text = Me.TxtDescripcion.Text
    frmDefFormaPago.txtTiempo.Text = Me.txtTiempo.Text
    frmDefFormaPago.txtPeriodo.Text = Me.txtPeriodo.Text
    frmDefFormaPago.Tag = "M"
End Sub

Private Sub cmdNuevo_Click()
' Crea una nueva linea, se manda a la variable Tag del formulario una bandera para
' conocer que se esta ingresar� una nueva linea
    frmDefFormaPago.Show
    frmDefFormaPago.Tag = "N"
End Sub

Private Sub CmdSalir_Click()
    Unload Me
End Sub

Private Sub dcmbCodigo_Change()
' Chequea la linea seleccionada y escribe su nombre en el combo
    Dim strComparar As String
    On Error GoTo errhandler
        clsCon_Def.adorec_Def.MoveFirst
        strComparar = "for_pag_codigo = '" & dcmbCodigo.Text & "'"
        clsCon_Def.adorec_Def.Find strComparar
        dcmbCodigo.Tag = "A"
        If clsCon_Def.adorec_Def.EOF = False Then
            dcmbNombre.Text = clsCon_Def.adorec_Def("for_pag_nombre")
            dcmbNombre.BoundText = dcmbCodigo.Text
            TxtDescripcion.Text = clsCon_Def.adorec_Def("for_pag_descripcion")
            txtTiempo.Text = clsCon_Def.adorec_Def("for_pag_tiempo")
            txtPeriodo.Text = clsCon_Def.adorec_Def("for_pag_periodo")
            cmdModificar.Enabled = True
            cmdEliminar.Enabled = True
        Else
            dcmbNombre.Text = ""
            dcmbNombre.BoundText = ""
            TxtDescripcion.Text = ""
            txtTiempo.Text = ""
            txtPeriodo.Text = ""
            cmdModificar.Enabled = False
            cmdEliminar.Enabled = False
        End If
        dcmbCodigo.Tag = ""
        Exit Sub
errhandler:
    Select Case Err.Number
        Case 1046
            MsgBox " When you perform a normal mysql_connect and " & vbCrLf & _
                   " not a mysql_real_connect you have to choose a " & vbCrLf & _
                   " database, so Please Choose a database."
        Case Else
            MsgBox "[" & Err.Number & "] " & Err.Description
    End Select
End Sub

Private Sub dcmbNombre_Change()
'Cambia el valor del codigo para actualizar este y la descripcion
    If dcmbCodigo.Tag <> "A" Then
        If dcmbNombre.MatchedWithList = True Then
        dcmbCodigo.Text = dcmbNombre.BoundText
        End If
    End If
End Sub

Private Sub dcmbNombre_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
'Cambia el valor del codigo para actualizar este y la descripcion
    dcmbCodigo.Text = dcmbNombre.BoundText
End Sub

Private Sub dcmbNombre_KeyUp(KeyCode As Integer, Shift As Integer)
'Cambia el valor del codigo para actualizar este y la descripcion
     If KeyCode = vbKeyDown Or KeyCode = vbKeyUp Then
        dcmbCodigo.Text = dcmbNombre.BoundText
    End If
End Sub
Private Sub Form_Activate()
' Actualiza la lista de lineas al volver al formulario
    clsCon_Def.Actualizar
    Set dcmbCodigo.RowSource = clsCon_Def.adorec_Def.DataSource
    dcmbCodigo.ListField = "for_pag_codigo"
    Set dcmbNombre.RowSource = clsCon_Def.adorec_Def.DataSource
    dcmbNombre.ListField = "for_pag_nombre"
    dcmbNombre.BoundColumn = "for_pag_codigo"
End Sub

Private Sub Form_Load()
    Dim strSql As String
    'Centra esta forma dentro de la forma MDI
    Me.Left = (mdiPrincipal.Width - Me.Width) / 2
    Me.Top = ((mdiPrincipal.Height - Me.Height) / 2) - (Me.Height / 6)
    On Error GoTo errhandler
        Set clsCon_Def = New clsConsulta
        clsCon_Def.Inicializar AdoConn
    'Consulta las lineas que estan disponibles
        strSql = " SELECT for_pag_codigo,for_pag_nombre,for_pag_descripcion,for_pag_tiempo,for_pag_periodo " & _
                 " FROM forma_pago " & _
                 " WHERE emp_codigo='" & strEmpresa & "' " & _
                 " ORDER BY for_pag_nombre "
        clsCon_Def.Ejecutar (strSql)
        Set dcmbCodigo.RowSource = clsCon_Def.adorec_Def.DataSource
        dcmbCodigo.ListField = "for_pag_codigo"
        Set dcmbNombre.RowSource = clsCon_Def.adorec_Def.DataSource
        dcmbNombre.ListField = "for_pag_nombre"
        dcmbNombre.BoundColumn = "for_pag_codigo"
        Exit Sub
        
errhandler:
    Select Case Err.Number
        Case 1046
            MsgBox " When you perform a normal mysql_connect and " & vbCrLf & _
                   " not a mysql_real_connect you have to choose a " & vbCrLf & _
                   " database, so Please Choose a database."
        Case Else
            MsgBox "[" & Err.Number & "] " & Err.Description
    End Select
End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyReturn Then
        KeyCode = 0
        SendKeys "{TAB}"
    End If
End Sub

