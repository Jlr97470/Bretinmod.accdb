Attribute VB_Name = "ModGestionBase"
''******************************************************************************
'***    DeltaInformatique Copyright                                                              ***
'******************************************************************************
'***    FORM:                                                                                              ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    PROGRAMMEUR:                                                                              ***
'***      Royer Jean-Laurent                                                                         ***
'******************************************************************************

'******************************************************************************
'***    MODIF :                                                                                            ***
'******************************************************************************
Option Explicit

'******************************************************************************
'***   Constante Pour Le Controle D'Aide                                                     ***
'******************************************************************************
Public Const AFFICHEAIDETOPIC = &H0
Public Const AFFICHEAIDECONTEXT = &HF

'******************************************************************************
'***   Declaration De Variable Public                                                           ***
'******************************************************************************
Public StrClientsFiltre As String
Public StrChaudieresFiltre As String
Public StrInterventionsFiltre As String
Public StrContratsFiltre As String
'******************************************************************************
'***   Variable De Controle De La Version D'Access                                     ***
'******************************************************************************
Public StrAccessVersion As String
Public StrAccessVersionBuild As String

'******************************************************************************
'***    Declaration De Fonction Public                                                          ***
'******************************************************************************

'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
'Public Declare Function HtmlHelp Lib "HHCTRL.OCX" Alias "HtmlHelpA" (ByVal hwndCaller As Long, ByVal pszFile As String, ByVal uCommand As Long, ByVal dwData As Long) As Long

'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Public Function AfficheAide() As Boolean
   Dim FrmDataBase As Access.Form
   Dim CtlDataBase As Access.Control

   On Error GoTo Exit_AfficheAide

   AfficheAide = True

   Select Case IsObject(Screen.ActiveControl)
      Case True

         Set CtlDataBase = Screen.ActiveControl

         'HtmlHelp CtlDataBase.Parent.Hwnd, CtlDataBase.Parent.HelpFile, AFFICHEAIDETOPIC, CtlDataBase.HelpContextId

      Case False

         Select Case IsObject(Screen.ActiveForm)
            Case True

               Set FrmDataBase = Screen.ActiveForm

               'HtmlHelp FrmDataBase.Hwnd, FrmDataBase.HelpFile, AFFICHEAIDETOPIC, FrmDataBase.HelpContextId

            Case False

         End Select

   End Select

Exit_AfficheAide:

   Exit Function

Err_AfficheAide:

   AfficheAide = False

   MsgBox Err.Number & " " & Err.Description, , "AfficheAide"

   Resume Exit_AfficheAide:
End Function
