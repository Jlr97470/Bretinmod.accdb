Operation =1
Option =0
Begin InputTables
    Name ="TBLVILLES"
    Name ="TBLCLIENTS"
    Name ="TBLVILLES"
    Alias ="TBLVILLES_1"
End
Begin OutputColumns
    Expression ="TBLCLIENTS.CliNum"
    Expression ="TBLCLIENTS.CliCode"
    Expression ="TBLCLIENTS.CliDateCre"
    Expression ="TBLCLIENTS.CliDateMaj"
    Expression ="TBLCLIENTS.CliCivCode"
    Expression ="TBLCLIENTS.CliNom"
    Expression ="TBLCLIENTS.CliPrenom"
    Expression ="TBLCLIENTS.CliAdresse"
    Alias ="CliVilCodePostal"
    Expression ="TBLVILLES.VilCodePostal"
    Alias ="CliVilNom"
    Expression ="TBLVILLES.VilNom"
    Alias ="CliVilPays"
    Expression ="TBLVILLES.VilPays"
    Expression ="TBLCLIENTS.CliNote"
    Expression ="TBLCLIENTS.CliTel1Libelle"
    Expression ="TBLCLIENTS.CliTel1"
    Expression ="TBLCLIENTS.CliTel2Libelle"
    Expression ="TBLCLIENTS.CliTel2"
    Expression ="TBLCLIENTS.CliBatiment"
    Expression ="TBLCLIENTS.CliEscalier"
    Expression ="TBLCLIENTS.CliEtage"
    Expression ="TBLCLIENTS.CliPorte"
    Expression ="TBLCLIENTS.CliDigicode"
    Expression ="TBLCLIENTS.CliSousCivCode"
    Expression ="TBLCLIENTS.CliSousNom"
    Expression ="TBLCLIENTS.CliSousPrenom"
    Expression ="TBLCLIENTS.CliSousAdresse"
    Alias ="CliSousVilCodePostal"
    Expression ="TBLVILLES_1.VilCodePostal"
    Alias ="CliSousVilNom"
    Expression ="TBLVILLES_1.VilNom"
    Alias ="CliSousVilPays"
    Expression ="TBLVILLES_1.VilPays"
    Expression ="TBLCLIENTS.CliSousNote"
    Expression ="TBLCLIENTS.CliSousTel1Libelle"
    Expression ="TBLCLIENTS.CliSousTel1"
    Expression ="TBLCLIENTS.CliSousTel2Libelle"
    Expression ="TBLCLIENTS.CliSousTel2"
End
Begin Joins
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLVILLES_1"
    Expression ="TBLCLIENTS.CliSousVilNum = TBLVILLES_1.VilNum"
    Flag =2
    LeftTable ="TBLVILLES"
    RightTable ="TBLCLIENTS"
    Expression ="TBLVILLES.VilNum = TBLCLIENTS.CliVilNum"
    Flag =3
End
Begin OrderBy
    Expression ="TBLCLIENTS.CliCode"
    Flag =0
    Expression ="TBLCLIENTS.CliNom"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Selection Des Clients Et Villes\015\012Utiliser Par :\015\012- FrmLstClients"
Begin
    Begin
        dbText "Name" ="TBLCLIENTS.CliNum"
        dbMemo "Caption" ="Num"
        dbText "Description" ="Num"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliCode"
        dbMemo "Caption" ="Code"
        dbText "Description" ="Code"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliDateCre"
        dbMemo "Caption" ="Date Creation"
        dbText "Description" ="Date Creation"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliDateMaj"
        dbMemo "Caption" ="Date Mise A Jour"
        dbText "Description" ="Date Mise A Jour"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliCivCode"
        dbMemo "Caption" ="Civ"
        dbText "Description" ="Civ"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliNom"
        dbMemo "Caption" ="Nom"
        dbText "Description" ="Nom"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliPrenom"
        dbMemo "Caption" ="Prenom"
        dbText "Description" ="Prenom"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliAdresse"
        dbMemo "Caption" ="Adresse"
        dbText "Description" ="Adresse"
    End
    Begin
        dbText "Name" ="CliVilCodePostal"
        dbMemo "Caption" ="Code Postal"
        dbText "Description" ="Code Postal"
    End
    Begin
        dbText "Name" ="CliVilNom"
        dbMemo "Caption" ="Ville"
        dbText "Description" ="Ville"
    End
    Begin
        dbText "Name" ="CliVilPays"
        dbMemo "Caption" ="Pays"
        dbText "Description" ="Pays"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliNote"
        dbMemo "Caption" ="Note"
        dbText "Description" ="Note"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliTel2"
        dbMemo "Caption" ="Tel2"
        dbText "Description" ="Tel2"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliTel1"
        dbMemo "Caption" ="Tel1"
        dbText "Description" ="Tel1"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliTel1Libelle"
        dbMemo "Caption" ="Tel1Lib"
        dbText "Description" ="Tel1Lib"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliTel2Libelle"
        dbMemo "Caption" ="Tel2Lib"
        dbText "Description" ="Tel2Lib"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliBatiment"
        dbMemo "Caption" ="Batiment"
        dbText "Description" ="Batiment"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliEscalier"
        dbMemo "Caption" ="Escalier"
        dbText "Description" ="Escalier"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliEtage"
        dbMemo "Caption" ="Etage"
        dbText "Description" ="Etage"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliPorte"
        dbMemo "Caption" ="Porte"
        dbText "Description" ="Porte"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliDigicode"
        dbMemo "Caption" ="Digicode"
        dbText "Description" ="Digicode"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousNom"
        dbMemo "Caption" ="Souscripteur Nom"
        dbText "Description" ="Souscripteur Nom"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousPrenom"
        dbMemo "Caption" ="Souscripteur Prenom"
        dbText "Description" ="Souscripteur Prenom"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousAdresse"
        dbMemo "Caption" ="Souscripteur Adresse"
        dbText "Description" ="Souscripteur Adresse"
    End
    Begin
        dbText "Name" ="CliSousVilCodePostal"
        dbMemo "Caption" ="Code Postal"
        dbText "Description" ="Code Postal"
    End
    Begin
        dbText "Name" ="CliSousVilNom"
        dbMemo "Caption" ="Ville"
        dbText "Description" ="Ville"
    End
    Begin
        dbText "Name" ="CliSousVilPays"
        dbMemo "Caption" ="Pays"
        dbText "Description" ="Pays"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousNote"
        dbMemo "Caption" ="Souscripteur Note"
        dbText "Description" ="Souscripteur Note"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousTel1Libelle"
        dbMemo "Caption" ="Tel1Lib"
        dbText "Description" ="Tel1Lib"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousTel1"
        dbMemo "Caption" ="Tel1"
        dbText "Description" ="Tel1"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousTel2Libelle"
        dbMemo "Caption" ="Tel2Lib"
        dbText "Description" ="Tel2Lib"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousTel2"
        dbMemo "Caption" ="Tel2"
        dbText "Description" ="Tel2"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousCivCode"
        dbText "Description" ="Civ"
        dbMemo "Caption" ="Civ"
    End
End
Begin
    State =0
    Left =40
    Top =62
    Right =1250
    Bottom =694
    Left =-1
    Top =-1
    Right =1199
    Bottom =471
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =172
        Top =126
        Right =268
        Bottom =233
        Top =0
        Name ="TBLVILLES"
        Name =""
    End
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =488
        Top =0
        Name ="TBLCLIENTS"
        Name =""
    End
    Begin
        Left =166
        Top =351
        Right =262
        Bottom =458
        Top =0
        Name ="TBLVILLES_1"
        Name =""
    End
End
