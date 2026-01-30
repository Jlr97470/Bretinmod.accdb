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
Private Function DonneFiltreClients() As String
   Dim StrClients As String
   Dim VarItem As Variant

   On Error GoTo Err_DonneFiltreClients

   DonneFiltreClients = vbNullString

   Select Case LstLstClients.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstClients.ItemsSelected.Count
            Case 1

               StrClients = "CliNum=" & LstLstClients.Column(0)

            Case Else

               StrClients = "CliNum In("

               For Each VarItem In LstLstClients.ItemsSelected

                  StrClients = StrClients & LstLstClients.Column(0, VarItem) & ", "

               Next

               StrClients = Left(StrClients, Len(StrClients) - 2) & ")"

         End Select

         DonneFiltreClients = StrClients

   End Select

Exit_DonneFiltreClients:

   Exit Function

Err_DonneFiltreClients:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "DonneFiltreClients"

   Resume Exit_DonneFiltreClients
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

         LstLstClients.Requery

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
Private Sub ValideClients()
   Dim IntEtat As Integer
   Dim StrSQLRequete As String

   On Error GoTo Err_ValideClients

   Select Case LstLstClients.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstClients.ItemsSelected.Count = (LstLstClients.ListCount - 1)
            Case True

               StrSQLRequete = StrClientsFiltre

            Case False

               StrSQLRequete = DonneFiltreClients

         End Select

         DonneEtatFormulaire "FrmFicheClients", IntEtat

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

                     GoTo Err_ValideClients

               End Select

               On Error GoTo Err_ValideClients

               DoCmd.RunCommand acCmdWindowCascade

           Case Else

               DoCmd.OpenForm "FrmFicheClients", acNormal, , StrSQLRequete, acFormEdit

      End Select

   End Select

Exit_ValideClients:

   Exit Sub

Err_ValideClients:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "ValideClients"

   Resume Exit_ValideClients
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
   Dim StrSQLClientsDebut As String
   Dim StrSQLClientsFin As String

   On Error GoTo Err_Form_Load

   StrSQLClientsDebut = "SELECT [CliNum], [CliCode], [CliNom], " & _
                                     " [CliPrenom], [CliAdresse], [CliVilCodePostal], " & _
                                     " [CliVilNom], [CliTel1], [CliTel2] " & _
                                     " FROM SelClientsVilles "

   StrSQLClientsFin = ";"

   Select Case StrClientsFiltre
      Case vbNullString

         LstLstClients.RowSource = StrSQLClientsDebut & StrSQLClientsFin

      Case Else

         LstLstClients.RowSource = StrSQLClientsDebut & "WHERE SelClientsVilles." & StrClientsFiltre & StrSQLClientsFin

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

   ValideClients

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
Private Sub CmdMailingSendMail_Click()
   Dim StrSQLRequete As String
   Dim StrFiltreTableRequeteNom As String
   Dim StrFiltreChampSource As String
   Dim StrFiltreChampDestination As String
   Dim StrFiltreWhere As String

   On Error GoTo Err_CmdMailingSendMail_Click

   Select Case LstLstClients.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstClients.ItemsSelected.Count = (LstLstClients.ListCount - 1)
            Case True

               Select Case StrClientsFiltre
                  Case vbNullString

                     StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles];"

                  Case Else

                     DonneFiltreElement StrClientsFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

                     Select Case StrFiltreTableRequeteNom
                        Case "[SelClientsVilles]"

                           StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles] " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                        Case Else

                           StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles] INNER JOIN " & StrFiltreTableRequeteNom & " ON [SelClientsVilles]." & StrFiltreChampSource & "=" & _
                               StrFiltreTableRequeteNom & "." & StrFiltreChampDestination & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                     End Select

               End Select

            Case False

               StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles] WHERE " & DonneFiltreClients & ";"

         End Select

         Select Case StrSQLRequete
            Case vbNullString

            Case Else

               DoCmd.OpenForm "FrmGestionMail", acNormal, , , acFormEdit, acWindowNormal, StrSQLRequete

         End Select

   End Select

Exit_CmdMailingSendMail_Click:

   Exit Sub

Err_CmdMailingSendMail_Click:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "CmdMailingSendMail_Click"

   Resume Exit_CmdMailingSendMail_Click
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

   Select Case LstLstClients.ItemsSelected.Count
      Case 0

      Case Else

         Select Case LstLstClients.ItemsSelected.Count = (LstLstClients.ListCount - 1)
            Case True

               Select Case StrClientsFiltre
                  Case vbNullString

                     StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles];"

                  Case Else

                     DonneFiltreElement StrClientsFiltre, StrFiltreTableRequeteNom, StrFiltreChampSource, StrFiltreChampDestination, StrFiltreWhere

                     Select Case StrFiltreTableRequeteNom
                        Case "[SelClientsVilles]"

                           StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles] " & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                        Case Else

                           StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles] INNER JOIN " & StrFiltreTableRequeteNom & " ON [SelClientsVilles]." & StrFiltreChampSource & "=" & _
                               StrFiltreTableRequeteNom & "." & StrFiltreChampDestination & IIf(StrFiltreWhere = vbNullString, vbNullString, " WHERE " & StrFiltreWhere) & ";"

                     End Select

               End Select

            Case False

               StrSQLRequete = "SELECT [SelClientsVilles].* FROM [SelClientsVilles] WHERE " & DonneFiltreClients & ";"

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
Private Sub CmdSelectionnerTous_Click()
   Dim LngIndex As Long

   On Error GoTo Err_CmdSelectionnerTous_Click

   For LngIndex = 0 To LstLstClients.ListCount - 1

      LstLstClients.Selected(LngIndex) = Not LstLstClients.Selected(LngIndex)

   Next

   TxtLstClientsCount.Requery

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
Private Sub LstLstClients_DblClick(Cancel As Integer)

   On Error GoTo Err_LstLstClients_DblClick

   ValideClients

Exit_LstLstClients_DblClick:

   Exit Sub

Err_LstLstClients_DblClick:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "LstLstClients_DblClick"

   Resume Exit_LstLstClients_DblClick
End Sub
