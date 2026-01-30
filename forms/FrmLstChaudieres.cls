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
'***    Declaration De Procedure Priver                                                        ***
'******************************************************************************

'******************************************************************************
'***  PROCEDURE:                                                                                      ***
'******************************************************************************
'***  FONCTION:                                                                                         ***
'******************************************************************************
'***  ENTREE:                                                                                            ***
'***  SORTIE:                                                                                             ***
'******************************************************************************
Private Function DonneFiltreChaudieres() As String
   Dim StrChaudieres As String
   Dim VarItem As Variant

   On Error GoTo Err_DonneFiltreChaudieres

   DonneFiltreChaudieres = vbNullString

   Select Case LstLstChaudieres.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstChaudieres.ItemsSelected.Count
            Case 1

               StrChaudieres = "CliNum=" & LstLstChaudieres.Column(0)

            Case Else

               StrChaudieres = "CliNum In("

               For Each VarItem In LstLstChaudieres.ItemsSelected

                  StrChaudieres = StrChaudieres & LstLstChaudieres.Column(0, VarItem) & ", "

               Next

               StrChaudieres = Left(StrChaudieres, Len(StrChaudieres) - 2) & ")"

         End Select

         DonneFiltreChaudieres = StrChaudieres

   End Select

Exit_DonneFiltreChaudieres:

   Exit Function

Err_DonneFiltreChaudieres:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "DonneFiltreChaudieres"

   Resume Exit_DonneFiltreChaudieres
End Function

'******************************************************************************
'***    PROCEDURE:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub Rafraichir(Optional ByVal BytModeRafraichir As Byte)

   On Error GoTo Err_Rafraichir

   Select Case BytModeRafraichir
      Case RAFRAICHIRVISIBLE

         LstLstChaudieres.Requery

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
Private Sub ValideChaudieres()
   Dim IntEtat As Integer
   Dim StrSQLRequete As String
   Dim StrFiltreTableRequeteNom As String
   Dim StrFiltreChampSource As String
   Dim StrFiltreChampDestination As String
   Dim StrFiltreWhere As String

   On Error GoTo Err_ValideChaudieres

   Select Case LstLstChaudieres.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstChaudieres.ItemsSelected.Count = (LstLstChaudieres.ListCount - 1)
            Case True

               DonneFiltreElement StrChaudieresFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

               StrSQLRequete = "CliNum In(SELECT [SelClientsChaudieres].[CliNum] FROM [SelClientsChaudieres]  " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";)"

            Case False

               StrSQLRequete = DonneFiltreChaudieres

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

                     GoTo Err_ValideChaudieres

               End Select

               On Error GoTo Err_ValideChaudieres

               DoCmd.RunCommand acCmdWindowCascade

            Case Else

               DoCmd.OpenForm "FrmFicheClients", acNormal, , StrSQLRequete, acFormEdit

         End Select

   End Select

Exit_ValideChaudieres:

   Exit Sub

Err_ValideChaudieres:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "ValideChaudieres"

   Resume Exit_ValideChaudieres
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
   Dim StrSQLChaudieresDebut As String
   Dim StrSQLChaudieresFin As String

   On Error GoTo Err_Form_Open

   StrSQLChaudieresDebut = "SELECT SelClientsChaudieres.* " & _
                                           " FROM SelClientsChaudieres "

   StrSQLChaudieresFin = ";"

   Select Case StrChaudieresFiltre
      Case vbNullString

         LstLstChaudieres.RowSource = StrSQLChaudieresDebut & StrSQLChaudieresFin

      Case Else

         LstLstChaudieres.RowSource = StrSQLChaudieresDebut & "WHERE SelClientsChaudieres." & StrChaudieresFiltre & StrSQLChaudieresFin

   End Select

   DoCmd.RunCommand acCmdWindowCascade

Exit_Form_Open:

   Exit Sub

Err_Form_Open:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Open"

   Resume Exit_Form_Open
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

   ValideChaudieres

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

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdRechercherMulti_Click"

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

   For LngIndex = 0 To LstLstChaudieres.ListCount - 1

      LstLstChaudieres.Selected(LngIndex) = Not LstLstChaudieres.Selected(LngIndex)

   Next

   TxtLstChaudieresCount.Requery

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

   Select Case LstLstChaudieres.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstChaudieres.ItemsSelected.Count = (LstLstChaudieres.ListCount - 1)
            Case True

               Select Case StrChaudieresFiltre
                  Case vbNullString

                     StrSQLRequete = "SELECT [SelClientsChaudieres].* FROM [SelClientsChaudieres];"

                  Case Else

                     DonneFiltreElement StrChaudieresFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

                     Select Case StrFiltreTableRequeteNom
                        Case "[SelClientsChaudieres]"

                           StrSQLRequete = "SELECT [SelClientsChaudieres].* FROM [SelClientsChaudieres] " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                        Case Else

                           StrSQLRequete = "SELECT [SelClientsChaudieres].* FROM [SelClientsChaudieres] INNER JOIN " & StrFiltreTableRequeteNom & " ON [SelClientsChaudieres]." & StrFiltreChampSource & "=" & _
                               StrFiltreTableRequeteNom & "." & StrFiltreChampDestination & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                     End Select

               End Select

            Case False

               StrSQLRequete = "SELECT [SelClientsChaudieres].* FROM [SelClientsChaudieres] WHERE " & DonneFiltreChaudieres & ";"

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
Private Sub LstLstChaudieres_DblClick(Cancel As Integer)

   On Error GoTo Err_LstLstChaudieres_DblClick

   ValideChaudieres

Exit_LstLstChaudieres_DblClick:

   Exit Sub

Err_LstLstChaudieres_DblClick:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "LstLstChaudieres_DblClick"

   Resume Exit_LstLstChaudieres_DblClick
End Sub
