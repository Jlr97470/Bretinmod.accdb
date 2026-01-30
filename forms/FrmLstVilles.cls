Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'******************************************************************************
'***    DataInformaiqueCopyright                                                                 ***
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
'***    EVENEMENT:                                                                                    ***
'******************************************************************************

'******************************************************************************
'***    EVENEMENT:                                                                                    ***
'******************************************************************************
'***    FONCTION:                                                                                       ***
'******************************************************************************
'***    ENTREE:                                                                                           ***
'***    SORTIE:                                                                                            ***
'******************************************************************************
Private Sub Form_BeforeUpdate(Cancel As Integer)

    On Error GoTo Err_Form_BeforeUpdate

   Select Case IsNull(VilNom)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Ville Nom Est Obligatoire", , Me.Caption

         TxtVilNom.SetFocus

         GoTo Exit_Form_BeforeUpdate
      Case False

   End Select

   Select Case IsNull(VilCodePostal)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Ville Code Postal Est Obligatoire", , Me.Caption

         TxtVilCodePostal.SetFocus

         GoTo Exit_Form_BeforeUpdate
      Case False

   End Select

   Select Case IsNull(VilPays)
      Case True

         Cancel = True

         AgtBretin.AfficheMessage "Le Champ Ville Pays Est Obligatoire", , Me.Caption

         TxtVilPays.SetFocus

         GoTo Exit_Form_BeforeUpdate
      Case False

   End Select

   TxtVilNom = UCase(TxtVilNom)

   TxtVilPays = StrConv(TxtVilPays, vbProperCase)

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
'***    ENTREE:                                                                                           ***
'***    SORTIE:                                                                                            ***
'******************************************************************************
Private Sub TxtVilNom_KeyPress(KeyAscii As Integer)

    On Error GoTo Err_TxtVilNom_KeyPress

    KeyAscii = Asc(UCase((Chr$(KeyAscii))))

Exit_TxtVilNom_KeyPress:

    Exit Sub

Err_TxtVilNom_KeyPress:

    AgtBretin.AfficheMessage Err.Number & " " & Err.Description, , "TxtVilNom_KeyPress"

    Resume Exit_TxtVilNom_KeyPress
End Sub
