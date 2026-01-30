Operation =1
Option =0
Where ="(((TBLCLIENTSCHAUDIERES.CliChdActif)=True))"
Begin InputTables
    Name ="TBLCLIENTSCHAUDIERES"
End
Begin OutputColumns
    Expression ="TBLCLIENTSCHAUDIERES.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Selection Des Clients Et Chaudieres Actif"
Begin
End
Begin
    State =0
    Left =62
    Top =84
    Right =1258
    Bottom =389
    Left =-1
    Top =-1
    Right =1189
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =6
        Name ="TBLCLIENTSCHAUDIERES"
        Name =""
    End
End
