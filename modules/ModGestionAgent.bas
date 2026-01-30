Attribute VB_Name = "ModGestionAgent"
'******************************************************************************
'***    DeltaInformatique Copyright                                                              ***
'******************************************************************************
'***    MODULE:                                                                                          ***
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
'***   Declaration De Constante Public                                                         ***
'******************************************************************************

'******************************************************************************
'***    Declaration D'Object Public                                                               ***
'******************************************************************************

'******************************************************************************
'***    Object De Control De L'Agent Et De L'Assitant                                  ***
'******************************************************************************
Public AgtBretin As New ClsAgent

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
Public Function InitialiseAgent() As Boolean
   Dim RsFichier As DAO.Recordset
   Dim StrCheminServeur As String

   On Error GoTo Err_InitialiseAgent

   InitialiseAgent = True

   StrCheminServeur = Left(CurrentDb.Name, InStrRev(CurrentDb.Name, "\") - 1) & "\DATA\INSTALLS"

   Select Case GetSetting(CurrentDb.Name, "INSTALL", "MSAGENT.EXE", "NON")
      Case "OUI"

      Case "NON"

         SaveSetting CurrentDb.Name, "INSTALL", "MSAGENT.EXE", "OUI"

         Shell StrCheminServeur & "\" & "MSAGENT.EXE"

   End Select

   Select Case GetSetting(CurrentDb.Name, "INSTALL", "ACTCNC.EXE", "NON")
      Case "OUI"

      Case "NON"

         SaveSetting CurrentDb.Name, "INSTALL", "ACTCNC.EXE", "OUI"

         Shell StrCheminServeur & "\" & "ACTCNC.EXE"

   End Select

   Select Case GetSetting(CurrentDb.Name, "INSTALL", "LHTTSFRF.EXE", "NON")
      Case "OUI"

      Case "NON"

         SaveSetting CurrentDb.Name, "INSTALL", "LHTTSFRF.EXE", "OUI"

         Shell StrCheminServeur & "\" & "LHTTSFRF.EXE"

   End Select

   Set RsFichier = CurrentDb.OpenRecordset("SELECT SelFichiersDetailler.* FROM SelFichiersDetailler WHERE FicType='FICACS' AND FicCode LIKE '*=*' AND FicValide=True")

   AgtBretin.FichierNom = RsFichier!FicValeur & "\" & RsFichier!FicCode2

   AgtBretin.InitialiseAssitant

   AgtBretin.InitialiseAgent

   AgtBretin.Visible = True

   RsFichier.Close

Exit_InitialiseAgent:

   Set RsFichier = Nothing

   Exit Function

Err_InitialiseAgent:

   InitialiseAgent = False

   MsgBox Err.Number & " " & Err.Description, , "InitialiseAgent"

   Resume Exit_InitialiseAgent:
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
Public Function TermineAgent() As Boolean

   On Error GoTo Exit_InitialiseAgent

   TermineAgent = True

   Set AgtBretin = Nothing

Exit_InitialiseAgent:

   Exit Function

Err_InitialiseAgent:

   TermineAgent = False

   MsgBox Err.Number & " " & Err.Description, , "InitialiseAgent"

   Resume Exit_InitialiseAgent:
End Function
