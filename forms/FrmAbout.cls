Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    DataInformatique Copyright                                                               ***
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
'***    Declaration De Variable Priver                                                          ***
'******************************************************************************

'******************************************************************************
'***    Variable Pour La Minuterie                                                                ***
'******************************************************************************
Private IntSeconde As Integer

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
    Dim DBDataBase As DAO.Database
    Dim ctrDataBase As DAO.Container
    Dim DocDataBase As DAO.Document
    Dim PrpDocument As DAO.Property

    On Error Resume Next

    IntSeconde = 0

    Set DBDataBase = CurrentDb

    Set ctrDataBase = DBDataBase.Containers!Databases

    Set DocDataBase = ctrDataBase.Documents("MSysDb")

    EtiAccessVersion.Caption = DocDataBase.Properties("AccessVersion").Value

    EtiAccessVersionBuild.Caption = DocDataBase.Properties("Build").Value

    Set DocDataBase = ctrDataBase.Documents("SummaryInfo")

    EtiSocieteVal.Caption = DocDataBase.Properties("Company").Value

    EtiTitreVal.Caption = DocDataBase.Properties("Title").Value

    EtiSujetVal.Caption = DocDataBase.Properties("Subject").Value

    EtiAutherVal.Caption = DocDataBase.Properties("Author").Value

    EtiDirecteurVal.Caption = DocDataBase.Properties("Manager").Value

    EtiUtilisateurVal.Caption = DocDataBase.Properties("UserName").Value

    For Each ctrDataBase In DBDataBase.Containers

        Select Case ctrDataBase.Name
            Case "Databases", "SysRel"

            Case Else

                For Each DocDataBase In ctrDataBase.Documents

                    Select Case Left(DocDataBase.Name, 3)
                        Case "~sq", "MSy"

                        Case Else

                            Select Case DocDataBase.Properties("DateCreated").Value
                                Case Is < CDate(EtiDateCreationVal.Caption)

                                    EtiDateCreationVal.Caption = DocDataBase.Properties("DateCreated").Value

                                    EtiDateCreationNom.Caption = DocDataBase.Name

                                Case Else

                            End Select

                            Select Case DocDataBase.Properties("LastUpdated").Value
                                Case Is > CDate(EtiDateModificationVal.Caption)

                                    EtiDateModificationVal.Caption = DocDataBase.Properties("LastUpdated").Value

                                    EtiDateModificationNom.Caption = DocDataBase.Name

                                Case Else

                            End Select

                    End Select

                Next

        End Select

    Next

   EtiUtilisateurNom.Caption = StrUtilisateurNom

   EtiOrdinateurNom.Caption = StrOrdinateurNom

   EtiOrdinateurDomaine.Caption = StrOrdinateurDomaine

   StrAccessVersion = EtiAccessVersion.Caption

   StrAccessVersionBuild = EtiAccessVersionBuild.Caption

   DBDataBase.Properties("AppIcon") = Left(DBDataBase.Name, InStrRev(DBDataBase.Name, "\") - 1) & "\DATA\ICONES\LOGO.ICO"

Exit_Form_Open:

   DBDataBase.Close

   Set DocDataBase = Nothing

   Set ctrDataBase = Nothing

   Set DBDataBase = Nothing

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
Private Sub Form_Timer()

   On Error GoTo Err_Form_Timer

   IntSeconde = IntSeconde + 1

   Select Case IntSeconde
      Case Is > 3

         DoCmd.Close acForm, Me.Name, acSavePrompt

      Case Else

   End Select

Exit_Form_Timer:

    Exit Sub

Err_Form_Timer:

    AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "Form_Timer"

    Resume Exit_Form_Timer
End Sub
