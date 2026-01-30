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

   On Error GoTo Err_Rafraichir

   Select Case BytModeRafraichir
      Case RAFRAICHIRVISIBLE, RAFRAICHIRDEPLACEMENT

         CmbCliChdGaz.Requery

         CmbCliChdPuissance.Requery

         CmbCliChdIdentification.Requery

         CmbCliChdMarque.Requery

      Case Else

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
Private Sub Form_Open(Cancel As Integer)

   On Error GoTo Err_Form_Open

   On Error Resume Next

   Select Case IsObject(Me.Parent)
      Case True

      Case False

         Cancel = True

   End Select

   Select Case Err.Number
      Case vbEmpty

      Case Else

         Err.Clear

         Cancel = True

   End Select

   On Error GoTo Err_Form_Open

Exit_Form_Open:

   Exit Sub

Err_Form_Open:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Open"

   Resume Exit_Form_Open
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Form_Load()

   On Error GoTo Err_Form_Load

'   ChangeBoutonMode Me, MODEDEPLACEMENT

   SFrmFicheClientsChaudieresInterventions.Form.AllowAdditions = True

   SFrmFicheClientsChaudieresInterventions.Form.AllowEdits = True

   SFrmFicheClientsChaudieresInterventions.Form.AllowDeletions = True

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
'         AgtBretin.AfficheMessage "Vous Devez Validez Ou Annulez La Modification En Cours", , Me.Caption

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

'   Select Case IntMode
'      Case MODEVALIDE
'
'      Case Else
'
'         Cancel = True
'
'         GoTo Exit_Form_BeforeUpdate
'   End Select

   Select Case IsNull(CliChdRef)
      Case False

      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Client Chaudiére Reference Est Obligatoire", , Me.Caption

         TxtCliChdRef.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   Select Case IsNull(CliChdGaz)
      Case False

         CmbCliChdGaz = UCase(CmbCliChdGaz)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Clients Chaudieres Gaz Est Obligatoire", , Me.Caption

         CmbCliChdGaz.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   Select Case IsNull(CliChdIdentification)
      Case False

         CmbCliChdIdentification = UCase(CliChdIdentification)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Clients Chaudieres Identification Est Obligatoire", , Me.Caption

         CmbCliChdIdentification.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   Select Case IsNull(CliChdMarque)
      Case False

         CmbCliChdMarque = UCase(CliChdMarque)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Client Chaudiére Marque Est Obligatoire", , Me.Caption

         CmbCliChdMarque.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

   Select Case IsNull(CliChdPuissance)
      Case False

         CmbCliChdPuissance = UCase(CmbCliChdPuissance)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Clients Chaudieres Puissance Est Obligatoire", , Me.Caption

         CmbCliChdPuissance.SetFocus

         GoTo Exit_Form_BeforeUpdate
   End Select

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

   TxtCliChdRef.SetFocus

'   ChangeBoutonMode Me, MODEDEPLACEMENT

   TxtCliChdRef.SetFocus

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
Private Sub CmdAjouter_Click()
   Dim BlnActif As Boolean

   On Error GoTo Err_CmdAjouter_Click

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

         CmdImprimer.SetFocus

      Case Else

         TxtCliChdRef.SetFocus

   End Select

   ChangeBoutonMode Me, MODEAJOUT

   DoCmd.RunCommand acCmdRecordsGoToNew

   BlnActif = CbxCliChdActif

   CbxCliChdActif = True

   CbxCliChdActif = BlnActif

   TxtCliChdRef.SetFocus

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
   Dim BlnActif As Boolean

   On Error GoTo Err_CmdModifier_Click

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

      Case Else

         TxtCliChdRef.SetFocus

         ChangeBoutonMode Me, MODEMODIF

         BlnActif = CbxCliChdActif

         CbxCliChdActif = True

         CbxCliChdActif = BlnActif

         TxtCliChdRef.SetFocus

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

         TxtCliChdRef.SetFocus

         ChangeBoutonMode Me, MODESUPPRIME

         On Error Resume Next

         DoCmd.RunCommand acCmdDeleteRecord

         Select Case Err.Number
            Case vbEmpty

            Case Else

               Err.Clear

               ChangeBoutonMode Me, IntModeOld

         End Select

         ChangeBoutonMode Me, MODEDEPLACEMENT

         Select Case Me.RecordsetClone.RecordCount
            Case vbEmpty

            Case Else

               TxtCliChdRef.SetFocus

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

   TxtCliChdRef.SetFocus

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

   TxtCliChdRef.SetFocus

   Me.Undo

   ChangeBoutonMode Me, MODEDEPLACEMENT

   Select Case Me.RecordsetClone.RecordCount
      Case vbEmpty

      Case Else

         TxtCliChdRef.SetFocus

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
Private Sub CmbCliChdGaz_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliChdGaz_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliChdGaz_KeyPress:

   Exit Sub
Err_CmbCliChdGaz_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliChdGaz_KeyPress"

   Resume Exit_CmbCliChdGaz_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliChdPuissance_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliChdPuissance_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliChdPuissance_KeyPress:

   Exit Sub
Err_CmbCliChdPuissance_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliChdPuissance_KeyPress"

   Resume Exit_CmbCliChdPuissance_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliChdIdentification_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliChdIdentification_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliChdIdentification_KeyPress:

   Exit Sub

Err_CmbCliChdIdentification_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliChdIdentification_KeyPress"

   Resume Exit_CmbCliChdIdentification_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmbCliChdMarque_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_CmbCliChdMarque_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_CmbCliChdMarque_KeyPress:

   Exit Sub

Err_CmbCliChdMarque_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmbCliChdMarque_KeyPress"

   Resume Exit_CmbCliChdMarque_KeyPress
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub SFrmFicheClientsChaudieresInterventions_Enter()

   On Error GoTo Err_SFrmFicheClientsChaudieresInterventions_Enter

   SFrmFicheClientsChaudieresInterventions.Form.AllowAdditions = True

   SFrmFicheClientsChaudieresInterventions.Form.AllowEdits = True

   SFrmFicheClientsChaudieresInterventions.Form.AllowDeletions = True

Exit_SFrmFicheClientsChaudieresInterventions_Enter:

   Exit Sub

Err_SFrmFicheClientsChaudieresInterventions_Enter:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "SFrmFicheClientsChaudieresInterventions_Enter"

   Resume Exit_SFrmFicheClientsChaudieresInterventions_Enter
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtCliChdRef_KeyPress(KeyAscii As Integer)

   On Error GoTo Err_TxtCliChdRef_KeyPress

   KeyAscii = Asc(UCase(Chr(KeyAscii)))

Exit_TxtCliChdRef_KeyPress:

   Exit Sub

Err_TxtCliChdRef_KeyPress:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtCliChdRef_KeyPress"

   Resume Exit_TxtCliChdRef_KeyPress
End Sub
