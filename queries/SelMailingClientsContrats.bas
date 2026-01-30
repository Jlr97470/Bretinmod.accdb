Operation =1
Option =0
Begin InputTables
    Name ="TBLCLIENTS"
    Name ="TBLCLIENTSCONTRATS"
End
Begin OutputColumns
    Expression ="TBLCLIENTS.CliNum"
    Expression ="TBLCLIENTS.CliCode"
    Expression ="TBLCLIENTS.CliNom"
    Expression ="TBLCLIENTS.CliPrenom"
    Expression ="TBLCLIENTSCONTRATS.CliConDateDebut"
    Expression ="TBLCLIENTSCONTRATS.CliConDateFin"
    Expression ="TBLCLIENTSCONTRATS.CliConDatePaiment"
    Expression ="TBLCLIENTSCONTRATS.CliConType"
    Expression ="TBLCLIENTSCONTRATS.CliConCoefficient"
    Expression ="TBLCLIENTSCONTRATS.CliConPrixHT"
    Expression ="TBLCLIENTSCONTRATS.CliConTVA"
    Expression ="TBLCLIENTSCONTRATS.CliConPrix"
    Expression ="TBLCLIENTSCONTRATS.CliConActif"
End
Begin Joins
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLCLIENTSCONTRATS"
    Expression ="TBLCLIENTS.CliNum=TBLCLIENTSCONTRATS.CliConCliNum"
    Flag =1
End
Begin OrderBy
    Expression ="TBLCLIENTS.CliCode"
    Flag =0
    Expression ="TBLCLIENTSCONTRATS.CliConActif"
    Flag =0
    Expression ="[CliConDateFin]-Date()"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Mailing Des Contrats"
Begin
    Begin
        dbText "Name" ="TBLCLIENTS.CliNum"
        dbText "Description" ="Num"
        dbMemo "Caption" ="Num"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliCode"
        dbText "Description" ="Code"
        dbMemo "Caption" ="Code"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliNom"
        dbText "Description" ="Nom"
        dbMemo "Caption" ="Nom"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliPrenom"
        dbText "Description" ="Prenom"
        dbMemo "Caption" ="Prenom"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDateDebut"
        dbText "Description" ="Date Debut"
        dbMemo "Caption" ="Date Debut"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDateFin"
        dbText "Description" ="Date Fin"
        dbMemo "Caption" ="Date Fin"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDatePaiment"
        dbText "Description" ="Date Paiment"
        dbMemo "Caption" ="Date Paiment"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConType"
        dbText "Description" ="Type"
        dbMemo "Caption" ="Type"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConCoefficient"
        dbText "Description" ="Coefficient"
        dbMemo "Caption" ="Coefficient"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConTVA"
        dbText "Description" ="TVA"
        dbMemo "Caption" ="TVA"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConPrix"
        dbText "Description" ="Prix"
        dbMemo "Caption" ="Prix"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConActif"
        dbText "Description" ="Actif"
        dbMemo "Caption" ="Actif"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConPrixHT"
        dbText "Description" ="Prix HT"
        dbMemo "Caption" ="Prix HT"
    End
End
Begin
    State =0
    Left =47
    Top =69
    Right =1122
    Bottom =461
    Left =-1
    Top =-1
    Right =1068
    Bottom =223
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =195
        Top =0
        Name ="TBLCLIENTS"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =316
        Bottom =195
        Top =2
        Name ="TBLCLIENTSCONTRATS"
        Name =""
    End
End
