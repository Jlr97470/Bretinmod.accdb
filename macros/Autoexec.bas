Version =196611
ColumnsShown =0
Begin
    Condition ="VerifieFichiers()=False"
    Action ="MsgBox"
    Comment ="Verification Des Fichiers De La Base Et Ouverture Si Ok"
    Argument ="Attention Probleme De Fichier"
    Argument ="-1"
    Argument ="1"
    Argument ="CDP 2003 - Verification Des Fichiers - DataSource/Safari 2003"
End
Begin
    Action ="RunCode"
    Comment ="Initialisation De L'Agent"
    Argument ="InitialiseAgent ()"
End
Begin
    Action ="RunCode"
    Comment ="Connexion Messagerie De Bretin Clients"
    Argument ="MessagerieConnexion()"
End
Begin
    Action ="OpenForm"
    Comment ="Ouvre Formulaire About"
    Argument ="FrmAbout"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="3"
End
Begin
    Action ="RunCode"
    Comment ="Ouvre Formulaire Menu Principale"
    Argument ="OuvreMenuPrincipale ()"
End
Begin
    Action ="RunCode"
    Comment ="Initialisation De La Gestion De La Messagerie"
    Argument ="InitialiseMessagerie ()"
End
Begin
    Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
        "nterfaceMacro MinimumClientDesignVersion=\"14.0.0000.0000\" xmlns=\"http://schem"
        "as.microsoft.com/office/accessservices/2009/11/application\"><Statements><Condit"
        "ionalBlock><If><Condition>Ver"
End
Begin
    Comment ="_AXL:ifieFichiers()=False</Condition><Statements><Comment>Verification Des Fichi"
        "ers De La Base Et Ouverture Si Ok</Comment><Action Name=\"MessageBox\"><Argument"
        " Name=\"Message\">Attention Probleme De Fichier</Argument><Argument Name=\"Type\""
        ">Critical</Argumen"
End
Begin
    Comment ="_AXL:t><Argument Name=\"Title\">CDP 2003 - Verification Des Fichiers - DataSourc"
        "e/Safari 2003</Argument></Action></Statements></If></ConditionalBlock><Comment>I"
        "nitialisation De L'Agent</Comment><Action Name=\"RunCode\"><Argument Name=\"Func"
        "tionName\">Initiali"
End
Begin
    Comment ="_AXL:seAgent () </Argument></Action><Comment>Connexion Messagerie De Bretin Clie"
        "nts</Comment><Action Name=\"RunCode\"><Argument Name=\"FunctionName\">Messagerie"
        "Connexion()</Argument></Action><Comment>Ouvre Formulaire About</Comment><Action "
        "Name=\"OpenForm\"><"
End
Begin
    Comment ="_AXL:Argument Name=\"FormName\">FrmAbout</Argument><Argument Name=\"DataMode\">E"
        "dit</Argument><Argument Name=\"WindowMode\">Dialog</Argument></Action><Comment>O"
        "uvre Formulaire Menu Principale</Comment><Action Name=\"RunCode\"><Argument Name"
        "=\"FunctionName\">Ouvre"
End
Begin
    Comment ="_AXL:MenuPrincipale () </Argument></Action><Comment>Initialisation De La Gestion"
        " De La Messagerie</Comment><Action Name=\"RunCode\"><Argument Name=\"FunctionNam"
        "e\">InitialiseMessagerie () </Argument></Action></Statements></UserInterfaceMacr"
        "o>"
End
