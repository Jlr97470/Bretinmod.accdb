Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
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
'***    Declaration De Variable Public                                                          ***
'******************************************************************************

'******************************************************************************
'***    Variable Du Mode De Saisie                                                              ***
'******************************************************************************
Public IntMode As Integer
Public IntModeOld As Integer
Private BlnModif As Boolean

'******************************************************************************
'***    Declaration De Variable Priver                                                          ***
'******************************************************************************

'******************************************************************************
'***    Variable Pour Le Mode Rafraichissement                                           ***
'******************************************************************************
Private TxtCliCivCode As String
Private TxtCliSousCivCode As String
Private TxtCliVilNum As String
Private TxtCliSousVilNum As String

'******************************************************************************
'***    Declaration De Procedure Priver                                                        ***
'******************************************************************************

'******************************************************************************
'***    PROCEDURE:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Private Sub Rafraichir(Optional ByVal BytModeRafraichir As Byte)
   Dim StrSQLCliCivCode As String
   Dim StrSQLCliSousCivCode As String
   Dim StrSQLCliVilNum As String
   Dim StrSQLCliSousVilNum As String
   Dim CtlActive As Control

   On Error GoTo Err_Rafraichir

   StrSQLCliCivCode = "SELECT TBLCIVILITES.CivCode, TBLCIVILITES.CivLibelle FROM TBLCIVILITES;"

   StrSQLCliSousCivCode = "SELECT TBLCIVILITES.CivCode, TBLCIVILITES.CivLibelle FROM TBLCIVILITES;"

   StrSQLCliVilNum = "SELECT TBLVILLES.VilNum, TBLVILLES.VilCodePostal, TBLVILLES.VilNom, TBLVILLES.VilPays FROM TBLVILLES ORDER BY TBLVILLES.VilCodePostal;"

   StrSQLCliSousVilNum = "SELECT TBLVILLES.VilNum, TBLVILLES.VilCodePostal, TBLVILLES.VilNom, TBLVILLES.VilPays FROM TBLVILLES ORDER BY TBLVILLES.VilCodePostal;"

   Select Case (Me.RecordsetClone.RecordCount = 0) And (Me.NewRecord = False)
      Case True

      Case False

         Select Case BytModeRafraichir
            Case RAFRAICHIRVISIBLE

               On Error Resume Next

               Set CtlActive = Me.ActiveControl

               Select Case Err.Number
                  Case 0

                  Case Else

                      Err.Clear

                      Set CtlActive = Me.TxtCliCode

              End Select

              On Error GoTo Err_Rafraichir
         End Select

         Select Case BytModeRafraichir
            Case RAFRAICHIRVISIBLE, RAFRAICHIRCHOIX, RAFRAICHIRDEPLACEMENT

               CmbCliCivCode.RowSource = StrSQLCliCivCode

               CmbCliVilNum.RowSource = StrSQLCliVilNum

               Select Case TxtCliCivCode
                  Case vbNullString

                     CmbCliCivCode.Requery

                  Case Else

                     CmbCliCivCode.Requery

                     Select Case CmbCliCivCode.Text
                        Case vbNullString

                           CmbCliCivCode.Text = TxtCliCivCode

                        Case Else

                     End Select

                     TxtCliCivCode = vbNullString

               End Select

               Select Case TxtCliVilNum
                  Case vbNullString

                     CmbCliVilNum.Requery

                  Case Else

                     CmbCliVilNum.Requery

                     Select Case CmbCliVilNum.Text
                        Case vbNullString

                           CmbCliVilNum.Text = TxtCliVilNum

                        Case Else

                     End Select

                     TxtCliVilNum = vbNullString

               End Select

               CmbCliTel1Libelle.Requery

               CmbCliTel2Libelle.Requery

               CmbCliEtage.Requery

               cmbCliEscalier.Requery

               CmbCliSousCivCode.RowSource = StrSQLCliSousCivCode

               CmbCliSousVilNum.RowSource = StrSQLCliSousVilNum

               Select Case TxtCliSousCivCode
                  Case vbNullString

                     CmbCliSousCivCode.Requery

                  Case Else

                     CmbCliSousCivCode.Requery

                     Select Case CmbCliSousCivCode.Text
                        Case vbNullString

                           CmbCliSousCivCode.Text = TxtCliSousCivCode

                        Case Else

                     End Select

                     TxtCliSousCivCode = vbNullString

               End Select

               Select Case TxtCliSousVilNum
                  Case vbNullString

                     CmbCliSousVilNum.Requery

                  Case Else

                     CmbCliSousVilNum.Requery

                     Select Case CmbCliSousVilNum.Text
                        Case vbNullString

                           CmbCliSousVilNum.Text = TxtCliSousVilNum

                        Case Else

                     End Select

                     TxtCliSousVilNum = vbNullString

               End Select

               CmbCliSousTel1Libelle.Requery

               CmbCliSousTel2Libelle.Requery

            Case Else

         End Select

         Select Case BytModeRafraichir
            Case RAFRAICHIRVISIBLE

               CtlActive.SetFocus

               Set CtlActive = Nothing

            Case Else

         End Select
   End Select

Exit_Rafraichir:

   Exit Sub

Err_Rafraichir:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Rafraichir"

   Resume Exit_Rafraichir
End Sub

'******************************************************************************
'***    Declaration D'Evenement Priver                                                        ***
'******************************************************************************

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_Open(Cancel As Integer)

   On Error GoTo Err_Form_Load

   ChangeBoutonMode Me, MODEDEPLACEMENT

   DoCmd.RunCommand acCmdWindowCascade

Exit_Form_Load:

   Exit Sub

Err_Form_Load:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Load"

   Resume Exit_Form_Load
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_Unload(Cancel As Integer)

   On Error GoTo Err_Form_Unload

   Select Case IntMode
      Case MODEDEPLACEMENT

      Case Else

'         Cancel = True
'
'         AgtBretin.AfficheMessage "Vous Devez Validez Ou Annulez La Modification En Cours !", , Me.Caption

   End Select

Exit_Form_Unload:

   Exit Sub

Err_Form_Unload:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Unload"

   Resume Exit_Form_Unload
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_ApplyFilter(Cancel As Integer, ApplyType As Integer)

   On Error GoTo Err_Form_Unload

   Select Case IntMode
      Case MODEDEPLACEMENT

      Case Else

         Cancel = True

         AgtBretin.AfficheMessage "Vous Devez Validez Ou Annulez La Modification En Cours !", , Me.Caption

   End Select

Exit_Form_Unload:

   Exit Sub

Err_Form_Unload:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Unload"

   Resume Exit_Form_Unload
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_BeforeUpdate(Cancel As Integer)

   On Error GoTo Err_Form_BeforeUpdate

   Select Case IntMode
      Case MODEVALIDE

      Case Else

         Cancel = True

         GoTo Exit_Form_BeforeUpdate
   End Select

   Select Case IsDate(CliDateCre)
      Case True

      Case False

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Client Date De Creation Est Invalide !", , Me.Caption

         TxtCliDateCre.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   CliDateMaj = Date

   Select Case IsNull(CliCivCode)
      Case False

      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Client Civilité Est Obligatoire !", , Me.Caption

         CmbCliCivCode.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   Select Case IsNull(CliNom)
      Case False

         TxtCliNom = UCase(TxtCliNom)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Client Nom Est Obligatoire !", , Me.Caption

         TxtCliNom.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   cmbCliEscalier = StrConv(cmbCliEscalier, vbProperCase)

   CmbCliBatiment = StrConv(CmbCliBatiment, vbProperCase)

   CmbCliPorte = StrConv(CmbCliPorte, vbProperCase)

   TxtCliAdresse = StrConv(TxtCliAdresse, vbProperCase)

   TxtCliSousAdresse = StrConv(TxtCliSousAdresse, vbProperCase)

Exit_Form_BeforeUpdate:

   Exit Sub

Err_Form_BeforeUpdate:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_BeforeUpdate"

   Resume Exit_Form_BeforeUpdate
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_AfterUpdate()

   On Error GoTo Err_Form_AfterUpdate

   TxtCliCode.SetFocus

   ChangeBoutonMode Me, MODEDEPLACEMENT

   TxtCliCode.SetFocus

Exit_Form_AfterUpdate:

   Exit Sub

Err_Form_AfterUpdate:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_AfterUpdate"

   Resume Exit_Form_AfterUpdate
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_Current()

   On Error GoTo Exit_Form_Current

   Rafraichir (RAFRAICHIRDEPLACEMENT)

Exit_Form_Current:

   Exit Sub
Err_Form_Current:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Current"

   Resume Exit_Form_Current
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_Activate()

   On Error GoTo Exit_Form_Activate

   Rafraichir (RAFRAICHIRVISIBLE)

Exit_Form_Activate:

   Exit Sub

Err_Form_Activate:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Activate"

   Resume Exit_Form_Activate
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAjouter_Click()
   Dim TxtDateCreer As String

   On Error GoTo Err_CmdAjouter_Click

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

         CmdImprimer.SetFocus

      Case Else

         TxtCliCode.SetFocus

   End Select

   ChangeBoutonMode Me, MODEAJOUT

   DoCmd.RunCommand acCmdRecordsGoToNew

   TxtDateCreer = TxtCliDateCre

   TxtCliDateCre = "01/01/2002"

   TxtCliDateCre = TxtDateCreer

   TxtCliCode.SetFocus

Exit_CmdAjouter_Click:

   Exit Sub

Err_CmdAjouter_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAjouter_Click"

   Resume Exit_CmdAjouter_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdModifier_Click()
   Dim TxtDateCreer As String

   On Error GoTo Err_CmdModifier_Click

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

      Case Else

         TxtCliCode.SetFocus

         ChangeBoutonMode Me, MODEMODIF

         TxtDateCreer = TxtCliDateCre

         TxtCliDateCre = "01/01/2002"

         TxtCliDateCre = TxtDateCreer

         TxtCliCode.SetFocus

   End Select

Exit_CmdModifier_Click:

   Exit Sub

Err_CmdModifier_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdModifier_Click"

   Resume Exit_CmdModifier_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdSupprimer_Click()

   On Error GoTo Err_CmdSupprimer_Click

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

      Case Else

         TxtCliCode.SetFocus

         ChangeBoutonMode Me, MODESUPPRIME

         On Error Resume Next

         DoCmd.RunCommand acCmdDeleteRecord

         Select Case Err.Number
            Case vbEmpty

            Case Else

               Err.Clear

               ChangeBoutonMode Me, IntModeOld

         End Select

         On Error GoTo Err_CmdSupprimer_Click

         ChangeBoutonMode Me, MODEDEPLACEMENT

         Select Case Me.RecordsetClone.RecordCount
            Case vbEmpty

            Case Else

               TxtCliCode.SetFocus

         End Select

   End Select

Exit_CmdSupprimer_Click:

   Exit Sub

Err_CmdSupprimer_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdSupprimer_Click"

   Resume Exit_CmdSupprimer_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdValider_Click()

   On Error GoTo Err_CmdValider_Click

   TxtCliCode.SetFocus

   ChangeBoutonMode Me, MODEVALIDE

   On Error Resume Next

   DoCmd.RunCommand acCmdSaveRecord

   Select Case Err.Number
      Case vbEmpty

      Case Else

         Err.Clear

         ChangeBoutonMode Me, IntModeOld

   End Select

   On Error GoTo Err_CmdValider_Click

   Rafraichir (RAFRAICHIRVISIBLE)

Exit_CmdValider_Click:

   Exit Sub

Err_CmdValider_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdValider_Click"

   Resume Exit_CmdValider_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAnnuler_Click()

   On Error GoTo Err_CmdAnnuler_Click

   TxtCliCode.SetFocus

   Me.Undo

   ChangeBoutonMode Me, MODEDEPLACEMENT

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

      Case Else

         TxtCliCode.SetFocus
   End Select

Exit_CmdAnnuler_Click:

   Exit Sub

Err_CmdAnnuler_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAnnuler_Click"

   Resume Exit_CmdAnnuler_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdFermer_Click()

   On Error GoTo Err_CmdFermer_Click

   On Error Resume Next

   DoCmd.Close acForm, Me.Name, acSavePrompt

   Select Case Err.Number
      Case vbEmpty

      Case Else

         Err.Clear

   End Select

   On Error GoTo Err_CmdFermer_Click

Exit_CmdFermer_Click:

   Exit Sub

Err_CmdFermer_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdFermer_Click"

   Resume Exit_CmdFermer_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAfficherTous_Click()

   On Error Resume Next

   Select Case Me.Filter
      Case vbNullString

      Case Else

         Me.Filter = vbNullString

         Select Case Err.Number
            Case vbEmpty

            Case Else

               Err.Clear

         End Select

         Me.Requery

   End Select

Exit_CmdAfficherTous_Click:

   Exit Sub
Err_CmdAfficherTous_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAfficherTous_Click"

   Resume Exit_CmdAfficherTous_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdRechercher_Click()

   On Error GoTo Err_CmdRechercher_Click

   OuvreRecherche 0

Exit_CmdRechercher_Click:

   Exit Sub

Err_CmdRechercher_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdRechercher_Click"

   Resume Exit_CmdRechercher_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdRechercherMulti_Click()

   On Error GoTo Err_CmdRechercherMulti_Click

   OuvreRechercheMulti

Exit_CmdRechercherMulti_Click:

   Exit Sub

Err_CmdRechercherMulti_Click:

   MsgBox Err.Number & " " & Err.Description, , "CmdRechercherMulti_Click"

   Resume Exit_CmdRechercherMulti_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdMinimize_Click()

   On Error GoTo Err_CmdMinimize_Click

   DoCmd.Minimize

Exit_CmdMinimize_Click:

   Exit Sub

Err_CmdMinimize_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdMinimize_Click"

   Resume Exit_CmdMinimize_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                           ***
'***    SORTIE:                                                                                            ***
'******************************************************************************
Private Sub CmdImprimer_Click()

   On Error GoTo Err_CmdImprimer_Click

   DoCmd.PrintOut acSelection

Exit_CmdImprimer_Click:

   Exit Sub

Err_CmdImprimer_Click:

   MsgBox Err.Number & " " & Err.Description, , "CmdImprimer_Click"

   Resume Exit_CmdImprimer_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdExporteExcel_Click()
   Dim StrSQLRequete As String
   Dim RsSocietes As DAO.Recordset

   On Error GoTo Err_CmdExporteExcel

   Select Case Me.RecordsetClone.RecordCount = 0
      Case True

      Case False

         StrSQLRequete = Me.RecordSource

         Select Case Me.FilterOn
            Case True

               Select Case InStr(1, StrSQLRequete, "WHERE")
                  Case 0

                     StrSQLRequete = Left(StrSQLRequete, InStrRev(StrSQLRequete, ";") - 1) & " WHERE " & IIf(Left(Me.Filter, 1) = Chr(34) And Right(Me.Filter, 1) = Chr(34), Mid(Me.Filter, 2, Len(Me.Filter) - 2), Me.Filter) & ";"

                  Case Else

                     StrSQLRequete = Left(StrSQLRequete, InStr(1, StrSQLRequete, "WHERE") + 5) & " " & IIf(Left(Me.Filter, 1) = Chr(34) And Right(Me.Filter, 1) = Chr(34), Mid(Me.Filter, 2, Len(Me.Filter) - 2), Me.Filter) & Mid(StrSQLRequete, InStr(1, StrSQLRequete, "WHERE") + 5)

               End Select

            Case False

         End Select

         On Error Resume Next

         Set RsSocietes = CurrentDb.OpenRecordset(StrSQLRequete)

         Select Case Err.Number
            Case 0

               RsSocietes.Close

               ExporteExcelRequete (StrSQLRequete)

            Case Else

               Err.Clear

               MsgBox "Impossible D'Exporter " & IIf(Me.FilterOn, "Avec Le Filtre En Cours", vbNullString) & " !!!"

         End Select

   End Select

Exit_CmdExporteExcel:

   Set RsSocietes = Nothing

   Exit Sub

Err_CmdExporteExcel:

   MsgBox Err.Number & " " & Err.Description, , "CmdExporteExcel"

   Resume Exit_CmdExporteExcel
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAjouterCivilitesUtilisateur_Click()

   On Error GoTo Err_CmdAjouterCivilitesUtilisateur_Click

   'AjouteCivilites

Exit_CmdAjouterCivilitesUtilisateur_Click:

   Exit Sub

Err_CmdAjouterCivilitesUtilisateur_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAjouterCivilitesUtilisateur_Click"

   Resume Exit_CmdAjouterCivilitesUtilisateur_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAjouterCivilitesSouscripteur_Click()

   On Error GoTo Err_CmdAjouterCivilitesSouscripteur_Click

   'AjouteCivilites

Exit_CmdAjouterCivilitesSouscripteur_Click:

   Exit Sub

Err_CmdAjouterCivilitesSouscripteur_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAjouterCivilitesSouscripteur_Click"

   Resume Exit_CmdAjouterCivilitesSouscripteur_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAjouterVillesUtilisateur_Click()

   On Error GoTo Err_CmdAjouterVillesUtilisateur_Click

   AjouteVilles

Exit_CmdAjouterVillesUtilisateur_Click:

   Exit Sub

Err_CmdAjouterVillesUtilisateur_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAjouterVillesUtilisateur_Click"

   Resume Exit_CmdAjouterVillesUtilisateur_Click
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdAjouterVillesSouscripteur_Click()

   On Error GoTo Err_CmdAjouterVillesSouscripteur_Click

   AjouteVilles

Exit_CmdAjouterVillesSouscripteur_Click:

   Exit Sub

Err_CmdAjouterVillesSouscripteur_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdAjouterVillesSouscripteur_Click"

   Resume Exit_CmdAjouterVillesSouscripteur_Click
End Sub


'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliCivCode_NotInList(NewData As String, Response As Integer)

   On Error GoTo Err_CmbCliCivCode_NotInList

   AjouteCivilites (NewData)

   Response = acDataErrContinue

   TxtCliCivCode = CmbCliCivCode.Text

   CmbCliCivCode.Undo

Exit_CmbCliCivCode_NotInList:

   Exit Sub

Err_CmbCliCivCode_NotInList:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliCivCode_NotInList"

   Resume Exit_CmbCliCivCode_NotInList
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousCivCode_NotInList(NewData As String, Response As Integer)

   On Error GoTo Err_CmbCliSousCivCode_NotInList

   AjouteCivilites (NewData)

   Response = acDataErrContinue

   TxtCliSousCivCode = CmbCliSousCivCode.Text

   CmbCliSousCivCode.Undo

Exit_CmbCliSousCivCode_NotInList:

   Exit Sub

Err_CmbCliSousCivCode_NotInList:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliSousCivCode_NotInList"

   Resume Exit_CmbCliSousCivCode_NotInList
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliVilNum_NotInList(NewData As String, Response As Integer)

   On Error GoTo Err_CmbCliVilNum_NotInList

   AjouteVilles (NewData)

   Response = acDataErrContinue

   TxtCliVilNum = CmbCliVilNum.Text

   CmbCliVilNum.Undo

Exit_CmbCliVilNum_NotInList:

   Exit Sub

Err_CmbCliVilNum_NotInList:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliVilNum_NotInList"

   Resume Exit_CmbCliVilNum_NotInList
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousVilNum_NotInList(NewData As String, Response As Integer)

   On Error GoTo Err_CmbCliSousVilNum_NotInList

   AjouteVilles (NewData)

   Response = acDataErrContinue

   TxtCliSousVilNum = CmbCliSousVilNum.Text

   CmbCliSousVilNum.Undo

Exit_CmbCliSousVilNum_NotInList:

   Exit Sub

Err_CmbCliSousVilNum_NotInList:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Err_CmbCliSousVilNum_NotInList"

   Resume Exit_CmbCliSousVilNum_NotInList
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub SFrmFicheClientsChaudieres_Enter()

   SFrmFicheClientsChaudieres.Form.AllowAdditions = True

   SFrmFicheClientsChaudieres.Form.AllowEdits = True

   SFrmFicheClientsChaudieres.Form.AllowDeletions = True

End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub SFrmFicheClientsContrats_Enter()

   SFrmFicheClientsContrats.Form.AllowAdditions = True

   SFrmFicheClientsContrats.Form.AllowEdits = True

   SFrmFicheClientsContrats.Form.AllowDeletions = True

End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtCliCode_AfterUpdate()

   On Error GoTo Err_TxtCliCode_AfterUpdate

'   Select Case Len(TxtCliCode)
'      Case Is < 6
'
'         TxtCliCode = String(6 - Len(TxtCliCode), "0") & TxtCliCode
'
'      Case Else
'
'   End Select

Exit_TxtCliCode_AfterUpdate:

   Exit Sub

Err_TxtCliCode_AfterUpdate:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtCliCode_AfterUpdate"

   Resume Exit_TxtCliCode_AfterUpdate
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliVilNum_GotFocus()

   On Error GoTo Err_CmbCliVilNum_GotFocus

   CmbCliVilNum.Dropdown

Exit_CmbCliVilNum_GotFocus:

   Exit Sub

Err_CmbCliVilNum_GotFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliVilNum_GotFocus"

   Resume Exit_CmbCliVilNum_GotFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliVilNum_LostFocus()

   On Error GoTo Err_CmbCliVilNum_LostFocus

   TxtCliVilNum = vbNullString

Exit_CmbCliVilNum_LostFocus:

   Exit Sub

Err_CmbCliVilNum_LostFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliVilNum_LostFocus"

   Resume Exit_CmbCliVilNum_LostFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************

Private Sub CmbCliCivCode_GotFocus()

   On Error GoTo Err_CmbCliCivCode_GotFocus

   CmbCliCivCode.Dropdown

Exit_CmbCliCivCode_GotFocus:

   Exit Sub

Err_CmbCliCivCode_GotFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliCivCode_GotFocus"

   Resume Exit_CmbCliCivCode_GotFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliCivCode_LostFocus()

   On Error GoTo Err_CmbCliCivCode_LostFocus

   TxtCliCivCode = vbNullString

Exit_CmbCliCivCode_LostFocus:

   Exit Sub

Err_CmbCliCivCode_LostFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliCivCode_LostFocus"

   Resume Exit_CmbCliCivCode_LostFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousVilNum_GotFocus()

   On Error GoTo Err_CmbCliSousVilNum_GotFocus

   CmbCliSousVilNum.Dropdown

Exit_CmbCliSousVilNum_GotFocus:

   Exit Sub

Err_CmbCliSousVilNum_GotFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliSousVilNum_GotFocus"

   Resume Exit_CmbCliSousVilNum_GotFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousVilNum_LostFocus()

   On Error GoTo Err_CmbCliSousVilNum_LostFocus

   TxtCliSousVilNum = vbNullString

Exit_CmbCliSousVilNum_LostFocus:

   Exit Sub

Err_CmbCliSousVilNum_LostFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliSousVilNum_LostFocus"

   Resume Exit_CmbCliSousVilNum_LostFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************

Private Sub CmbCliSousCivCode_GotFocus()

   On Error GoTo Err_CmbCliSousCivCode_GotFocus

   CmbCliSousCivCode.Dropdown

Exit_CmbCliSousCivCode_GotFocus:

   Exit Sub

Err_CmbCliSousCivCode_GotFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliSousCivCode_GotFocus"

   Resume Exit_CmbCliSousCivCode_GotFocus
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousCivCode_LostFocus()

   On Error GoTo Err_CmbCliSousCivCode_LostFocus

   TxtCliSousCivCode = vbNullString

Exit_CmbCliSousCivCode_LostFocus:

   Exit Sub

Err_CmbCliSousCivCode_LostFocus:

   MsgBox Err.Number & " " & Err.Description, , "CmbCliSousCivCode_LostFocus"

   Resume Exit_CmbCliSousCivCode_LostFocus
End Sub
'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtCliNom_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_TxtCliNom_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_TxtCliNom_KeyPress:

   Exit Sub

Err_TxtCliNom_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtCliNom_KeyPress"

   Resume Exit_TxtCliNom_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtCliPrenom_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_TxtCliPrenom_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_TxtCliPrenom_KeyPress:

   Exit Sub

Err_TxtCliPrenom_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtCliPrenom_KeyPress"

   Resume Exit_TxtCliPrenom_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtCliSousNom_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_TxtCliSousNom_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_TxtCliSousNom_KeyPress:

   Exit Sub

Err_TxtCliSousNom_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtCliSousNom_KeyPress"

   Resume Exit_TxtCliSousNom_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtCliSousPrenom_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_TxtCliSousPrenom_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_TxtCliSousPrenom_KeyPress:

   Exit Sub

Err_TxtCliSousPrenom_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtCliSousPrenom_KeyPress"

   Resume Exit_TxtCliSousPrenom_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliTel1Libelle_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliTel1Libelle_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliTel1Libelle_KeyPress:

   Exit Sub

Err_CmbCliTel1Libelle_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliTel1Libelle_KeyPress"

   Resume Exit_CmbCliTel1Libelle_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliTel2Libelle_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliTel2Libelle_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliTel2Libelle_KeyPress:

   Exit Sub

Err_CmbCliTel2Libelle_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliTel2Libelle_KeyPress"

   Resume Exit_CmbCliTel2Libelle_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousTel1Libelle_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliSousTel1Libelle_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliSousTel1Libelle_KeyPress:

   Exit Sub

Err_CmbCliSousTel1Libelle_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliSousTel1Libelle_KeyPress"

   Resume Exit_CmbCliSousTel1Libelle_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliSousTel2Libelle_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliSousTel2Libelle_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliSousTel2Libelle_KeyPress:

   Exit Sub

Err_CmbCliSousTel2Libelle_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliSousTel2Libelle_KeyPress"

   Resume Exit_CmbCliSousTel2Libelle_KeyPress
End Sub
