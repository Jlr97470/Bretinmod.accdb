Operation =1
Option =0
Begin InputTables
    Name ="TBLVILLES"
    Name ="TBLCLIENTS"
    Name ="TBLVILLES"
    Alias ="TBLVILLES_1"
    Name ="TBLCLIENTSCHAUDIERES"
    Name ="TBLCLIENTSCONTRATS"
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
    Expression ="TBLCLIENTS.CliTel1Libelle"
    Expression ="TBLCLIENTS.CliTel1"
    Expression ="TBLCLIENTS.CliTel2Libelle"
    Expression ="TBLCLIENTS.CliTel2"
    Expression ="TBLCLIENTS.CliBatiment"
    Expression ="TBLCLIENTS.CliEscalier"
    Expression ="TBLCLIENTS.CliEtage"
    Expression ="TBLCLIENTS.CliPorte"
    Expression ="TBLCLIENTS.CliDigicode"
    Alias ="CliSousCivCode"
    Expression ="IIf(TBLCLIENTS.CliSousCivCode Is Null,TBLCLIENTS.CliCivCode,TBLCLIENTS.CliSousCi"
        "vCode)"
    Alias ="CliSousNom"
    Expression ="IIf(TBLCLIENTS.CliSousNom Is Null,TBLCLIENTS.CliNom,TBLCLIENTS.CliSousNom)"
    Alias ="CliSousPrenom"
    Expression ="IIf(TBLCLIENTS.CliSousPrenom Is Null,TBLCLIENTS.CliPrenom,TBLCLIENTS.CliSousPren"
        "om)"
    Alias ="CliSousAdresse"
    Expression ="IIf(TBLCLIENTS.CliSousAdresse Is Null,TBLCLIENTS.CliAdresse,TBLCLIENTS.CliSousAd"
        "resse)"
    Alias ="CliSousVilCodePostal"
    Expression ="IIf(TBLVILLES_1.VilCodePostal Is Null,TBLVILLES.VilCodePostal,TBLVILLES_1.VilCod"
        "ePostal)"
    Alias ="CliSousVilNom"
    Expression ="IIf(TBLVILLES_1.VilNom Is Null,TBLVILLES.VilNom,TBLVILLES_1.VilNom)"
    Alias ="CliSousVilPays"
    Expression ="IIf(TBLVILLES_1.VilPays Is Null,TBLVILLES.VilPays,TBLVILLES_1.VilPays)"
    Expression ="TBLCLIENTS.CliSousNote"
    Alias ="CliSousTel1"
    Expression ="IIf(TBLCLIENTS.CliSousTel1 Is Null,TBLCLIENTS.CliTel1,TBLCLIENTS.CliSousTel1)"
    Alias ="CliSousTel1Libelle"
    Expression ="IIf(TBLCLIENTS.CliSousTel1Libelle Is Null,TBLCLIENTS.CliTel1Libelle,TBLCLIENTS.C"
        "liSousTel1Libelle)"
    Alias ="CliSousTel2"
    Expression ="IIf(TBLCLIENTS.CliSousTel2 Is Null,TBLCLIENTS.CliTel2,TBLCLIENTS.CliSousTel2)"
    Alias ="CliSousTel2Libelle"
    Expression ="IIf(TBLCLIENTS.CliSousTel2Libelle Is Null,TBLCLIENTS.CliTel2Libelle,TBLCLIENTS.C"
        "liSousTel2Libelle)"
    Alias ="CliSousDes"
    Expression ="IIf([CliCivCode] Is Null,[CliSousCivCode],[CliCivCode]) & \" \" & IIf([CliNom] I"
        "s Null,[CliSousNom],[CliNom]) & \" \" & IIf([CliPrenom] Is Null,[CliSousPrenom],"
        "[CliPrenom])"
    Expression ="TBLCLIENTSCHAUDIERES.*"
    Expression ="TBLCLIENTSCONTRATS.*"
    Alias ="CliConDateDebutFr"
    Expression ="CStr(Format([CliConDateDebut],\"dd/mm/yyyy\"))"
    Alias ="CliConDateFinFr"
    Expression ="CStr(Format([CliConDateFin],\"dd/mm/yyyy\"))"
    Alias ="CliConPrix2"
    Expression ="CDbl(-Int(-([CliConPrix]*10^2))/10^2)"
End
Begin Joins
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLVILLES_1"
    Expression ="TBLCLIENTS.CliSousVilNum = TBLVILLES_1.VilNum"
    Flag =2
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLCLIENTSCHAUDIERES"
    Expression ="TBLCLIENTS.CliNum = TBLCLIENTSCHAUDIERES.CliChdCliNum"
    Flag =1
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLCLIENTSCONTRATS"
    Expression ="TBLCLIENTS.CliNum = TBLCLIENTSCONTRATS.CliConCliNum"
    Flag =1
    LeftTable ="TBLVILLES"
    RightTable ="TBLCLIENTS"
    Expression ="TBLVILLES.VilNum = TBLCLIENTS.CliVilNum"
    Flag =3
End
Begin OrderBy
    Expression ="TBLCLIENTS.CliCode"
    Flag =0
    Expression ="TBLCLIENTSCONTRATS.CliConActif"
    Flag =0
    Expression ="[CliConDateDebut]-Date()"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="-1"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Fusion Des Clients Et Contrats\015\012Utiliser Par :\015\012- FrmLstContrats"
Begin
    Begin
        dbText "Name" ="TBLCLIENTS.CliAdresse"
        dbInteger "ColumnWidth" ="2550"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliVilPays"
        dbInteger "ColumnWidth" ="1065"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousVilNom"
        dbInteger "ColumnWidth" ="2385"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousVilPays"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousDes"
        dbInteger "ColumnWidth" ="2850"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousCivCode"
        dbInteger "ColumnWidth" ="1560"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousNom"
        dbInteger "ColumnWidth" ="2505"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousPrenom"
        dbInteger "ColumnWidth" ="1530"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousAdresse"
        dbInteger "ColumnWidth" ="3255"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousVilCodePostal"
        dbInteger "ColumnWidth" ="2085"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousTel1"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousTel1Libelle"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousTel2"
        dbInteger "ColumnWidth" ="1230"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliSousTel2Libelle"
        dbInteger "ColumnWidth" ="1770"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDateDebut"
        dbText "Format" ="Short Date"
        dbInteger "ColumnWidth" ="2610"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliConDateDebutFr"
        dbInteger "ColumnWidth" ="1845"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="Short Date"
    End
    Begin
        dbText "Name" ="CliConDateFinFr"
        dbInteger "ColumnWidth" ="1605"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConPrix"
        dbInteger "ColumnWidth" ="1980"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConActif"
        dbInteger "ColumnWidth" ="2070"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="CliConPrix2"
        dbInteger "ColumnWidth" ="5055"
        dbBoolean "ColumnHidden" ="0"
        dbText "Format" ="#,##0.00 €;-#,##0.00 €"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliNom"
        dbInteger "ColumnWidth" ="2505"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliSousNote"
        dbInteger "ColumnWidth" ="2400"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdCliNum"
        dbInteger "ColumnWidth" ="3210"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdRef"
        dbInteger "ColumnWidth" ="2745"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdDateServ"
        dbInteger "ColumnWidth" ="3750"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdGaz"
        dbInteger "ColumnWidth" ="2235"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdIdentification"
        dbInteger "ColumnWidth" ="2955"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdMarque"
        dbInteger "ColumnWidth" ="2520"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdPuissance"
        dbInteger "ColumnWidth" ="2790"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdRemarque"
        dbInteger "ColumnWidth" ="2760"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdActif"
        dbInteger "ColumnWidth" ="2265"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConNum"
        dbInteger "ColumnWidth" ="2310"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConCliNum"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDateFin"
        dbInteger "ColumnWidth" ="2370"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDatePaiment"
        dbInteger "ColumnWidth" ="2820"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConType"
        dbInteger "ColumnWidth" ="3675"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConCoefficient"
        dbInteger "ColumnWidth" ="2535"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConPrixHT"
        dbInteger "ColumnWidth" ="2235"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConTVA"
        dbInteger "ColumnWidth" ="2010"
        dbBoolean "ColumnHidden" ="0"
    End
End
Begin
    State =0
    Left =62
    Top =84
    Right =1258
    Bottom =819
    Left =-1
    Top =-1
    Right =1185
    Bottom =559
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =5
        Top =223
        Right =242
        Bottom =322
        Top =0
        Name ="TBLVILLES"
        Name =""
    End
    Begin
        Left =272
        Top =128
        Right =412
        Bottom =587
        Top =0
        Name ="TBLCLIENTS"
        Name =""
    End
    Begin
        Left =442
        Top =427
        Right =680
        Bottom =526
        Top =0
        Name ="TBLVILLES_1"
        Name =""
    End
    Begin
        Left =442
        Top =5
        Right =679
        Bottom =194
        Top =0
        Name ="TBLCLIENTSCHAUDIERES"
        Name =""
    End
    Begin
        Left =5
        Top =6
        Right =242
        Bottom =210
        Top =0
        Name ="TBLCLIENTSCONTRATS"
        Name =""
    End
End
