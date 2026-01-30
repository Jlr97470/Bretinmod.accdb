Attribute VB_Name = "ModGestionFichier"
' ##MODULE_RÉSUMÉ Module de gestion des fichiers des attaches de tables.
' ##PROJECT_TITRE DeltaMod
' ##PROJECT_RÉSUMÉ Bibliotheque DeltaInformatique
Option Compare Database
Option Explicit

Private Const ModName = "ModGestionFichiers"

'************************************************************************************************************
' NAME : RecupererParametre (FUNCTION)
' INPUT : StrParametre (String) IntParametre (Integer)
' OUTPUT : String
' DESCRIPTION : Recupere le parametre du tableau de parametre avec separateur "="
'************************************************************************************************************
Public Function RecupererParametre(ByVal StrParametre As String, ByVal IntParametre As Integer) As String
   Dim StrTabParametre() As String

   On Error GoTo Err_RecupererParametre

   StrTabParametre = Split(StrParametre, "=")

   If (IntParametre - 1) <= UBound(StrTabParametre) Then

      RecupererParametre = StrTabParametre(IntParametre - 1)

   Else

        RecupererParametre = vbNullString

   End If

Exit_RecupererParametre:

   Exit Function

Err_RecupererParametre:

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".RecupererParametre()"

   Resume Exit_RecupererParametre
End Function

'************************************************************************************************************
' NAME : LireTableInformationConnexion (FUNCTION)
' INPUT : TdfTable (TableDef) StrType (String) StrParametre (String) StrChemin (String) StrFichier (String)
' OUTPUT : Boolean StrType (String) StrParametre (String) StrChemin (String) StrFichier (String)
' DESCRIPTION : Recupere les infos de la table attachée avec un flag si reussi
'************************************************************************************************************
Public Function LireTableInformationConnexion(ByVal TdfTable As DAO.TableDef, ByRef StrType As String, ByRef StrParametre As String, ByRef StrChemin As String, ByRef StrFichier As String) As Boolean
   Dim IntConnexionLongueur As Integer
   Dim IntCheminFichierLongueur As Integer
   Dim StrConnexion As String
   Dim StrCheminFichier As String

   On Error GoTo Err_LireTableInformationConnexion

   StrConnexion = TdfTable.Connect

   IntConnexionLongueur = Len(StrConnexion)

   Select Case IntConnexionLongueur
      Case vbEmpty

         StrType = vbNullString

         StrParametre = vbNullString

         StrChemin = vbNullString

         StrFichier = vbNullString

         LireTableInformationConnexion = False

         GoTo Exit_LireTableInformationConnexion

      Case Else

   End Select

   StrType = Mid(StrConnexion, 1, InStr(1, StrConnexion, ";") - 1)

   Select Case InStr(1, StrConnexion, ";")
      Case vbEmpty

         StrParametre = vbNullString

         StrChemin = vbNullString

         StrFichier = vbNullString

         LireTableInformationConnexion = False

      Case Else

         Select Case StrType
            Case "ODBC"

                StrParametre = Replace(StrConnexion, "ODBC;", "")

                StrChemin = vbNullString

                StrFichier = vbNullString

            Case Else

                StrCheminFichier = Mid(StrConnexion, InStr(1, StrConnexion, "DATABASE=") + 9)

                StrParametre = Replace(Replace(StrConnexion, StrType & ";", vbNullString), "DATABASE=" & StrCheminFichier, vbNullString)

                StrChemin = Mid(StrCheminFichier, 1, InStrRev(StrCheminFichier, "\"))

                StrFichier = Mid(StrCheminFichier, InStrRev(StrCheminFichier, "\") + 1)

         End Select

         LireTableInformationConnexion = True

   End Select

Exit_LireTableInformationConnexion:

   Exit Function

Err_LireTableInformationConnexion:

   LireTableInformationConnexion = False

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".LireTableInformationConnexion()"

   Resume Exit_LireTableInformationConnexion
End Function

'************************************************************************************************************
' NAME : SauveTableInformationConnexion (FUNCTION)
' INPUT : TdfTable (TableDef) StrType (String) StrParametre (String) StrChemin (String) StrFichier (String)
' OUTPUT : Boolean StrType (String) StrParametre (String) StrChemin (String) StrFichier (String)
' DESCRIPTION : Enregistre les infos de la table attachée avec un flag si reussi
'************************************************************************************************************
Public Function SauveTableInformationConnexion(ByVal TdfTable As DAO.TableDef, ByRef StrType As String, ByRef StrParametre, ByRef StrChemin As String, ByRef StrFichier As String) As Boolean
   Dim StrConnect As String
   Dim StrTableName As String

   On Error GoTo Err_SauveTableInformationConnexion

   SauveTableInformationConnexion = True

   StrTableName = TdfTable.Name

   Select Case StrType
      Case "ODBC"

         StrConnect = "ODBC;" & StrParametre

         DoCmd.TransferDatabase acLink, "ODBC", StrConnect, acTable, StrTableName, "TEMP"

         CurrentDb.TableDefs.Delete "TEMP"

         CurrentDb.TableDefs.Delete StrTableName

         DoCmd.TransferDatabase acLink, "ODBC", StrConnect, acTable, StrTableName, StrTableName

      Case Else

         StrConnect = StrChemin & "\" & StrFichier

         DoCmd.TransferDatabase acLink, "", StrConnect, acTable, StrTableName, "TEMP"

         CurrentDb.TableDefs.Delete "TEMP"

         CurrentDb.TableDefs.Delete StrTableName

         DoCmd.TransferDatabase acLink, "", StrConnect, acTable, StrTableName, StrTableName

   End Select

   SaveSetting CurrentDb.Name, "TABLECONNECTION", TdfTable.Name, CurrentDb.TableDefs(TdfTable.Name).Connect

Exit_SauveTableInformationConnexion:

   Exit Function

Err_SauveTableInformationConnexion:

   SauveTableInformationConnexion = False

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".SauveTableInformationConnexion()"

   Resume Exit_SauveTableInformationConnexion
End Function

'************************************************************************************************************
' NAME : VerifieTableInformationConnexion (FUNCTION)
' INPUT :
' OUTPUT : Boolean
' DESCRIPTION : Verifie les attaches de tables et les mets a jour avec un flag si reussi
'************************************************************************************************************
Public Function VerifieTableInformationConnexion() As Boolean
   Dim FsoFichierSystem As New Scripting.FileSystemObject
   Dim TdsTableListe As DAO.TableDefs
   Dim TdfTable As DAO.TableDef
   Dim BolConnectionSauve As Boolean
   Dim IntFormEtat As Integer
   Dim LngValeurMax As Integer
   Dim LngValeur As Integer
   Dim LngValeurGlobalMax As Long
   Dim LngValeurGlobal As Long
   Dim StrConnection As String
   Dim StrType As String
   Dim StrParametre As String
   Dim StrFichier As String
   Dim StrExtension As String
   Dim StrChemin As String
   Dim StrCheminDefault As String

   On Error GoTo Err_VerifieTableInformationConnexion

   Set TdsTableListe = CurrentDb.TableDefs

   VerifieTableInformationConnexion = True

   TraitementInit

   TxtTitTraitements = "Verification Des Tables Attachées"

   TxtFonTraitements = "VerifieTableInformationConnexion"

   LngValeurMax = TdsTableListe.Count

   LngValeur = 0

   TxtValeurTraitementsGlobalMin = 0

   TxtValeurTraitementsGlobalValeur = LngValeur

   TxtValeurTraitementsGlobalMax = LngValeurMax

   TxtObjTraitements = "Nombre De Tables : " & TdsTableListe.Count

   TraitementRafraichir

   For Each TdfTable In TdsTableListe

      Select Case LireTableInformationConnexion(TdfTable, StrType, StrParametre, StrChemin, StrFichier)
         Case True

            BolConnectionSauve = False

            StrConnection = GetSetting(CurrentDb.Name, "TABLECONNECTION", TdfTable.Name, vbNullString)

            Select Case StrConnection
               Case vbNullString

               Case Else

                  Select Case TdfTable.Connect
                     Case StrConnection

                        BolConnectionSauve = False

                     Case Else

                        BolConnectionSauve = True

                  End Select

                  TdfTable.Connect = StrConnection

            End Select

            LireTableInformationConnexion TdfTable, StrType, StrParametre, StrChemin, StrFichier

            Select Case StrType
                Case "ODBC"

                    SaveSetting CurrentDb.Name, "TABLECONNECTION", TdfTable.Name, TdfTable.Connect

                    Select Case BolConnectionSauve
                       Case True

                          SauveTableInformationConnexion TdfTable, StrType, StrParametre, StrChemin, StrFichier

                       Case False

                    End Select

                Case Else

                    StrExtension = UCase(Mid(StrFichier, InStrRev(StrFichier, ".") + 1))

                    Select Case FsoFichierSystem.FileExists(StrChemin & "\" & StrFichier)
                       Case True

                          StrCheminDefault = Nz(DLookup("FicValeur", "TBLFICHIERS", "FicType='FIC" & StrExtension & "' AND FicCode='DEFAULT=" & StrFichier & "'"))

                          Select Case StrCheminDefault
                             Case vbNullString

                                TraceSQL ModName & ":VerifieTableInformation", "INSERT INTO TBLFICHIERS (FicType,FicCode,FicValeur,FicValide) VALUES('FIC" & StrExtension & "','DEFAULT=" & StrFichier & "','" & StrChemin & "',True) ;"

                                CurrentDb.Execute "INSERT INTO TBLFICHIERS (FicType,FicCode,FicValeur,FicValide) VALUES('FIC" & StrExtension & "','DEFAULT=" & StrFichier & "','" & StrChemin & "',True) ;"

                             Case Else

                                TraceSQL ModName & ":VerifieTableInformation", "UPDATE TBLFICHIERS SET FicValide=True WHERE FicType='FIC" & StrExtension & "' AND FicCode LIKE '*=" & StrFichier & "' AND FicValeur='" & StrChemin & "' ;"

                                CurrentDb.Execute "UPDATE TBLFICHIERS SET FicValide=True WHERE FicType='FIC" & StrExtension & "' AND FicCode LIKE '*=" & StrFichier & "' AND FicValeur='" & StrChemin & "' ;"

                          End Select

                          SaveSetting CurrentDb.Name, "TABLECONNECTION", TdfTable.Name, TdfTable.Connect

                          Select Case BolConnectionSauve
                             Case True

                                SauveTableInformationConnexion TdfTable, StrType, StrParametre, StrChemin, StrFichier

                             Case False

                          End Select

                       Case False

                          VerifieTableInformationConnexion = False

                    End Select

            End Select

         Case False

      End Select

      TdsTableListe.Refresh

      LngValeur = LngValeur + 1

      TxtValeurTraitementsGlobalValeur = LngValeur

      TraitementRafraichir

   Next

Exit_VerifieTableInformationConnexion:

   TraitementClose

   Set TdsTableListe = Nothing

   Set TdfTable = Nothing

   Exit Function

Err_VerifieTableInformationConnexion:

   VerifieTableInformationConnexion = False

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".VerifieTableInformationConnexion()"

   Resume Exit_VerifieTableInformationConnexion
End Function

'************************************************************************************************************
' NAME : ChangeTableInformationConnexion (FUNCTION)
' INPUT :
' OUTPUT : Boolean
' DESCRIPTION : Change les attaches de tables et les mets a jour avec un flag si reussi
'************************************************************************************************************
Public Function ChangeTableInformationConnexion() As Boolean
   Dim FsoFichierSystem As New Scripting.FileSystemObject
   Dim TdsTableListe As DAO.TableDefs
   Dim TdfTable As DAO.TableDef
   Dim BolFormFerme As Boolean
   Dim IntFormEtat As Integer
   Dim LngValeurMax As Integer
   Dim LngValeur As Integer
   Dim LngValeurGlobalMax As Long
   Dim LngValeurGlobal As Long
   Dim StrConnection As String
   Dim StrType As String
   Dim StrParametre As String
   Dim StrFichier As String
   Dim StrExtension As String
   Dim StrChemin As String
   Dim StrCheminDefault As String

   On Error GoTo Err_ChangeTableInformationConnexion

   Set TdsTableListe = CurrentDb.TableDefs

   ChangeTableInformationConnexion = True

   TraitementInit

   TxtTitTraitements = "Chagement Des Tables Attachées"

   TxtFonTraitements = "ChangeTableInformationConnexion"

   LngValeurMax = TdsTableListe.Count

   LngValeur = 0

   TxtValeurTraitementsGlobalMin = 0

   TxtValeurTraitementsGlobalValeur = LngValeur

   TxtValeurTraitementsGlobalMax = LngValeurMax

   TxtObjTraitements = "Nombre De Tables : " & TdsTableListe.Count

   TraitementRafraichir

   For Each TdfTable In TdsTableListe

      Select Case LireTableInformationConnexion(TdfTable, StrType, StrParametre, StrChemin, StrFichier)
         Case True

            Select Case DLookup("ParValeur", "SelParametresDetailler", "ParType='USER' AND ParCode='BASE' AND ParValide=True")
                Case "ACCESS"

                    StrType = vbNullString

                    StrParametre = vbNullString

                    StrFichier = DLookup("ParValeur", "SelParametresDetailler", "ParType='USER' AND ParCode1='BASE' AND ParCode2='ACCESS' AND ParValide=True")

                    StrExtension = UCase(Right(StrFichier, Len(StrFichier) - InStrRev(StrFichier, ".")))

                    StrCheminDefault = Nz(DLookup("FicValeur", "TBLFICHIERS", "FicType='FIC" & StrExtension & "' AND FicCode LIKE '*=" & StrFichier & "' AND FicValide=True"), vbNullString)

                    Select Case StrCheminDefault
                       Case StrChemin

                       Case Else

                          Select Case FsoFichierSystem.FileExists(StrCheminDefault & "\" & StrFichier)
                             Case True

                                SauveTableInformationConnexion TdfTable, "", StrParametre, StrCheminDefault, StrFichier

                             Case False

                                ChangeTableInformationConnexion = False

                          End Select

                    End Select

                Case "MYSQL"

                    SauveTableInformationConnexion TdfTable, "ODBC", DLookup("ParValeur", "SelParametresDetailler", "ParType='USER' AND ParCode1='BASE' AND ParCode2='MYSQL' AND ParValide=True"), StrCheminDefault, StrFichier

            End Select

         Case False

      End Select

      LngValeur = LngValeur + 1

      TxtValeurTraitementsGlobalValeur = LngValeur

      TraitementRafraichir

   Next

   CurrentDb.TableDefs.Refresh

Exit_ChangeTableInformationConnexion:

   TraitementClose

   Set TdsTableListe = Nothing

   Set TdfTable = Nothing

   Exit Function

Err_ChangeTableInformationConnexion:

   ChangeTableInformationConnexion = False

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".ChangeTableInformationConnexion()"

   Resume Exit_ChangeTableInformationConnexion
End Function
' ##SUMMARY Fonction qui retourne un Object me d'un fichier.
' ##RETURNS Retourne un Object Clsme du fichier.
' ##PARAM StrFichier - Valeur chaîne du chemin du fichier.
Public Function VerifieFichiers() As Boolean
   Dim FsoFichierSystem As New Scripting.FileSystemObject
   Dim RstFichiersDetailler As DAO.Recordset
   Dim StrSQLFichiersDetailler As String
   Dim StrSQLFichiers As String

   On Error GoTo Err_VerifieFichiers

   StrSQLFichiersDetailler = "SELECT SelFichiersDetailler.* FROM SelFichiersDetailler WHERE FicValide=True;"

   TraceSQL ModName & ":VerifieFichiers", StrSQLFichiersDetailler

   Set RstFichiersDetailler = CurrentDb.OpenRecordset(StrSQLFichiersDetailler)

   Do Until RstFichiersDetailler.EOF = True

      Select Case FsoFichierSystem.FileExists(RstFichiersDetailler!FicValeur & "\" & RstFichiersDetailler!FicCode2)
        Case True

        Case False

            StrSQLFichiers = "UPDATE TBLFICHIERS SET FicValide=False WHERE FicCode LIKE '*=" _
               & RstFichiersDetailler!FicCode2 & "' AND FicValeur='" & RstFichiersDetailler!FicValeur & "';"

            TraceSQL ModName & ":VerifieFichiers", StrSQLFichiers

            CurrentDb.Execute StrSQLFichiers

      End Select

      RstFichiersDetailler.MoveNext

   Loop

   VerifieFichiers = VerifieTableInformationConnexion

   Select Case VerifieFichiers
      Case False

         DoCmd.OpenForm "FrmGestionFichiers", acNormal, , , acFormEdit, acDialog

         VerifieFichiers = VerifieTableInformationConnexion

      Case Else

   End Select

Exit_VerifieFichiers:

   Exit Function

Err_VerifieFichiers:

   VerifieFichiers = False

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".VerifieFichiers()"

   Resume Exit_VerifieFichiers
End Function
' ##SUMMARY Fonction qui retourne un Object me d'un fichier.
' ##RETURNS Retourne un Object Clsme du fichier.
' ##PARAM StrFichier - Valeur chaîne du chemin du fichier.
Public Sub ChangeNomFichierRepertoire(ByVal FolRepertoireRacine As Scripting.Folder, ByVal IntTypeNom As VbStrConv, ByVal IntTypeExt As VbStrConv)
   Dim FsoSystemFichier As New Scripting.FileSystemObject
   Dim FolRepertoire As Scripting.Folder
   Dim FilFichier As Scripting.File
   Dim BolFormFerme As Boolean
   Dim IntFormEtat As Integer
   Dim StrFichierNom As String
   Dim StrFilExt As String

   On Error GoTo Err_ChangeNomFichierRepertoire

   TraitementInit

   TxtFonTraitements = "ChangeNomFichierRepertoire(" + FolRepertoireRacine.Path + ")"

   TxtValeurTraitementsGlobalMin = 0

   TxtValeurTraitementsGlobalMax = FolRepertoireRacine.Files.Count + 1

   TxtValeurTraitementsGlobalValeur = 1

   TraitementRafraichir

   On Error Resume Next

   For Each FilFichier In FolRepertoireRacine.Files

      TxtObjTraitements = FilFichier.Path

      TxtValeurTraitementsGlobalValeur = TxtValeurTraitementsGlobalValeur + 1

      TraitementRafraichir

      StrFichierNom = StrConv(Left(FilFichier.Name, InStrRev(FilFichier.Name, ".") - 1), IntTypeNom)

      StrFilExt = StrConv(Mid(FilFichier.Name, InStrRev(FilFichier.Name, ".") + 1), IntTypeExt)

      FilFichier.Move FolRepertoireRacine.Path & "\" & StrFichierNom & "." & StrFilExt

   Next

   For Each FolRepertoire In FolRepertoireRacine.SubFolders

      ChangeNomFichierRepertoire FolRepertoire, IntTypeNom, IntTypeExt

   Next

Exit_ChangeNomFichierRepertoire:

   TraitementClose

   Set FsoSystemFichier = Nothing

   Set FilFichier = Nothing

   Exit Sub

Err_ChangeNomFichierRepertoire:

   Dim IntNumError As Long
   Dim StrError As String

   StrError = Err.Number & " " & Err.Description & vbCrLf

   For IntNumError = 0 To Errors.Count - 1

     StrError = StrError & Errors(IntNumError).Number & " " & Errors(IntNumError).Description & vbCrLf

   Next IntNumError

   MsgBox StrError, vbCritical, ModName & ".ChangeNomFichierRepertoire()"

   Resume Exit_ChangeNomFichierRepertoire
End Sub
