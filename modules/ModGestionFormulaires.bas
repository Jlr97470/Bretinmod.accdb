Attribute VB_Name = "ModGestionFormulaires"
'******************************************************************************
'***     Copyright                                                                       ***
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
'***    Declaration De Constante Public                                                       ***
'******************************************************************************

'******************************************************************************
'***   Constante Pour L'Etat D'Un Formulaire                                               ***
'******************************************************************************
Public Const ETATCREATION = 0
Public Const ETATFORMULAIRE = 1
Public Const ETATFEUILLEDONNER = 2
Public Const ETATFERMER = 3

'******************************************************************************
'***    Constante Pour Le Mode De Saisie                                                    ***
'******************************************************************************
Public Const MODENULL = 0
Public Const MODEAJOUT = 1
Public Const MODEMODIF = 2
Public Const MODESUPPRIME = 3
Public Const MODEVALIDE = 4
Public Const MODEDEPLACEMENT = 5

'******************************************************************************
'***    Constante Pour Le Rafraichissement                                                 ***
'******************************************************************************
Public Const RAFRAICHIRVISIBLE = 0
Public Const RAFRAICHIRCHOIX = 1
Public Const RAFRAICHIRDEPLACEMENT = 2

'******************************************************************************
'***    Declaration De Variable Public                                                          ***
'******************************************************************************

'******************************************************************************
'***    Variable Pour Les Filtres                                                                   ***
'******************************************************************************
Public StrPersonnelsFiltre As String

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
Public Function DonneFiltre(ByVal StrFiltre As String) As String
   Dim RsFiltre As DAO.Recordset

   On Error GoTo Err_DonneFiltre

   DonneFiltre = vbNullString

   StrFiltre = Mid(StrFiltre, InStr(1, StrFiltre, "In") + 4, Len(StrFiltre) - InStr(1, StrFiltre, "In") - 4)

   Set RsFiltre = CurrentDb.OpenRecordset(StrFiltre)

   Select Case RsFiltre.EOF
      Case True

      Case False

         Do Until RsFiltre.EOF = True

            DonneFiltre = DonneFiltre & RsFiltre.Fields(0) & ";"

            RsFiltre.MoveNext

         Loop

            DonneFiltre = Mid(DonneFiltre, 1, Len(DonneFiltre) - 1)

   End Select

   RsFiltre.Close

Exit_DonneFiltre:

   Set RsFiltre = Nothing

   Exit Function

Err_DonneFiltre:

   DonneFiltre = vbNullString

   MsgBox Err.Number & " " & Err.Description, , "DonneFiltre"

   Resume Exit_DonneFiltre
End Function


'************************************************************************************************************
' NAME : DonneFiltreElement (FUNCTION)
' INPUT : StrFiltre (String) StrFiltreTableRequeteNom (String) StrFiltreChampSource (String) StrFiltreChampDestination (String) StrFiltreWhere (String)
' OUTPUT : StrFiltreTableRequeteNom (String) StrFiltreChampSource (String) StrFiltreChampDestination (String) StrFiltreWhere (String) Boolean
' DESCRIPTION :
'************************************************************************************************************
Public Function DonneFiltreElement(ByVal StrFiltre As String, ByRef StrFiltreTableRequeteNom As String, ByRef StrFiltreChampSource As String, ByRef StrFiltreChampDestination As String, ByRef StrFiltreWhere As String) As Boolean

   On Error GoTo Err_DonneFiltreElement

   DonneFiltreElement = True

   Select Case InStr(InStr(1, StrFiltre, "FROM") + 5, StrFiltre, " ")
      Case 0

         StrFiltreTableRequeteNom = Mid(StrFiltre, InStr(1, StrFiltre, "FROM") + 5, InStr(InStr(1, StrFiltre, "FROM") + 5, StrFiltre, ";") - InStr(1, StrFiltre, "FROM") - 5)

      Case Else

         StrFiltreTableRequeteNom = Mid(StrFiltre, InStr(1, StrFiltre, "FROM") + 5, InStr(InStr(1, StrFiltre, "FROM") + 5, StrFiltre, " ") - InStr(1, StrFiltre, "FROM") - 5)

   End Select

   StrFiltreChampSource = Left(StrFiltre, InStr(1, StrFiltre, " ") - 1)

   StrFiltreChampDestination = Mid(StrFiltre, InStr(1, StrFiltre, ".") + 1, InStr(InStr(1, StrFiltre, "."), StrFiltre, " FROM") - InStr(1, StrFiltre, ".") - 1)

   Select Case InStr(1, StrFiltre, "WHERE")
      Case 0

         StrFiltreWhere = vbNullString

      Case Else

         StrFiltreWhere = Mid(Left(StrFiltre, InStrRev(StrFiltre, ";") - 1), InStr(1, StrFiltre, "WHERE") + 6)

   End Select

Exit_DonneFiltreElement:

   Exit Function

Err_DonneFiltreElement:

   DonneFiltreElement = False

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, "DonneFiltreElement()"

   Resume Exit_DonneFiltreElement
End Function


'************************************************************************************************************
' NAME : OuvreRechercheMulti (FUNCTION)
' INPUT :
' OUTPUT : Boolean
' DESCRIPTION : Ouvre le formulaire de recherche multi
'************************************************************************************************************
Public Function OuvreRechercheMulti() As Boolean

   On Error GoTo Err_OuvreRechercheMulti

   DoCmd.OpenForm "FrmRechercheMulti", acNormal, , , acFormEdit

Exit_OuvreRechercheMulti:

   Exit Function

Err_OuvreRechercheMulti:

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, "OuvreRechercheMulti()"

   Resume Exit_OuvreRechercheMulti
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
Public Function ChangeBoutonMode(ByRef FrmForm As Form, ByVal IntMode As Integer) As Boolean

   On Error GoTo Err_ChangeBoutonMode

   ChangeBoutonMode = True

   FrmForm.IntModeOld = FrmForm.IntMode

   FrmForm.IntMode = IntMode

   Select Case IntMode
      Case MODEAJOUT

         FrmForm.AllowAdditions = True

         FrmForm.AllowDeletions = False

         FrmForm.AllowEdits = False

         FrmForm.NavigationButtons = False

         FrmForm.CmdAjouter.Enabled = False

         FrmForm.CmdModifier.Enabled = False

         FrmForm.CmdSupprimer.Enabled = False

         FrmForm.CmdValider.Enabled = True

         FrmForm.CmdAnnuler.Enabled = True

         FrmForm.CmdFermer.Enabled = False

         FrmForm.CmdAfficherTous.Enabled = False

         FrmForm.RecButton.BackStyle = 1

         FrmForm.RecButton.BackColor = 65280

      Case MODEMODIF

         FrmForm.AllowAdditions = False

         FrmForm.AllowDeletions = False

         FrmForm.AllowEdits = True

         FrmForm.NavigationButtons = False

         FrmForm.CmdAjouter.Enabled = False

         FrmForm.CmdModifier.Enabled = False

         FrmForm.CmdSupprimer.Enabled = False

         FrmForm.CmdValider.Enabled = True

         FrmForm.CmdAnnuler.Enabled = True

         FrmForm.CmdFermer.Enabled = False

         FrmForm.CmdAfficherTous.Enabled = False

         FrmForm.RecButton.BackStyle = 1

         FrmForm.RecButton.BackColor = 16711680

      Case MODESUPPRIME

         FrmForm.AllowAdditions = False

         FrmForm.AllowDeletions = True

         FrmForm.AllowEdits = False

         FrmForm.NavigationButtons = False

         FrmForm.CmdAjouter.Enabled = False

         FrmForm.CmdModifier.Enabled = False

         FrmForm.CmdSupprimer.Enabled = False

         FrmForm.CmdValider.Enabled = False

         FrmForm.CmdAnnuler.Enabled = False

         FrmForm.CmdFermer.Enabled = False

         FrmForm.CmdAfficherTous.Enabled = False

         FrmForm.RecButton.BackStyle = 1

         FrmForm.RecButton.BackColor = 255

      Case MODEDEPLACEMENT

         FrmForm.AllowAdditions = False

         FrmForm.AllowDeletions = False

         FrmForm.AllowEdits = False

         FrmForm.NavigationButtons = True

         FrmForm.CmdAjouter.Enabled = True

         FrmForm.CmdModifier.Enabled = True

         FrmForm.CmdSupprimer.Enabled = True

         FrmForm.CmdValider.Enabled = False

         FrmForm.CmdAnnuler.Enabled = False

         FrmForm.CmdFermer.Enabled = True

         FrmForm.CmdAfficherTous.Enabled = True

         FrmForm.RecButton.BackStyle = vbEmpty

         FrmForm.RecButton.BackColor = 255

      Case MODEVALIDE

         FrmForm.NavigationButtons = False

         FrmForm.CmdAjouter.Enabled = False

         FrmForm.CmdModifier.Enabled = False

         FrmForm.CmdSupprimer.Enabled = False

         FrmForm.CmdValider.Enabled = False

         FrmForm.CmdAnnuler.Enabled = False

         FrmForm.CmdFermer.Enabled = False

         FrmForm.CmdAfficherTous.Enabled = False

         FrmForm.RecButton.BackStyle = 1

         FrmForm.RecButton.BackColor = 65535

   End Select

Exit_ChangeBoutonMode:

   Exit Function

Err_ChangeBoutonMode:

   ChangeBoutonMode = False

   MsgBox Err.Number & " " & Err.Description, , "ChangeBoutonMode"

   Resume Exit_ChangeBoutonMode
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
Public Function FermeFormulaire(Optional ByVal StrFormName As String) As Boolean
   Dim FrmForm As Access.Form

   On Error GoTo Err_FermeFormulaire

   For Each FrmForm In Forms

      Select Case FrmForm.Name
         Case StrFormName

         Case Else

            DoCmd.Close acForm, FrmForm.Name

            FermeFormulaire = True

      End Select

   Next

Exit_FermeFormulaire:

   Exit Function

Err_FermeFormulaire:

   FermeFormulaire = False

   MsgBox Err.Number & " " & Err.Description, , "FermeFormulaire"

   Resume Exit_FermeFormulaire
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
Public Function DonneEtatFormulaire(ByVal StrFormName As String, ByRef intFormEtat As Integer) As Boolean
   Dim FrmDataBase As Access.Forms
   Dim FrmForm As Access.Form

   On Error GoTo Exit_DonneEtatFormulaire

   Set FrmDataBase = Forms

   DonneEtatFormulaire = False

   For Each FrmForm In FrmDataBase

      Select Case FrmForm.Name
         Case StrFormName

            intFormEtat = FrmForm.CurrentView

            DonneEtatFormulaire = True

            GoTo Exit_DonneEtatFormulaire

         Case Else

      End Select
   Next

   intFormEtat = ETATFERMER

   DonneEtatFormulaire = False

Exit_DonneEtatFormulaire:

   Exit Function

Err_DonneEtatFormulaire:

   MsgBox Err.Number & " " & Err.Description, , "DonneEtatFormulaire"

   Resume Exit_DonneEtatFormulaire
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
Public Function OuvreMenuPrincipale() As Boolean

   On Error GoTo Err_OuvreMenuPrincipale

   Select Case DLookup("ParValeur", "SelParametresDetailler", "ParType='USER' ANd ParCode='INTERFACE'")
      Case "GESTION"

         DoCmd.OpenForm "FrmMenuPrincipale", acNormal, , , acFormEdit, acWindowNormal

      Case "CALL"

         DoCmd.OpenForm "FrmMenuCall", acNormal, , , acFormEdit, acWindowNormal

   End Select

Exit_OuvreMenuPrincipale:

   Exit Function

Err_OuvreMenuPrincipale:

   OuvreMenuPrincipale = False

   MsgBox Err.Number & " " & Err.Description, , "OuvreMenuPrincipale"

   Resume Exit_OuvreMenuPrincipale
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
Public Function OuvreRecherche(Optional ByVal bytTypeOuvre As Byte) As Boolean

   On Error GoTo Err_OuvreRecherche

   FermeFormulaire "FrmMenuPrincipale"

   DoCmd.OpenForm "FrmRecherche", acNormal, , , acFormEdit

   Select Case bytTypeOuvre
      Case 0

      Case Else

         Forms!FrmRecherche!OgtRecherche = bytTypeOuvre - 1

   End Select

Exit_OuvreRecherche:

   Exit Function

Err_OuvreRecherche:

   MsgBox Err.Number & " " & Err.Description, , "OuvreRecherche"

   Resume Exit_OuvreRecherche
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
Public Function OuvreClientsEcheancier() As Boolean

   On Error GoTo Err_OuvreRecherche

   StrClientsFiltre = "CliNum In (SELECT CliConCliNum FROM TBLCLIENTSCONTRATS WHERE CliConDateFin<=CDate('" & (Now + DLookup("PARVALEUR", "TBLPARAMETRESGENERALS", "ParType='ECHDAT' AND ParCode='DATEECHEANCE'")) & "');)"

   FermeFormulaire "FrmMenuPrincipale"

   DoCmd.OpenForm "FrmLstClients", acNormal, , , acFormReadOnly, acWindowNormal

Exit_OuvreRecherche:

   Exit Function

Err_OuvreRecherche:

   MsgBox Err.Number & " " & Err.Description, , "OuvreRecherche"

   Resume Exit_OuvreRecherche
End Function
