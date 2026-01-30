Version =196611
ColumnsShown =0
Begin
    MacroName ="Fiche Clients"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De La Fiche Clients"
    Argument ="FrmFicheClients"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Liste Villes"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire Des Listes Des Villes"
    Argument ="FrmLstVilles"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Liste Civilites"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire Des Listes Des Civilites"
    Argument ="FrmLstCivilites"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Liste Clients Echeancier"
    Action ="RunCode"
    Comment ="Execute La Fonction Clients Echeancier"
    Argument ="OuvreClientsEcheancier ()"
End
Begin
    MacroName ="Liste Machines"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire Des Listes Des Machines"
    Argument ="FrmLstMachines"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="2"
    Argument ="0"
End
Begin
    MacroName ="Recherche Simple"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Recherche Simpte"
    Argument ="FrmRecherche"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Recherche Multi"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Recherche Multi Critére"
    Argument ="FrmRechercheMulti"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Recherche Clients"
    Action ="RunCode"
    Comment ="Ouvre Le Formulaire De Recherche Sur Onglet Clients"
    Argument ="OuvreRecherche (0)"
End
Begin
    MacroName ="Recherche Chaudieres"
    Action ="RunCode"
    Comment ="Ouvre Le Formulaire De Recherche Sur Onglet Chaudieres"
    Argument ="OuvreRecherche (1)"
End
Begin
    MacroName ="Recherche Interventions"
    Action ="RunCode"
    Comment ="Ouvre Le Formulaire De Recherche Sur Onglet Interventions"
    Argument ="OuvreRecherche (2)"
End
Begin
    MacroName ="Recherche Contrats"
    Action ="RunCode"
    Comment ="Ouvre Le Formulaire De Recherche Sur Onglet Contrats"
    Argument ="OuvreRecherche (3)"
End
Begin
    MacroName ="Selection Clients"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Selection Clients"
    Argument ="FrmLstClients"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Selection Chaudieres"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Selection Chaudieres"
    Argument ="FrmLstChaudieres"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Selection Interventions"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Selection Interventions"
    Argument ="FrmLstInterventions"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Selection Contrats"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Selection Contrats"
    Argument ="FrmLstContrats"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Fusion Simple"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Fusion Simple"
    Argument ="FrmFusion"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Gestion Parametres"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Gestion Parametres"
    Argument ="FrmGestionParametres"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Gestion Parametres Generals"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Gestion Parametres Generals"
    Argument ="FrmGestionParametresGenerals"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Gestion Fichiers"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Gestion Fichiers"
    Argument ="FrmGestionFichiers"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Gestion Messages"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Gestion Des Messages"
    Argument ="FrmGestionMessages"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Mailing Simple"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Mailing Simple"
    Argument ="FrmMailing"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Mailing Multi"
    Action ="OpenForm"
    Comment ="Ouvre Le Formulaire De Mailing Multi"
    Argument ="FrmMailingMulti"
    Argument ="0"
    Argument =""
    Argument =""
    Argument ="1"
    Argument ="0"
End
Begin
    MacroName ="Mailing Clients Villes"
    Action ="RunCode"
    Comment ="Mailing Clients Villes"
    Argument ="ExporteExcelRequete (\"SelMailingClientsVilles\")"
End
Begin
    MacroName ="Mailing Clients Chaudieres"
    Action ="RunCode"
    Comment ="Mailing Clients Chaudieres"
    Argument ="ExporteExcelRequete (\"SelMailingClientsChaudieres\")"
End
Begin
    MacroName ="Mailing Clients Interventions"
    Action ="RunCode"
    Comment ="Mailing Clients Interventions"
    Argument ="ExporteExcelRequete (\"SelMailingClientsInterventions\")"
End
Begin
    MacroName ="Mailing Clients Contrats"
    Action ="RunCode"
    Comment ="Mailing Clients Contrats"
    Argument ="ExporteExcelRequete (\"SelMailingClientsContrats\")"
End
Begin
    Comment ="_AXL:<?xml version=\"1.0\" encoding=\"UTF-16\" standalone=\"no\"?>\015\012<UserI"
        "nterfaceMacro MinimumClientDesignVersion=\"14.0.0000.0000\" xmlns=\"http://schem"
        "as.microsoft.com/office/accessservices/2009/11/application\"><Statements/><Sub N"
        "ame=\"Fiche Clients\"><Statemen"
End
Begin
    Comment ="_AXL:ts><Comment>Ouvre Le Formulaire De La Fiche Clients</Comment><Action Name=\""
        "OpenForm\"><Argument Name=\"FormName\">FrmFicheClients</Argument><Argument Name="
        "\"DataMode\">Edit</Argument></Action></Statements></Sub><Sub Name=\"Liste Villes"
        "\"><Statements><Comm"
End
Begin
    Comment ="_AXL:ent>Ouvre Le Formulaire Des Listes Des Villes</Comment><Action Name=\"OpenF"
        "orm\"><Argument Name=\"FormName\">FrmLstVilles</Argument><Argument Name=\"DataMo"
        "de\">Edit</Argument></Action></Statements></Sub><Sub Name=\"Liste Civilites\"><S"
        "tatements><Comment>Ou"
End
Begin
    Comment ="_AXL:vre Le Formulaire Des Listes Des Civilites</Comment><Action Name=\"OpenForm"
        "\"><Argument Name=\"FormName\">FrmLstCivilites</Argument><Argument Name=\"DataMo"
        "de\">Edit</Argument></Action></Statements></Sub><Sub Name=\"Liste Clients Echean"
        "cier\"><Statements><C"
End
Begin
    Comment ="_AXL:omment>Execute La Fonction Clients Echeancier</Comment><Action Name=\"RunCo"
        "de\"><Argument Name=\"FunctionName\">OuvreClientsEcheancier () </Argument></Acti"
        "on></Statements></Sub><Sub Name=\"Liste Machines\"><Statements><Comment>Ouvre Le"
        " Formulaire Des Lis"
End
Begin
    Comment ="_AXL:tes Des Machines</Comment><Action Name=\"OpenForm\"><Argument Name=\"FormNa"
        "me\">FrmLstMachines</Argument><Argument Name=\"DataMode\">Read Only</Argument></"
        "Action></Statements></Sub><Sub Name=\"Recherche Simple\"><Statements><Comment>Ou"
        "vre Le Formulaire De "
End
Begin
    Comment ="_AXL:Recherche Simpte</Comment><Action Name=\"OpenForm\"><Argument Name=\"FormNa"
        "me\">FrmRecherche</Argument><Argument Name=\"DataMode\">Edit</Argument></Action>"
        "</Statements></Sub><Sub Name=\"Recherche Multi\"><Statements><Comment>Ouvre Le F"
        "ormulaire De Recherch"
End
Begin
    Comment ="_AXL:e Multi Critére</Comment><Action Name=\"OpenForm\"><Argument Name=\"FormNam"
        "e\">FrmRechercheMulti</Argument><Argument Name=\"DataMode\">Edit</Argument></Act"
        "ion></Statements></Sub><Sub Name=\"Recherche Clients\"><Statements><Comment>Ouvr"
        "e Le Formulaire De Re"
End
Begin
    Comment ="_AXL:cherche Sur Onglet Clients</Comment><Action Name=\"RunCode\"><Argument Name"
        "=\"FunctionName\">OuvreRecherche (0) </Argument></Action></Statements></Sub><Sub"
        " Name=\"Recherche Chaudieres\"><Statements><Comment>Ouvre Le Formulaire De Reche"
        "rche Sur Onglet Cha"
End
Begin
    Comment ="_AXL:udieres</Comment><Action Name=\"RunCode\"><Argument Name=\"FunctionName\">O"
        "uvreRecherche (1) </Argument></Action></Statements></Sub><Sub Name=\"Recherche I"
        "nterventions\"><Statements><Comment>Ouvre Le Formulaire De Recherche Sur Onglet "
        "Interventions</Comm"
End
Begin
    Comment ="_AXL:ent><Action Name=\"RunCode\"><Argument Name=\"FunctionName\">OuvreRecherche"
        " (2) </Argument></Action></Statements></Sub><Sub Name=\"Recherche Contrats\"><St"
        "atements><Comment>Ouvre Le Formulaire De Recherche Sur Onglet Contrats</Comment>"
        "<Action Name=\"RunCo"
End
Begin
    Comment ="_AXL:de\"><Argument Name=\"FunctionName\">OuvreRecherche (3) </Argument></Action"
        "></Statements></Sub><Sub Name=\"Selection Clients\"><Statements><Comment>Ouvre L"
        "e Formulaire De Selection Clients</Comment><Action Name=\"OpenForm\"><Argument N"
        "ame=\"FormName\">FrmLs"
End
Begin
    Comment ="_AXL:tClients</Argument><Argument Name=\"DataMode\">Edit</Argument></Action></St"
        "atements></Sub><Sub Name=\"Selection Chaudieres\"><Statements><Comment>Ouvre Le "
        "Formulaire De Selection Chaudieres</Comment><Action Name=\"OpenForm\"><Argument "
        "Name=\"FormName\">Frm"
End
Begin
    Comment ="_AXL:LstChaudieres</Argument><Argument Name=\"DataMode\">Edit</Argument></Action"
        "></Statements></Sub><Sub Name=\"Selection Interventions\"><Statements><Comment>O"
        "uvre Le Formulaire De Selection Interventions</Comment><Action Name=\"OpenForm\""
        "><Argument Name=\"Fo"
End
Begin
    Comment ="_AXL:rmName\">FrmLstInterventions</Argument><Argument Name=\"DataMode\">Edit</Ar"
        "gument></Action></Statements></Sub><Sub Name=\"Selection Contrats\"><Statements>"
        "<Comment>Ouvre Le Formulaire De Selection Contrats</Comment><Action Name=\"OpenF"
        "orm\"><Argument Name"
End
Begin
    Comment ="_AXL:=\"FormName\">FrmLstContrats</Argument><Argument Name=\"DataMode\">Edit</Ar"
        "gument></Action></Statements></Sub><Sub Name=\"Fusion Simple\"><Statements><Comm"
        "ent>Ouvre Le Formulaire De Fusion Simple</Comment><Action Name=\"OpenForm\"><Arg"
        "ument Name=\"FormName\""
End
Begin
    Comment ="_AXL:>FrmFusion</Argument><Argument Name=\"DataMode\">Edit</Argument></Action></"
        "Statements></Sub><Sub Name=\"Gestion Parametres\"><Statements><Comment>Ouvre Le "
        "Formulaire De Gestion Parametres</Comment><Action Name=\"OpenForm\"><Argument Na"
        "me=\"FormName\">FrmGe"
End
Begin
    Comment ="_AXL:stionParametres</Argument><Argument Name=\"DataMode\">Edit</Argument></Acti"
        "on></Statements></Sub><Sub Name=\"Gestion Parametres Generals\"><Statements><Com"
        "ment>Ouvre Le Formulaire De Gestion Parametres Generals</Comment><Action Name=\""
        "OpenForm\"><Argumen"
End
Begin
    Comment ="_AXL:t Name=\"FormName\">FrmGestionParametresGenerals</Argument><Argument Name=\""
        "DataMode\">Edit</Argument></Action></Statements></Sub><Sub Name=\"Gestion Fichie"
        "rs\"><Statements><Comment>Ouvre Le Formulaire De Gestion Fichiers</Comment><Acti"
        "on Name=\"OpenForm\""
End
Begin
    Comment ="_AXL:><Argument Name=\"FormName\">FrmGestionFichiers</Argument><Argument Name=\""
        "DataMode\">Edit</Argument></Action></Statements></Sub><Sub Name=\"Gestion Messag"
        "es\"><Statements><Comment>Ouvre Le Formulaire De Gestion Des Messages</Comment><"
        "Action Name=\"OpenFo"
End
Begin
    Comment ="_AXL:rm\"><Argument Name=\"FormName\">FrmGestionMessages</Argument><Argument Nam"
        "e=\"DataMode\">Edit</Argument></Action></Statements></Sub><Sub Name=\"Mailing Si"
        "mple\"><Statements><Comment>Ouvre Le Formulaire De Mailing Simple</Comment><Acti"
        "on Name=\"OpenForm\"><"
End
Begin
    Comment ="_AXL:Argument Name=\"FormName\">FrmMailing</Argument><Argument Name=\"DataMode\""
        ">Edit</Argument></Action></Statements></Sub><Sub Name=\"Mailing Multi\"><Stateme"
        "nts><Comment>Ouvre Le Formulaire De Mailing Multi</Comment><Action Name=\"OpenFo"
        "rm\"><Argument Name=\""
End
Begin
    Comment ="_AXL:FormName\">FrmMailingMulti</Argument><Argument Name=\"DataMode\">Edit</Argu"
        "ment></Action></Statements></Sub><Sub Name=\"Mailing Clients Villes\"><Statement"
        "s><Comment>Mailing Clients Villes</Comment><Action Name=\"RunCode\"><Argument Na"
        "me=\"FunctionName\">Ex"
End
Begin
    Comment ="_AXL:porteExcelRequete (\"SelMailingClientsVilles\") </Argument></Action></State"
        "ments></Sub><Sub Name=\"Mailing Clients Chaudieres\"><Statements><Comment>Mailin"
        "g Clients Chaudieres</Comment><Action Name=\"RunCode\"><Argument Name=\"Function"
        "Name\">ExporteExcelRe"
End
Begin
    Comment ="_AXL:quete (\"SelMailingClientsChaudieres\") </Argument></Action></Statements></"
        "Sub><Sub Name=\"Mailing Clients Interventions\"><Statements><Comment>Mailing Cli"
        "ents Interventions</Comment><Action Name=\"RunCode\"><Argument Name=\"FunctionNa"
        "me\">ExporteExcelRequ"
End
Begin
    Comment ="_AXL:ete (\"SelMailingClientsInterventions\") </Argument></Action></Statements><"
        "/Sub><Sub Name=\"Mailing Clients Contrats\"><Statements><Comment>Mailing Clients"
        " Contrats</Comment><Action Name=\"RunCode\"><Argument Name=\"FunctionName\">Expo"
        "rteExcelRequete (\"Sel"
End
Begin
    Comment ="_AXL:MailingClientsContrats\") </Argument></Action></Statements></Sub></UserInte"
        "rfaceMacro>"
End
