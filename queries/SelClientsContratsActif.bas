Operation =1
Option =0
Where ="(((TBLCLIENTSCONTRATS.CliConActif)=True))"
Begin InputTables
    Name ="TBLCLIENTSCONTRATS"
End
Begin OutputColumns
    Expression ="TBLCLIENTSCONTRATS.*"
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
dbText "Description" ="Selection Des Clients Et Contrats Actif"
dbBoolean "FilterOnLoad" ="0"
dbBoolean "OrderByOnLoad" ="-1"
dbBoolean "TotalsRow" ="0"
Begin
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConCliNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConNum"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDatePaiment"
        dbInteger "ColumnWidth" ="3195"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDateFin"
        dbInteger "ColumnWidth" ="2700"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConDateDebut"
        dbInteger "ColumnWidth" ="2985"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConCoefficient"
        dbInteger "ColumnWidth" ="2970"
        dbBoolean "ColumnHidden" ="0"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConType"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConPrixHT"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConTVA"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConPrix"
        dbLong "AggregateType" ="-1"
    End
    Begin
        dbText "Name" ="TBLCLIENTSCONTRATS.CliConActif"
        dbLong "AggregateType" ="-1"
    End
End
Begin
    State =0
    Left =62
    Top =84
    Right =1258
    Bottom =389
    Left =-1
    Top =-1
    Right =1172
    Bottom =127
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =134
        Bottom =113
        Top =0
        Name ="TBLCLIENTSCONTRATS"
        Name =""
    End
End
