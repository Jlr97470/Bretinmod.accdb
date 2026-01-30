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
Public Function AjouteCivilites(Optional ByVal StrCivilite As String) As Boolean
   Dim IntEtat As Integer

   On Error GoTo Err_AjouteCivilites

   AjouteCivilites = True

   Select Case AgtBretin.AfficheMessage("Voulez Vous Crée Une Nouvelle Civilité ? ", vbYesNo, Screen.ActiveForm.Caption)
      Case vbYes

         DonneEtatFormulaire "FrmLstCivilites", IntEtat

         Select Case IntEtat
           Case ETATFORMULAIRE

               Forms!FrmLstCivilites.SetFocus

               On Error Resume Next

               DoCmd.ApplyFilter , "CivCode=" & StrCivilite

               Select Case Err.Number
                  Case 0

                  Case 2501

                     Err.Clear

                  Case Else

                     GoTo Err_AjouteCivilites

               End Select

               GoTo Err_AjouteCivilites

               DoCmd.RunCommand acCmdRecordsGoToNew

               DoCmd.RunCommand acCmdWindowCascade

           Case Else

              DoCmd.OpenForm "FrmLstCivilites", acNormal, , , acFormAdd

         End Select

         Select Case StrCivilite
            Case vbNullString

            Case Else

               Forms!FrmLstCivilites.TxtCivCode = StrCivilite

         End Select

      Case vbNo

   End Select

Exit_AjouteCivilites:

   Exit Function

Err_AjouteCivilites:

   AjouteCivilites = False

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "AjouteCivilites"

   Resume Exit_AjouteCivilites
End Function
