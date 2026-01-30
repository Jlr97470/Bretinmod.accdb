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
'***  Declaration De Procedure Priver                                                          ***
'******************************************************************************

'******************************************************************************
'***  PROCEDURE:                                                                                      ***
'******************************************************************************
'***  FONCTION:                                                                                         ***
'******************************************************************************
'***  ENTREE:                                                                                            ***
'***  SORTIE:                                                                                             ***
'******************************************************************************
Private Function DonneFiltreContrats() As String
   Dim StrContrats As String
   Dim VarItem As Variant

   On Error GoTo Err_DonneFiltreContrats

   DonneFiltreContrats = vbNullString

   Select Case LstLstContrats.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstContrats.ItemsSelected.Count
            Case 1

               StrContrats = "CliNum=" & LstLstContrats.Column(0)

            Case Else

               StrContrats = "CliNum In("

               For Each VarItem In LstLstContrats.ItemsSelected

                  StrContrats = StrContrats & LstLstContrats.Column(0, VarItem) & ", "

               Next

               StrContrats = Left(StrContrats, Len(StrContrats) - 2) & ")"

         End Select

         DonneFiltreContrats = StrContrats

   End Select

Exit_DonneFiltreContrats:

   Exit Function

Err_DonneFiltreContrats:

   MsgBox Err.Number & " " & Err.Description, , "DonneFiltreContrats"

   Resume Exit_DonneFiltreContrats
End Function

'******************************************************************************
'***  PROCEDURE:                                                                                      ***
'******************************************************************************
'***  FONCTION:                                                                                         ***
'******************************************************************************
'***  ENTREE:                                                                                            ***
'***  SORTIE:                                                                                             ***
'******************************************************************************
Private Sub Rafraichir(Optional ByVal BytModeRafraichir As Byte)

   On Error GoTo Err_Rafraichir

   Select Case BytModeRafraichir
      Case RAFRAICHIRVISIBLE

         LstLstContrats.Requery

      Case Else

   End Select

Exit_Rafraichir:

   Exit Sub

Err_Rafraichir:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Rafraichir"

   Resume Exit_Rafraichir
End Sub

'******************************************************************************
'***  PROCEDURE:                                                                                      ***
'******************************************************************************
'***  FONCTION:                                                                                         ***
'******************************************************************************
'***  ENTREE:                                                                                            ***
'***  SORTIE:                                                                                             ***
'******************************************************************************
Private Sub ValideContrats()
   Dim IntEtat As Integer
   Dim StrSQLRequete As String
   Dim StrFiltreTableRequeteNom As String
   Dim StrFiltreChampSource As String
   Dim StrFiltreChampDestination As String
   Dim StrFiltreWhere As String

   On Error GoTo Err_ValideContrats

   Select Case LstLstContrats.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstContrats.ItemsSelected.Count = (LstLstContrats.ListCount - 1)
            Case True

               DonneFiltreElement StrContratsFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

               StrSQLRequete = "CliNum In(SELECT [SelClientsContrats].[CliNum] FROM [SelClientsContrats]  " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";)"

            Case False

               StrSQLRequete = DonneFiltreContrats

         End Select

         DonneEtatFormulaire "FrmClients", IntEtat

         Select Case IntEtat
            Case ETATFORMULAIRE

               Forms!FrmFicheClients.SetFocus

               On Error Resume Next

               DoCmd.ApplyFilter , StrSQLRequete

               Select Case Err.Number
                  Case 0

                  Case 2501

                     Err.Clear

                  Case Else

                     GoTo Err_ValideContrats

               End Select

               On Error GoTo Err_ValideContrats

               DoCmd.RunCommand acCmdWindowCascade

            Case Else

               DoCmd.OpenForm "FrmFicheClients", acNormal, , StrSQLRequete, acFormEdit

         End Select

   End Select

Exit_ValideContrats:

   Exit Sub

Err_ValideContrats:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "ValideContrats"

   Resume Exit_ValideContrats
End Sub

'******************************************************************************
'***  Declaration D'Evenement Priver                                                          ***
'******************************************************************************

'******************************************************************************
'***  EVENEMENT:                                                                                      ***
'******************************************************************************
'***  FONCTION:                                                                                         ***
'******************************************************************************
'***  ENTREE:                                                                                            ***
'***  SORTIE:                                                                                             ***
'******************************************************************************
Private Sub Form_Open(Cancel As Integer)
   Dim StrSQLContratsDebut As String
   Dim StrSQLContratsFin As String

   On Error GoTo Err_Form_Load

   StrSQLContratsDebut = "SELECT [SelClientsContrats].* " & _
                                       " FROM [SelClientsContrats] "

   StrSQLContratsFin = ";"

   Select Case StrContratsFiltre
      Case vbNullString

         LstLstContrats.RowSource = StrSQLContratsDebut & StrSQLContratsFin

      Case Else

         LstLstContrats.RowSource = StrSQLContratsDebut & "WHERE SelClientsContrats." & StrContratsFiltre & StrSQLContratsFin

   End Select

   DoCmd.RunCommand acCmdWindowCascade

Exit_Form_Load:

   Exit Sub

Err_Form_Load:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Load"

   Resume Exit_Form_Load
End Sub

'******************************************************************************
'***  EVENEMENT:                                                                                      ***
'******************************************************************************
'***  FONCTION:                                                                                         ***
'******************************************************************************
'***  ENTREE:                                                                                            ***
'***  SORTIE:                                                                                             ***
'******************************************************************************
Private Sub Form_Activate()

   On Error GoTo Err_Form_Activate

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
Private Sub CmdValider_Click()

   On Error GoTo Err_CmdValider_Click

   ValideContrats

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
Private Sub CmdFermer_Click()

   On Error GoTo Err_CmdFermer_Click

   DoCmd.Close acForm, Me.Name, acSavePrompt

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
Private Sub CmdRechercher_Click()

   On Error GoTo Exit_CmdRechercher_Click

   OuvreRecherche

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
Private Sub CmdSelectionnerTous_Click()
   Dim LngIndex As Long

   On Error GoTo Err_CmdSelectionnerTous_Click

   For LngIndex = 0 To LstLstContrats.ListCount - 1

      LstLstContrats.Selected(LngIndex) = Not LstLstContrats.Selected(LngIndex)

   Next

   TxtLstContratsCount.Requery

Exit_CmdSelectionnerTous_Click:

   Exit Sub

Err_CmdSelectionnerTous_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdSelectionnerTous_Click"

   Resume Exit_CmdSelectionnerTous_Click
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
   Dim StrFiltreTableRequeteNom As String
   Dim StrFiltreChampSource As String
   Dim StrFiltreChampDestination As String
   Dim StrFiltreWhere As String

   On Error GoTo Err_CmdExporteExcel

   Select Case LstLstContrats.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstContrats.ItemsSelected.Count = (LstLstContrats.ListCount - 1)
            Case True

               Select Case StrContratsFiltre
                  Case vbNullString

                     StrSQLRequete = "SELECT [SelClientsContrats].* FROM [SelClientsContrats];"

                  Case Else

                     DonneFiltreElement StrContratsFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

                     Select Case StrFiltreTableRequeteNom
                        Case "[SelClientsContrats]"

                           StrSQLRequete = "SELECT [SelClientsContrats].* FROM [SelClientsContrats] " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                        Case Else

                           StrSQLRequete = "SELECT [SelClientsContrats].* FROM [SelClientsContrats] INNER JOIN " & StrFiltreTableRequeteNom & " ON [SelClientsContrats]." & StrFiltreChampSource & "=" & _
                               StrFiltreTableRequeteNom & "." & StrFiltreChampDestination & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                     End Select

               End Select

            Case False

               StrSQLRequete = "SELECT [SelClientsContrats].* FROM [SelClientsContrats] WHERE " & DonneFiltreContrats & ";"

         End Select

         Select Case StrSQLRequete
            Case vbNullString

            Case Else

               ExporteExcelRequete (StrSQLRequete)

         End Select

   End Select

Exit_CmdExporteExcel:

   Exit Sub

Err_CmdExporteExcel:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdExporteExcel"

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
Private Sub LstLstContrats_DblClick(Cancel As Integer)

   On Error GoTo Err_LstLstContrats_DblClick

   ValideContrats

Exit_LstLstContrats_DblClick:

   Exit Sub

Err_LstLstContrats_DblClick:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "LstLstContrats_DblClick"

   Resume Exit_LstLstContrats_DblClick
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub CmdFusionEcheancier_Click()
   Dim StrSQLFiltre As String
   Dim IntLigne As Integer
   Dim BolSelection As Boolean

   On Error GoTo Err_CmdFusionEcheancier_Click

   Select Case LstLstContrats.ListCount
      Case vbEmpty

      Case Else

         StrSQLFiltre = "SELECT [SelFusClientsContrats].* FROM [SelFusClientsContrats] "

         BolSelection = False

         StrSQLFiltre = StrSQLFiltre & " WHERE [CliConNum] In ("

         For IntLigne = 0 To LstLstContrats.ListCount - 1

            Select Case LstLstContrats.Selected(IntLigne)
               Case False

               Case True

                  BolSelection = True

                  StrSQLFiltre = StrSQLFiltre & LstLstContrats.Column(4, IntLigne) & ","

            End Select

         Next

         Select Case BolSelection
            Case False

            Case True

               StrSQLFiltre = Left(StrSQLFiltre, Len(StrSQLFiltre) - 1) & ") ;"

               FusionWordRequete StrSQLFiltre, "CLIENTS AVIS ECHEANCE.DOC"

         End Select

   End Select

Exit_CmdFusionEcheancier_Click:

    Exit Sub

Err_CmdFusionEcheancier_Click:

    AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdFusionEcheancier_Click"

    Resume Exit_CmdFusionEcheancier_Click
End Sub
