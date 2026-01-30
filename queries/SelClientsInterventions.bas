Operation =1
Option =0
Begin InputTables
    Name ="TBLCLIENTS"
    Name ="TBLCLIENTSCHAUDIERES"
    Name ="TBLCHAUDIERESINTERVENTIONS"
End
Begin OutputColumns
    Expression ="TBLCLIENTS.CliNum"
    Expression ="TBLCLIENTS.CliCode"
    Expression ="TBLCLIENTS.CliNom"
    Expression ="TBLCLIENTS.CliPrenom"
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntNum"
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntDate"
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntNumero"
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntType"
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntDescription"
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntNote"
End
Begin Joins
    LeftTable ="TBLCLIENTSCHAUDIERES"
    RightTable ="TBLCHAUDIERESINTERVENTIONS"
    Expression ="TBLCLIENTSCHAUDIERES.CliChdNum = TBLCHAUDIERESINTERVENTIONS.ChdIntCliChdNum"
    Flag =1
    LeftTable ="TBLCLIENTS"
    RightTable ="TBLCLIENTSCHAUDIERES"
    Expression ="TBLCLIENTS.CliNum = TBLCLIENTSCHAUDIERES.CliChdCliNum"
    Flag =1
End
Begin OrderBy
    Expression ="TBLCLIENTS.CliCode"
    Flag =0
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntDate"
    Flag =1
    Expression ="TBLCHAUDIERESINTERVENTIONS.ChdIntNumero"
    Flag =1
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Selection Des Clients Et Interventions\015\012Utiliser Par :\015\012- FrmLstInte"
    "rventions"
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
    End
    Begin
        dbText "Name" ="TBLCLIENTS.CliPrenom"
        dbMemo "Caption" ="Prenom"
        dbText "Description" ="Prenom"
    End
    Begin
        dbText "Name" ="TBLCHAUDIERESINTERVENTIONS.ChdIntDate"
        dbMemo "Caption" ="Date"
        dbText "Description" ="Date"
    End
    Begin
        dbText "Name" ="TBLCHAUDIERESINTERVENTIONS.ChdIntType"
        dbMemo "Caption" ="Type"
        dbText "Description" ="Type"
    End
    Begin
        dbText "Name" ="TBLCHAUDIERESINTERVENTIONS.ChdIntDescription"
        dbMemo "Caption" ="Description"
        dbText "Description" ="Description"
    End
    Begin
        dbText "Name" ="TBLCHAUDIERESINTERVENTIONS.ChdIntNote"
        dbMemo "Caption" ="Note"
        dbText "Description" ="Note"
    End
    Begin
        dbText "Name" ="TBLCHAUDIERESINTERVENTIONS.ChdIntNum"
        dbText "Description" ="Intervention Num"
        dbMemo "Caption" ="Intervention Num"
    End
    Begin
        dbText "Name" ="TBLCHAUDIERESINTERVENTIONS.ChdIntNumero"
        dbText "Description" ="Numero"
        dbMemo "Caption" ="Numero"
    End
End
Begin
    State =0
    Left =-138
    Top =88
    Right =1026
    Bottom =712
    Left =-1
    Top =-1
    Right =1153
    Bottom =341
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =4
        Name ="TBLCLIENTS"
        Name =""
    End
    Begin
        Left =172
        Top =6
        Right =268
        Bottom =113
        Top =0
        Name ="TBLCLIENTSCHAUDIERES"
        Name =""
    End
    Begin
        Left =306
        Top =6
        Right =402
        Bottom =113
        Top =0
        Name ="TBLCHAUDIERESINTERVENTIONS"
        Name =""
    End
End
