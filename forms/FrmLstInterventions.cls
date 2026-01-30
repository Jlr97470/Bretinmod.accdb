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
Private Function DonneFiltreInterventions() As String
   Dim StrInterventions As String
   Dim VarItem As Variant

   On Error GoTo Err_DonneFiltreInterventions

   DonneFiltreInterventions = vbNullString

   Select Case LstLstInterventions.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstInterventions.ItemsSelected.Count
            Case 1

               StrInterventions = "CliNum=" & LstLstInterventions.Column(0)

            Case Else

               StrInterventions = "CliNum In("

               For Each VarItem In LstLstInterventions.ItemsSelected

                  StrInterventions = StrInterventions & LstLstInterventions.Column(0, VarItem) & ", "

               Next

               StrInterventions = Left(StrInterventions, Len(StrInterventions) - 2) & ")"

         End Select

         DonneFiltreInterventions = StrInterventions

   End Select

Exit_DonneFiltreInterventions:

   Exit Function

Err_DonneFiltreInterventions:

   MsgBox Err.Number & " " & Err.Description, , "DonneFiltreInterventions"

   Resume Exit_DonneFiltreInterventions
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

         LstLstInterventions.Requery

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
Private Sub ValideInterventions()
   Dim IntEtat As Integer
   Dim StrSQLRequete As String
   Dim StrFiltreTableRequeteNom As String
   Dim StrFiltreChampSource As String
   Dim StrFiltreChampDestination As String
   Dim StrFiltreWhere As String

   On Error GoTo Err_ValideInterventions

   Select Case LstLstInterventions.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstInterventions.ItemsSelected.Count = (LstLstInterventions.ListCount - 1)
            Case True

               DonneFiltreElement StrInterventionsFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

               StrSQLRequete = "CliNum In(SELECT [SelClientsInterventions].[CliNum] FROM [SelClientsInterventions]  " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";)"

            Case False

               StrSQLRequete = DonneFiltreInterventions

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

                     GoTo Err_ValideInterventions

               End Select

               On Error GoTo Err_ValideInterventions

               DoCmd.RunCommand acCmdWindowCascade

            Case Else

              DoCmd.OpenForm "FrmFicheClients", acNormal, , StrSQLRequete, acFormEdit

         End Select

   End Select

Exit_ValideInterventions:

   Exit Sub

Err_ValideInterventions:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "ValideInterventions"

   Resume Exit_ValideInterventions
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
   Dim StrSQLInterventionsDebut As String
   Dim StrSQLInterventionsFin As String

   On Error GoTo Err_Form_Load

   StrSQLInterventionsDebut = "SELECT SelClientsInterventions.* " & _
                                              " FROM SelClientsInterventions "

   StrSQLInterventionsFin = ";"

   Select Case StrInterventionsFiltre
      Case vbNullString

         LstLstInterventions.RowSource = StrSQLInterventionsDebut & StrSQLInterventionsFin

      Case Else

         LstLstInterventions.RowSource = StrSQLInterventionsDebut & "WHERE SelClientsInterventions." & StrInterventionsFiltre & StrSQLInterventionsFin

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

   ValideInterventions

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

   For LngIndex = 0 To LstLstInterventions.ListCount - 1

      LstLstInterventions.Selected(LngIndex) = Not LstLstInterventions.Selected(LngIndex)

   Next

   TxtLstInterventionsCount.Requery

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

   Select Case LstLstInterventions.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstInterventions.ItemsSelected.Count = (LstLstInterventions.ListCount - 1)
            Case True

               Select Case StrInterventionsFiltre
                  Case vbNullString

                     StrSQLRequete = "SELECT [SelClientsInterventions].* FROM [SelClientsInterventions];"

                  Case Else

                     DonneFiltreElement StrInterventionsFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

                     Select Case StrFiltreTableRequeteNom
                        Case "[SelClientsInterventions]"

                           StrSQLRequete = "SELECT [SelClientsInterventions].* FROM [SelClientsInterventions] " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                        Case Else

                           StrSQLRequete = "SELECT [SelClientsInterventions].* FROM [SelClientsInterventions] INNER JOIN " & StrFiltreTableRequeteNom & " ON [SelClientsInterventions]." & StrFiltreChampSource & "=" & _
                               StrFiltreTableRequeteNom & "." & StrFiltreChampDestination & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                     End Select

               End Select

            Case False

               StrSQLRequete = "SELECT [SelClientsInterventions].* FROM [SelClientsInterventions] WHERE " & DonneFiltreInterventions & ";"

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
Private Sub LstLstInterventions_DblClick(Cancel As Integer)

   On Error GoTo Err_LstLstInterventions_DblClick

   ValideInterventions

Exit_LstLstInterventions_DblClick:

   Exit Sub

Err_LstLstInterventions_DblClick:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "LstLstInterventions_DblClick"

   Resume Exit_LstLstInterventions_DblClick
End Sub
