VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ClsAgent"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    DataSource Copyright                                                                       ***
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
'***   Declaration De Constante Public                                                         ***
'******************************************************************************
Private Const TYPEBOX = 0
Private Const TYPEASSITANT = 1
Private Const TYPEAGENT = 2

'******************************************************************************
'***    Declaration D'Object Public                                                               ***
'******************************************************************************

'******************************************************************************
'***    Object De Control De L'Agent Et De L'Assitant                                  ***
'******************************************************************************
Private AssAgent As Object
Private BalMessage As Object
Private AgtAgent As Object
Private ChrAgent As Object
Private rstAgentAction As Object

'******************************************************************************
'***    Declaration De Variable Priver                                                          ***
'******************************************************************************

'******************************************************************************
'***    Variable Pour Le Controle De L'Agent                                                ***
'******************************************************************************
Private StrAgentID As String
Private StrAgentFichier As String
Private BolAgentVisible As Boolean
Private udtAgentActive(2) As Boolean

'******************************************************************************
'***    Declaration De Procedure Public                                                       ***
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
Public Function AfficheMessage(ByVal StrMessage As String, Optional ByVal IntType As Integer, Optional ByVal StrTitre As String) As Integer

   On Error GoTo Err_AfficheMessage

   Select Case udtAgentActive(2)
      Case True

         Set rstAgentAction = ChrAgent.Show

         Do

            DoEvents

         Loop Until rstAgentAction.Status <= 1

         Set rstAgentAction = ChrAgent.Speak(StrMessage)

         Do

            DoEvents

         Loop Until rstAgentAction.Status <= 1

         Select Case IntType
            Case 0

            Case Else

               Select Case udtAgentActive(1)
                  Case True

                        Set rstAgentAction = ChrAgent.Hide

                        Do

                           DoEvents

                        Loop Until rstAgentAction.Status <= 1

                        AssAgent.Visible = True

                      Set BalMessage = AssAgent.NewBalloon

                      BalMessage.Button = (IntType And 15)

                      BalMessage.Mode = 0

                      BalMessage.Heading = StrTitre

                      On Error Resume Next

                      AfficheMessage = BalMessage.Show

                      Select Case Err.Number
                        Case vbEmpty

                            Select Case AfficheMessage
                               Case -3

                                  AfficheMessage = 6

                               Case -4

                                  AfficheMessage = 7

                            End Select

                        Case Else

                           Err.Clear

                           AfficheMessage = MsgBox(vbNullString, IntType, StrTitre)

                      End Select

                      On Error GoTo Err_AfficheMessage

                  Case False

                     AfficheMessage = MsgBox(vbNullString, IntType, StrTitre)

               End Select

         End Select

      Case False

         Select Case udtAgentActive(1)
            Case True

               AssAgent.Visible = True

               Set BalMessage = AssAgent.NewBalloon

               BalMessage.Text = StrMessage

               Select Case IsMissing(IntType)
                  Case True

                  Case False

                     BalMessage.Button = IntType

               End Select

               BalMessage.Mode = 0

               Select Case IsMissing(StrTitre)
                  Case True

                  Case False

                     BalMessage.Heading = StrTitre

               End Select

               On Error GoTo Err_AfficheMessage

               AfficheMessage = BalMessage.Show

                Select Case Err.Number
                  Case vbEmpty

                      Select Case AfficheMessage
                         Case -3

                            AfficheMessage = 6

                         Case -4

                            AfficheMessage = 7

                      End Select

                  Case Else

                     Err.Clear

                     AfficheMessage = MsgBox(vbNullString, IntType, StrTitre)

                End Select

               On Error GoTo Err_AfficheMessage

               Select Case AfficheMessage
                  Case -3

                     AfficheMessage = 6

                  Case -4

                     AfficheMessage = 7

               End Select

            Case False

               AfficheMessage = MsgBox(StrMessage, IntType, StrTitre)

         End Select

   End Select

   BolAgentVisible = True

Exit_AfficheMessage:

   Exit Function

Err_AfficheMessage:

   MsgBox Err.Number & " " & Err.Description, , "AfficheMessage"

   Resume Exit_AfficheMessage
End Function

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
Public Sub InitialiseAssitant()
   Dim FsoSystemFichier As New Scripting.FileSystemObject

   On Error GoTo Err_InitialiseAssitant

   On Error Resume Next

   Set AssAgent = Application.Assistant

   Select Case FsoSystemFichier.FileExists(StrAgentFichier)
      Case True

         AssAgent.FileName = StrAgentFichier

      Case False

   End Select

   AssAgent.On = True

   AssAgent.Sounds = True

   AssAgent.MoveWhenInTheWay = True

   AssAgent.Move 50, 50

   Select Case Err.Number
      Case vbEmpty

         udtAgentActive(0) = False

         udtAgentActive(1) = True

      Case Else

         Err.Clear

         udtAgentActive(0) = True

         udtAgentActive(1) = False

   End Select

   On Error GoTo Err_InitialiseAssitant

Exit_InitialiseAssitant:

   Exit Sub

Err_InitialiseAssitant:

   MsgBox Err.Number & " " & Err.Description, , "InitialiseAssitant"

   Resume Exit_InitialiseAssitant
End Sub

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
Public Sub InitialiseAgent()
   Dim FsoSystemFichier As New Scripting.FileSystemObject

   On Error GoTo Err_InitialiseAssitant

   On Error Resume Next

   Set AgtAgent = New Agent

   StrAgentID = CurrentDb.Name

   AgtAgent.Connected = True

   Select Case FsoSystemFichier.FileExists(StrAgentFichier)
      Case True

         AgtAgent.Characters.Load StrAgentID, StrAgentFichier

      Case False

         AgtAgent.Characters.Load StrAgentID

   End Select

   Set ChrAgent = AgtAgent.Characters(StrAgentID)

   ChrAgent.AutoPopupMenu = False

   ChrAgent.LanguageID = &H40C

   ChrAgent.SoundEffectsOn = True

   Select Case Err.Number
      Case vbEmpty

         udtAgentActive(2) = True

      Case Else

         Err.Clear

         udtAgentActive(2) = False

   End Select

Exit_InitialiseAssitant:

   Exit Sub

Err_InitialiseAssitant:

   MsgBox Err.Number & " " & Err.Description, , "InitialiseAssitant"

   Resume Exit_InitialiseAssitant
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
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Private Sub Class_Initialize()
   Dim VarValeur As Variant

   On Error GoTo Err_Class_Initialize

   StrAgentID = vbNullString

   BolAgentVisible = False

   For Each VarValeur In udtAgentActive

      VarValeur = False

   Next

Exit_Class_Initialize:

   Exit Sub

Err_Class_Initialize:

   MsgBox Err.Number & " " & Err.Description, , "Class_Initialize"

   Resume Exit_Class_Initialize
End Sub

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
Private Sub Class_Terminate()
   Dim VarValeur As Variant

   On Error GoTo Err_Class_Initialize

   On Error Resume Next

   AgtAgent.Connected = False

   Set AssAgent = Nothing

   Set AgtAgent = Nothing

   Set ChrAgent = Nothing

   Set BalMessage = Nothing

   Set rstAgentAction = Nothing

Exit_Class_Initialize:

   Exit Sub

Err_Class_Initialize:

   MsgBox Err.Number & " " & Err.Description, , "Class_Initialize"

   Resume Exit_Class_Initialize
End Sub

'******************************************************************************
'***    Declaration De Proprieter Public                                                       ***
'******************************************************************************

'******************************************************************************
'***    PROPRIETER:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Public Property Get Active(ByVal IntNumero) As Boolean

   On Error GoTo Err_Active

   Select Case IntNumero
      Case 0, 1, 2

         Active = udtAgentActive(IntNumero)

      Case Else

   End Select

Exit_Active:

   Exit Property

Err_Active:

   MsgBox Err.Number & " " & Err.Description, , "GetActive"

   Resume Exit_Active
End Property

'******************************************************************************
'***    PROPRIETER:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Public Property Get Visible() As Boolean

   On Error GoTo Err_Visible

   Visible = BolAgentVisible

Exit_Visible:

   Exit Property

Err_Visible:

   MsgBox Err.Number & " " & Err.Description, , "GetVisible"

   Resume Exit_Visible
End Property

'******************************************************************************
'***    PROPRIETER:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Public Property Let Visible(ByVal vNewValue As Boolean)

   On Error GoTo Err_Visible

   BolAgentVisible = vNewValue

   Select Case BolAgentVisible
      Case True

         Select Case udtAgentActive(2)
            Case True

              Set rstAgentAction = ChrAgent.Show

              Do

                  DoEvents

              Loop Until rstAgentAction.Status = 0

            Case False

            Select Case udtAgentActive(1)
               Case True

                  AssAgent.Visible = True

               Case False

            End Select

         End Select

      Case False

         AssAgent.Visible = False

         AssAgent.On = False

         Set rstAgentAction = ChrAgent.Hide

   End Select

Exit_Visible:

   Exit Property

Err_Visible:

   MsgBox Err.Number & " " & Err.Description, , "LetVisible"

   Resume Exit_Visible
End Property

'******************************************************************************
'***    PROPRIETER:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Public Property Get FichierNom() As String

   On Error GoTo Err_FichierNom

   FichierNom = StrAgentFichier

Exit_FichierNom:

   Exit Property

Err_FichierNom:

   MsgBox Err.Number & " " & Err.Description, , "GetFichierNom"

   Resume Exit_FichierNom
End Property

'******************************************************************************
'***    PROPRIETER:                                                                                   ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                          ***
'***    SORTIE:                                                                                           ***
'******************************************************************************
'***    EXEMPLE:                                                                                        ***
'******************************************************************************
Public Property Let FichierNom(ByVal vNewValue As String)

   On Error GoTo Err_FichierNom

   StrAgentFichier = vNewValue

Exit_FichierNom:

   Exit Property

Err_FichierNom:

   MsgBox Err.Number & " " & Err.Description, , "LetFichierNom"

   Resume Exit_FichierNom
End Property
