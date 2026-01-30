Operation =1
Option =0
Begin InputTables
    Name ="TBLCLIENTS"
    Name ="TBLCLIENTSCHAUDIERES"
End
Begin OutputColumns
    Expression ="TBLCLIENTS.CliNum"
    Expression ="TBLCLIENTS.CliCode"
    Expression ="TBLCLIENTS.CliNom"
    Expression ="TBLCLIENTS.CliPrenom"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdNum"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdRef"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdDateServ"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdGaz"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdIdentification"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdMarque"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdPuissance"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdRemarque"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdActif"
End
Begin Joins
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLCLIENTSCHAUDIERES"
    Expression ="TBLCLIENTS.CliNum = TBLCLIENTSCHAUDIERES.CliChdCliNum"
    Flag =1
End
Begin OrderBy
    Expression ="TBLCLIENTS.CliCode"
    Flag =0
    Expression ="TBLCLIENTSCHAUDIERES.CliChdActif"
    Flag =0
    Expression ="TBLCLIENTSCHAUDIERES.CliChdDateServ"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Selection Des Clients Et Chaudieres\015\012Utiliser Par :\015\012- FrmLstChaudie"
    "res"
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
        dbText "Name" ="TBLCLIENTS.CliNom"
        dbMemo "Caption" ="Nom"
        dbText "Description" ="Nom"
        dbInteger "ColumnWidth" ="2010"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliPrenom"
        dbMemo "Caption" ="Prenom"
        dbText "Description" ="Prenom"
        dbInteger "ColumnWidth" ="720"
        dbBoolean "ColumnHidden" ="0"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdRef"
        dbMemo "Caption" ="Ref"
        dbText "Description" ="Ref"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdDateServ"
        dbMemo "Caption" ="Date Serv"
        dbText "Description" ="Date Serv"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdGaz"
        dbMemo "Caption" ="Gaz"
        dbText "Description" ="Gaz"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdPuissance"
        dbMemo "Caption" ="Puissance"
        dbText "Description" ="Puissance"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdRemarque"
        dbMemo "Caption" ="Remarque"
        dbText "Description" ="Remarque"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdActif"
        dbMemo "Caption" ="Actif"
        dbText "Description" ="Actif"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdNum"
        dbText "Description" ="Chaudiere Num"
        dbMemo "Caption" ="Chaudiere Num"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdIdentification"
        dbText "Description" ="Identification"
        dbMemo "Caption" ="Identification"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCHAUDIERES.CliChdMarque"
        dbText "Description" ="Marque"
        dbMemo "Caption" ="Marque"
    End
End
Begin
    State =0
    Left =47
    Top =69
    Right =1002
    Bottom =582
    Left =-1
    Top =-1
    Right =948
    Bottom =337
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =270
        Top =0
        Name ="TBLCLIENTS"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =180
        Top =1
        Name ="TBLCLIENTSCHAUDIERES"
        Name =""
    End
End
