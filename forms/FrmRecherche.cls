Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    DeltaInformatique Copyright                                                             ***
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
'***    PROCEDURE:                                                                                    ***
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
      Case RAFRAICHIRVISIBLE, RAFRAICHIRCHOIX

         EtiValeurRecherche.Caption = "Valeur Recherchée : " & TbsRecherche.Pages.Item(TbsRecherche.Value).Name

         Select Case TbsRecherche.Value + 1
            Case 1

               EtiTypeRecherche1.Caption = "Recherche Alpha-Numerique"

               EtiTypeRecherche2.Caption = "Recherche Numerique"

               EtiTypeRecherche3.Caption = "Recherche Date"

               EtiTypeRecherche4.Caption = "Recherche Code"

               EtiTypeRecherche5.Caption = "Recherche Nom"

               EtiTypeRecherche6.Caption = "Recherche Prenom"

               EtiTypeRecherche7.Caption = "Recherche Telephone"

               EtiTypeRecherche3.Visible = True

               EtiTypeRecherche4.Visible = True

               EtiTypeRecherche5.Visible = True

               EtiTypeRecherche6.Visible = True

               EtiTypeRecherche7.Visible = True

               CbxTypeRecherche3.Visible = True

               CbxTypeRecherche4.Visible = True

               CbxTypeRecherche5.Visible = True

               CbxTypeRecherche6.Visible = True

               CbxTypeRecherche7.Visible = True
            Case 2

               EtiTypeRecherche1.Caption = "Recherche Alpha-Numerique"

               EtiTypeRecherche2.Caption = "Recherche Numerique"

               EtiTypeRecherche3.Caption = "Recherche Date"

               EtiTypeRecherche4.Caption = vbNullString

               EtiTypeRecherche5.Caption = vbNullString

               EtiTypeRecherche6.Caption = vbNullString

               EtiTypeRecherche7.Caption = vbNullString

               EtiTypeRecherche3.Visible = True

               EtiTypeRecherche4.Visible = True

               EtiTypeRecherche5.Visible = True

               EtiTypeRecherche6.Visible = False

               EtiTypeRecherche7.Visible = False

               CbxTypeRecherche3.Visible = True

               CbxTypeRecherche4.Visible = False

               CbxTypeRecherche5.Visible = False

               CbxTypeRecherche6.Visible = False

               CbxTypeRecherche7.Visible = False
            Case 3

               EtiTypeRecherche1.Caption = "Recherche Alpha-Numerique"

               EtiTypeRecherche2.Caption = "Recherche Numerique"

               EtiTypeRecherche3.Caption = "Recherche Date"

               EtiTypeRecherche4.Caption = vbNullString

               EtiTypeRecherche5.Caption = vbNullString

               EtiTypeRecherche6.Caption = vbNullString

               EtiTypeRecherche7.Caption = vbNullString

               EtiTypeRecherche3.Visible = True

               EtiTypeRecherche4.Visible = False

               EtiTypeRecherche5.Visible = False

               EtiTypeRecherche6.Visible = False

               EtiTypeRecherche7.Visible = False

               CbxTypeRecherche3.Visible = True

               CbxTypeRecherche4.Visible = False

               CbxTypeRecherche5.Visible = False

               CbxTypeRecherche6.Visible = False

               CbxTypeRecherche7.Visible = False
            Case 4

               EtiTypeRecherche1.Caption = "Recherche Alpha-Numerique"

               EtiTypeRecherche2.Caption = "Recherche Numerique"

               EtiTypeRecherche3.Caption = "Recherche Date"

               EtiTypeRecherche4.Caption = vbNullString

               EtiTypeRecherche5.Caption = vbNullString

               EtiTypeRecherche6.Caption = vbNullString

               EtiTypeRecherche7.Caption = vbNullString

               EtiTypeRecherche3.Visible = True

               EtiTypeRecherche4.Visible = False

               EtiTypeRecherche5.Visible = False

               EtiTypeRecherche6.Visible = False

               EtiTypeRecherche7.Visible = False

               CbxTypeRecherche3.Visible = True

               CbxTypeRecherche4.Visible = False

               CbxTypeRecherche5.Visible = False

               CbxTypeRecherche6.Visible = False

               CbxTypeRecherche7.Visible = False
         End Select
      Case Else

   End Select

Exit_Rafraichir:

   Exit Sub

Err_Rafraichir:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Rafraichir"

   Resume Exit_Rafraichir
End Sub

'******************************************************************************
'***    Declaration De Evenement Priver                                                      ***
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

   DoCmd.RunCommand acCmdWindowCascade

Exit_Form_Load:

   Exit Sub

Err_Form_Load:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Load"

   Resume Err_Form_Load
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

   On Error GoTo Err_Form_Activate

   Rafraichir (RAFRAICHIRVISIBLE)

Exit_Form_Activate:

   Exit Sub

Err_Form_Activate:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Activate"

   Resume Err_Form_Activate
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
   Dim QdfClientsVilles As DAO.QueryDef
   Dim QdfChaudieres As DAO.QueryDef
   Dim QdfInterventions As DAO.QueryDef
   Dim QdfContrats As DAO.QueryDef
   Dim RsClientsVilles As DAO.Recordset
   Dim RsChaudieres As DAO.Recordset
   Dim RsInterventions As DAO.Recordset
   Dim RsContrats As DAO.Recordset
   Dim FldChamp As DAO.Field
   Dim IntEtat As Integer

   On Error GoTo Err_CmdValider_Click

   Select Case CadTypeRecherche
      Case 2

         Select Case IsNumeric(TxtValeurRecherche)
            Case True

            Case False

               CadTypeRecherche = 1

         End Select

      Case 3

         Select Case IsDate(TxtValeurRecherche)
            Case True

            Case False

               CadTypeRecherche = 1

         End Select

   End Select

   Select Case TbsRecherche.Value + 1
      Case 1

         StrClientsFiltre = vbNullString

         Set QdfClientsVilles = CurrentDb.QueryDefs("SelClientsVilles")

         StrClientsFiltre = "SELECT [SelClientsVilles].[CliNum] FROM [SelClientsVilles] WHERE "

         Select Case CadTypeRecherche
            Case 1

               For Each FldChamp In QdfClientsVilles.Fields

                  Select Case FldChamp.Type
                     Case dbText, dbMemo

                        StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[" & FldChamp.Name & "] LIKE '*" & TxtValeurRecherche & "*' OR "

                     Case Else

                  End Select
               Next

            Case 2

               For Each FldChamp In QdfClientsVilles.Fields

                  Select Case FldChamp.Type
                     Case dbByte, dbCurrency, dbDouble, dbFloat, dbLong, dbSingle

                        StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[" & FldChamp.Name & "]=" & RemplaceChr(TxtValeurRecherche, ",", ".") & " OR "

                     Case Else

                  End Select

               Next

            Case 3

               For Each FldChamp In QdfClientsVilles.Fields

                  Select Case FldChamp.Type
                     Case dbDate, dbTime, dbTimeStamp

                        StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[" & FldChamp.Name & "]=CDate('" & TxtValeurRecherche & "') OR "

                     Case Else

                  End Select

               Next
            Case 4

               StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[CliCode] LIKE '*" & TxtValeurRecherche & "*' OR "

            Case 5

               StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[CliNom] LIKE '*" & TxtValeurRecherche & "*' OR "

            Case 6

               StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[CliPrenom] LIKE '*" & TxtValeurRecherche & "*' OR "

            Case 7

               For Each FldChamp In QdfClientsVilles.Fields

                  Select Case FldChamp.Type
                     Case dbText

                        Select Case FldChamp.Size
                           Case 10

                              StrClientsFiltre = StrClientsFiltre & "[SelClientsVilles].[" & FldChamp.Name & "] LIKE '*" & TxtValeurRecherche & "*' OR "

                           Case Else

                        End Select

                     Case Else

                  End Select
               Next

         End Select

         StrClientsFiltre = Mid(StrClientsFiltre, 1, Len(StrClientsFiltre) - 4)

         Set RsClientsVilles = CurrentDb.OpenRecordset(StrClientsFiltre & ";")

         StrClientsFiltre = "[CliNum] In (" & StrClientsFiltre & ";)"

         Select Case RsClientsVilles.EOF
            Case True

            Case False

               RsClientsVilles.MoveLast

         End Select

         Select Case RsClientsVilles.RecordCount
            Case 0

               MsgBox "Aucune fiche pour cette selection !!", , Me.Caption

               GoTo Exit_CmdValider_Click

            Case 1

               DonneEtatFormulaire "FrmFicheClients", IntEtat

               Select Case IntEtat
                  Case ETATFORMULAIRE

                     Forms!FrmFicheClients.SetFocus

                     On Error Resume Next

                     DoCmd.ApplyFilter , "CliNum=" & RsClientsVilles!CliNum

                     Select Case Err.Number
                        Case 0

                        Case 2501

                           Err.Clear

                        Case Else

                           GoTo Err_CmdValider_Click

                     End Select

                     On Error GoTo Err_CmdValider_Click

                     DoCmd.RunCommand acCmdWindowCascade

                  Case Else

                     DoCmd.OpenForm "FrmFicheClients", acNormal, , "CliNum=" & RsClientsVilles!CliNum, acFormEdit

               End Select

            Case Else

               DoCmd.Close acForm, "FrmLstClients", acSavePrompt

               DoCmd.OpenForm "FrmLstClients", acNormal, , , acFormEdit, acWindowNormal, StrClientsFiltre

         End Select

         RsClientsVilles.Close

      Case 2

         StrChaudieresFiltre = vbNullString

         Set QdfChaudieres = CurrentDb.QueryDefs("SelClientsChaudieres")

         StrChaudieresFiltre = "SELECT [SelClientsChaudieres].[CliChdNum] FROM [SelClientsChaudieres] WHERE "

         Select Case CadTypeRecherche
            Case 1

               For Each FldChamp In QdfChaudieres.Fields

                  Select Case FldChamp.Type
                     Case dbText, dbMemo

                        StrChaudieresFiltre = StrChaudieresFiltre & "[SelClientsChaudieres].[" & FldChamp.Name & "] LIKE '*" & TxtValeurRecherche & "*' OR "

                     Case Else

                  End Select
               Next

            Case 2

               For Each FldChamp In QdfChaudieres.Fields

                  Select Case FldChamp.Type
                     Case dbByte, dbCurrency, dbDouble, dbFloat, dbLong, dbSingle

                        StrChaudieresFiltre = StrChaudieresFiltre & "[SelClientsChaudieres].[" & FldChamp.Name & "]=" & RemplaceChr(TxtValeurRecherche, ",", ".") & " OR "

                     Case Else

                  End Select
               Next

            Case 3

               For Each FldChamp In QdfChaudieres.Fields

                  Select Case FldChamp.Type
                     Case dbDate, dbTime, dbTimeStamp

                        StrChaudieresFiltre = StrChaudieresFiltre & "[SelClientsChaudieres].[" & FldChamp.Name & "]=CDate('" & TxtValeurRecherche & "') OR "

                     Case Else

                  End Select
               Next

         End Select

         StrChaudieresFiltre = Mid(StrChaudieresFiltre, 1, Len(StrChaudieresFiltre) - 4)

         Set RsChaudieres = CurrentDb.OpenRecordset(StrChaudieresFiltre & ";")

         StrChaudieresFiltre = "[CliChdNum] In (" & StrChaudieresFiltre & ";)"

         Select Case RsChaudieres.EOF
            Case True

            Case False

               RsChaudieres.MoveLast

         End Select

         Select Case RsChaudieres.RecordCount
            Case 0

               MsgBox "Aucune fiche pour cette selection !!", , Me.Caption

               GoTo Exit_CmdValider_Click

            Case Else

               DoCmd.Close acForm, "FrmLstChaudieres", acSavePrompt

               DoCmd.OpenForm "FrmLstChaudieres", acNormal, , , acFormEdit, acWindowNormal, StrChaudieresFiltre

         End Select

         RsChaudieres.Close

      Case 3

         StrInterventionsFiltre = vbNullString

         Set QdfInterventions = CurrentDb.QueryDefs("SelClientsInterventions")

         StrInterventionsFiltre = "SELECT [SelClientsInterventions].[ChdIntNum] FROM [SelClientsInterventions] WHERE "

         Select Case CadTypeRecherche
            Case 1

               For Each FldChamp In QdfInterventions.Fields

                  Select Case FldChamp.Type
                     Case dbText, dbMemo

                        StrInterventionsFiltre = StrInterventionsFiltre & "[SelClientsInterventions].[" & FldChamp.Name & "] LIKE '*" & TxtValeurRecherche & "*' OR "

                     Case Else

                  End Select
               Next

            Case 2

               For Each FldChamp In QdfInterventions.Fields

                  Select Case FldChamp.Type
                     Case dbByte, dbCurrency, dbDouble, dbFloat, dbLong, dbSingle

                        StrInterventionsFiltre = StrInterventionsFiltre & "[SelClientsInterventions].[" & FldChamp.Name & "]=" & RemplaceChr(TxtValeurRecherche, ",", ".") & " OR "

                     Case Else

                  End Select
               Next

            Case 3

               For Each FldChamp In QdfInterventions.Fields

                  Select Case FldChamp.Type
                     Case dbDate, dbTime, dbTimeStamp

                        StrInterventionsFiltre = StrInterventionsFiltre & "[SelClientsInterventions].[" & FldChamp.Name & "]=CDate('" & TxtValeurRecherche & "') OR "

                     Case Else

                  End Select
               Next

         End Select

         StrInterventionsFiltre = Mid(StrInterventionsFiltre, 1, Len(StrInterventionsFiltre) - 4)

         Set RsInterventions = CurrentDb.OpenRecordset(StrInterventionsFiltre & ";")

         StrInterventionsFiltre = "[ChdIntNum] In (" & StrInterventionsFiltre & ";)"

         Select Case RsInterventions.EOF
            Case True

            Case False

               RsInterventions.MoveLast

         End Select

         Select Case RsInterventions.RecordCount
            Case 0

               MsgBox "Aucune fiche pour cette selection !!", , Me.Caption

               GoTo Exit_CmdValider_Click

            Case Else

               DoCmd.Close acForm, "FrmLstInterventions", acSavePrompt

               DoCmd.OpenForm "FrmLstInterventions", acNormal, , , acFormEdit, acWindowNormal, StrInterventionsFiltre

         End Select

         RsInterventions.Close

      Case 4

         StrContratsFiltre = vbNullString

         Set QdfContrats = CurrentDb.QueryDefs("SelClientsContrats")

         StrContratsFiltre = "SELECT [SelClientsContrats].[CliConNum] FROM [SelClientsContrats] WHERE "

         Select Case CadTypeRecherche
            Case 1

               For Each FldChamp In QdfContrats.Fields

                  Select Case FldChamp.Type
                     Case dbText, dbMemo

                        StrContratsFiltre = StrContratsFiltre & "[SelClientsContrats].[" & FldChamp.Name & "] LIKE '*" & TxtValeurRecherche & "*' OR "

                     Case Else

                  End Select
               Next

            Case 2

               For Each FldChamp In QdfContrats.Fields

                  Select Case FldChamp.Type
                     Case dbByte, dbCurrency, dbDouble, dbFloat, dbLong, dbSingle

                        StrContratsFiltre = StrContratsFiltre & "[SelClientsContrats].[" & FldChamp.Name & "]=" & RemplaceChr(TxtValeurRecherche, ",", ".") & " OR "

                     Case Else

                  End Select
               Next
            Case 3

               For Each FldChamp In QdfContrats.Fields

                  Select Case FldChamp.Type
                     Case dbDate, dbTime, dbTimeStamp

                        StrContratsFiltre = StrContratsFiltre & "[SelClientsContrats].[" & FldChamp.Name & "]=CDate('" & TxtValeurRecherche & "') OR "

                     Case Else

                  End Select
               Next

         End Select

         StrContratsFiltre = Mid(StrContratsFiltre, 1, Len(StrContratsFiltre) - 4)

         Set RsContrats = CurrentDb.OpenRecordset(StrContratsFiltre & ";")

         StrContratsFiltre = "[CliConNum] In (" & StrContratsFiltre & ";)"

         Select Case RsContrats.EOF
            Case True

            Case False

               RsContrats.MoveLast

         End Select

         Select Case RsContrats.RecordCount
            Case 0

               MsgBox "Aucune fiche pour cette selection !!", , Me.Caption

               GoTo Exit_CmdValider_Click

            Case Else

               DoCmd.Close acForm, "FrmLstContrats", acSavePrompt

               DoCmd.OpenForm "FrmLstContrats", acNormal, , , acFormEdit, acWindowNormal, StrContratsFiltre

         End Select

         RsContrats.Close

   End Select

   DoCmd.Close acForm, Me.Name, acSavePrompt

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
Private Sub TbsRecherche_Change()

   On Error GoTo Err_TbsRecherche_Change

   Rafraichir (RAFRAICHIRCHOIX)

Exit_TbsRecherche_Change:

   Exit Sub

Err_TbsRecherche_Change:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TbsRecherche_Change"

   Resume Exit_TbsRecherche_Change
End Sub

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
Private Sub TxtValeurRecherche_Change()

   On Error GoTo Err_TxtValeurRecherche

   Select Case Len(TxtValeurRecherche.Text)
      Case Is > vbEmpty

         CmdValider.Enabled = True

      Case Else

         CmdValider.Enabled = False

   End Select

Exit_TxtValeurRecherche:

   Exit Sub

Err_TxtValeurRecherche:

   AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtValeurRecherche_Change"

   Resume Exit_TxtValeurRecherche
End Sub
