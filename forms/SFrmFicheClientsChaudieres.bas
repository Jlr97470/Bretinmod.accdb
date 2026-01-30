Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    AllowEdits = NotDefault
    AllowDesignChanges = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    TabularFamily =255
    BorderStyle =0
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridY =10
    Width =8520
    DatasheetFontHeight =10
    ItemSuffix =20
    Left =270
    Top =600
    Right =10230
    Bottom =6450
    OnUnload ="[Event Procedure]"
    RecSrcDt = Begin
        0x95ef5422be9ae240
    End
    RecordSource ="SELECT TBLCLIENTSCHAUDIERES.* FROM TBLCLIENTSCHAUDIERES ORDER BY TBLCLIENTSCHAUD"
        "IERES.CliChdActif, TBLCLIENTSCHAUDIERES.CliChdDateServ DESC; "
    OnCurrent ="[Event Procedure]"
    BeforeUpdate ="[Event Procedure]"
    AfterUpdate ="[Event Procedure]"
    OnOpen ="[Event Procedure]"
    DatasheetFontName ="Arial"
    OnActivate ="[Event Procedure]"
    OnLoad ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    ShowPageMargins =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
            BackColor =-2147483633
            ForeColor =-2147483630
        End
        Begin Rectangle
            SpecialEffect =3
            BackStyle =0
            BorderLineStyle =0
            Width =850
            Height =850
        End
        Begin Line
            BorderLineStyle =0
            SpecialEffect =3
            Width =1701
        End
        Begin Image
            BackStyle =0
            OldBorderStyle =0
            BorderLineStyle =0
            PictureAlignment =2
            Width =1701
            Height =1701
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin OptionButton
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin CheckBox
            SpecialEffect =2
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin BoundObjectFrame
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            BackStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
        End
        Begin TextBox
            FELineBreak = NotDefault
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
            AsianLineBreak =255
        End
        Begin ListBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin ComboBox
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =-2147483643
            ForeColor =-2147483640
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin UnboundObjectFrame
            SpecialEffect =2
            OldBorderStyle =1
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =0
            BackColor =4227327
            Name ="EntêteFormulaire"
        End
        Begin Section
            CanGrow = NotDefault
            Height =4020
            BackColor =7194357
            Name ="Détail"
            Begin
                Begin TextBox
                    OverlapFlags =95
                    Left =113
                    Top =240
                    Width =1545
                    Height =285
                    ColumnWidth =675
                    ForeColor =16711680
                    Name ="TxtCliChdRef"
                    ControlSource ="CliChdRef"
                    StatusBarText ="Clients Chaudieres Reference"
                    ControlTipText ="Chaudieres Reference"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =113
                            Width =1575
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdRef"
                            Caption ="Reference"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =95
                    TextAlign =1
                    Left =3969
                    Top =241
                    Width =2265
                    Height =285
                    ColumnWidth =825
                    TabIndex =2
                    ForeColor =16711680
                    Name ="TxtCliChdDateServ"
                    ControlSource ="CliChdDateServ"
                    Format ="Short Date"
                    StatusBarText ="Clients Chaudieres Date Mise En Servise"
                    InputMask ="00/00/0000;0;_"
                    ControlTipText ="Chaudieres Date Mise En Servise"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =3969
                            Top =1
                            Width =2265
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdDateServ"
                            Caption ="Date Mise En Servise"
                            ControlTipText ="Date Mise En Servise"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =95
                    ListWidth =2268
                    Left =6234
                    Top =241
                    Width =2268
                    Height =285
                    ColumnWidth =2310
                    TabIndex =3
                    ForeColor =16711680
                    Name ="CmbCliChdGaz"
                    ControlSource ="CliChdGaz"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTSCHAUDIERES.CliChdGaz FROM TBLCLIENTSCHAUDIERES ORDER B"
                        "Y TBLCLIENTSCHAUDIERES.CliChdGaz; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Chaudieres Gaz"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Chaudieres Gaz"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =6234
                            Top =1
                            Width =2268
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdGaz"
                            Caption ="Gaz"
                            ControlTipText ="Chaudieres Gaz"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =95
                    ListWidth =2268
                    Left =114
                    Top =766
                    Width =2715
                    Height =285
                    ColumnWidth =2310
                    TabIndex =4
                    ForeColor =16711680
                    Name ="CmbCliChdIdentification"
                    ControlSource ="CliChdIdentification"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTSCHAUDIERES.CliChdIdentification FROM TBLCLIENTSCHAUDIE"
                        "RES ORDER BY TBLCLIENTSCHAUDIERES.CliChdIdentification; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Chaudieres Identification"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Chaudieres Identification"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =114
                            Top =526
                            Width =2715
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdIdentification"
                            Caption ="Identification"
                            ControlTipText ="Chaudieres Type"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =95
                    ListWidth =2268
                    Left =6219
                    Top =766
                    Width =2283
                    Height =285
                    ColumnWidth =2310
                    TabIndex =6
                    ForeColor =16711680
                    Name ="CmbCliChdPuissance"
                    ControlSource ="CliChdPuissance"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTSCHAUDIERES.CliChdPuissance FROM TBLCLIENTSCHAUDIERES O"
                        "RDER BY TBLCLIENTSCHAUDIERES.CliChdPuissance; "
                    ColumnWidths ="2268"
                    StatusBarText ="Chaudieres Puissance"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Chaudieres Puissance"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =6234
                            Top =526
                            Width =2268
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdPuissance"
                            Caption ="Puissance"
                            ControlTipText ="Chaudieres Puissance"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =114
                    Top =1291
                    Width =8388
                    Height =645
                    TabIndex =7
                    ForeColor =16711680
                    Name ="TxtCliChdRemarque"
                    ControlSource ="CliChdRemarque"
                    StatusBarText ="Clients Chaudieres Remarque"
                    ControlTipText ="Chaudieres Remarque"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =114
                            Top =1051
                            Width =8388
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdRemarque"
                            Caption ="Remarque"
                            ControlTipText ="Chaudieres Remarque"
                        End
                    End
                End
                Begin CheckBox
                    OverlapFlags =85
                    Left =2834
                    Top =340
                    Width =165
                    Height =150
                    TabIndex =1
                    Name ="CbxCliChdActif"
                    ControlSource ="CliChdActif"
                    StatusBarText ="Clients Chaudieres Actif"
                    ControlTipText ="Chaudieres Actif"

                    Begin
                        Begin Label
                            OverlapFlags =215
                            TextAlign =2
                            Left =1709
                            Width =2265
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdActif"
                            Caption ="Actif"
                            ControlTipText ="Chaudieres Actif"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =135
                    Top =1980
                    Width =8370
                    Height =1980
                    TabIndex =8
                    Name ="SFrmFicheClientsChaudieresInterventions"
                    SourceObject ="Form.SFrmFicheClientsChaudieresInterventions"
                    LinkChildFields ="ChdIntCliChdNum"
                    LinkMasterFields ="CliChdNum"
                    OnEnter ="[Event Procedure]"

                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =247
                    ListWidth =2268
                    Left =2835
                    Top =772
                    Width =3405
                    Height =285
                    TabIndex =5
                    ForeColor =16711680
                    Name ="CmbCliChdMarque"
                    ControlSource ="CliChdMarque"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTSCHAUDIERES.CliChdMarque FROM TBLCLIENTSCHAUDIERES ORDE"
                        "R BY TBLCLIENTSCHAUDIERES.CliChdMarque; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Chaudieres Identification"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Chaudieres Identification"

                    Begin
                        Begin Label
                            OverlapFlags =223
                            Left =2835
                            Top =532
                            Width =3405
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliChdMarque"
                            Caption ="Marque"
                            ControlTipText ="Chaudieres Type"
                        End
                    End
                End
            End
        End
        Begin FormFooter
            Visible = NotDefault
            Height =396
            BackColor =7194357
            Name ="PiedFormulaire"
            Begin
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =93
                    TextFontFamily =2
                    Left =219
                    Top =6
                    Width =6
                    Height =24
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
                    Name ="CmdAfficherTous"
                    Caption ="Affiche Tous"
                    StatusBarText ="Affiche Tous"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadad000000000 ,
                        0xadadada0fffffff0dadadad0fffffff0adadada0fffffff0dadadad0fffffff0 ,
                        0xadadada0fffffff0dad000d0fffffff0ada060a0fffffff0dad080d000000000 ,
                        0xada080adadadadadda08860adadadadaa0888860adadadad06ff88860adadada ,
                        0x000000000dadadad
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Affiche Tous"

                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =93
                    TextFontFamily =2
                    Left =1
                    Width =1
                    Height =21
                    FontSize =10
                    FontWeight =700
                    Name ="CmdImprimer"
                    PictureData = Begin
                        0x2800000020000000200000000100180000000000000c00000000000000000000 ,
                        0x0000000000000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f ,
                        0x7fbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbf000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000007f7f7f7f7f ,
                        0x7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7fbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbf000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f7f7f0000000000000000 ,
                        0x000000000000000000000000000000000000000000007f7f7f7f7f7f7f7f7fbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbf0000007f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f7f0000007f7f ,
                        0x7f7f7f7fbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf0000007f7f7f7f7f7f7f ,
                        0x7f7fbfbfbfbfbfbfbfbfbf000000ffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffff7f7f7f7f7f7f0000 ,
                        0x007f7f7f7f7f7fbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f7f7f0000007f7f7f7f ,
                        0x7f7f7f7f7fbfbfbf0000007f7f7f0000007f7f7fbfbfbfbfbfbf7f7f7f7f7f7f ,
                        0x7f7f7fbfbfbfbfbfbf7f7f7f7f7f7f7f7f7fbfbfbfbfbfbfffffff7f7f7f7f7f ,
                        0x7f0000000000000000000000000000000000000000000000007f7f7f0000007f ,
                        0x7f7f7f7f7f7f7f7f000000ffffffbfbfbf0000007f7f7fbfbfbfbfbfbf7f7f7f ,
                        0x7f7f7fbfbfbfbfbfbfbfbfbf7f7f7f7f7f7fbfbfbfbfbfbfbfbfbfffffff7f7f ,
                        0x7f0000007f7f7fbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f7f7f0000007f7f7f00 ,
                        0x00007f7f7f7f7f7f000000ffffffbfbfbfbfbfbf000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f7f7f7f7f7f00000000 ,
                        0x0000bfbfbfbfbfbf000000ffffffbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfffffffffffffffffffbfbfbf7f7f7f7f7f7f7f7f7f00 ,
                        0x0000bfbfbfbfbfbf000000ffffffbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbf000000000000000000bfbfbfbfbfbf7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f000000bfbfbf000000ffffffbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfffffffffffffffffffbfbfbf7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f000000bfbfbf000000ffffffbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbf0000ff0000ff000000bfbfbfbfbfbf7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f000000bfbfbf000000ffffffbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f000000bfbfbf000000ffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffff7f7f7f7f7f7f7f7f7f7f ,
                        0x7f7f000000bfbfbfbfbfbf000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfffffff7f7f7f7f7f7f7f ,
                        0x7f7f000000bfbfbfbfbfbfbfbfbf000000bfbfbfbfbfbf7f7f7f000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000bfbfbfbfbfbfffffff7f7f7f7f ,
                        0x7f7f000000bfbfbfbfbfbfbfbfbfbfbfbf000000bfbfbfbfbfbf7f7f7f000000 ,
                        0x000000ffffffffffffffffffffffff0000007f7f7fffffff7f7f7f0000000000 ,
                        0x00ffffffffffffbfbfbf000000000000000000000000bfbfbfbfbfbfffffff7f ,
                        0x7f7f000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbf000000bfbfbfbfbfbf7f7f7f ,
                        0x0000007f7f7fffffffffffffffffff7f7f7f000000ffffff0000000000007f7f ,
                        0x7fffffffffffffffffff0000007f7f7fbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf7f ,
                        0x7f7f000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf000000000000000000 ,
                        0x000000000000ffffffffffffffffffffffff0000007f7f7f000000000000ffff ,
                        0xffffffffffffffffffff7f7f7f00000000000000000000000000000000000000 ,
                        0x0000000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbf0000007f7f7fffffffffffffffffff7f7f7f0000000000007f7f7fffff ,
                        0xffffffffffffffffffffffffff000000bfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbf000000ffffffffffffffffff7f7f7f000000000000ffffffffff ,
                        0xffffffffffffffffffffffffff7f7f7f000000bfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbf0000007f7f7fffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffff000000bfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbf000000bfbfbfffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffbfbfbf000000bfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbf0000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000000000bfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbfbf ,
                        0xbfbfbfbfbfbfbfbf
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    Picture ="PRINT4.ICO"

                    Overlaps =1
                End
                Begin Rectangle
                    SpecialEffect =0
                    OldBorderStyle =0
                    OverlapFlags =223
                    Width =8490
                    Height =375
                    BackColor =255
                    Name ="RecButton"
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =223
                    TextFontFamily =2
                    Left =5115
                    Width =1431
                    Height =396
                    FontSize =10
                    FontWeight =700
                    TabIndex =5
                    Name ="CmdAnnuler"
                    Caption ="Annuler"
                    StatusBarText ="Annuler Les Modifications En Cours"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Annuler Les Modifications En Cours"

                    Overlaps =1
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =223
                    TextFontFamily =2
                    Left =6540
                    Width =1416
                    Height =396
                    FontSize =10
                    FontWeight =700
                    TabIndex =6
                    Name ="CmdValider"
                    Caption ="Valider Les Modifications En Cours"
                    StatusBarText ="Valider Les Modifications En Cours"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000020000000200000000100080000000000000400000000000000000000 ,
                        0x0000000000000000000000000000bf0000bf000000bfbf00bf000000bf00bf00 ,
                        0xbfbf0000c0c0c000c0dcc000f0c8a40000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0xf0fbff00a4a0a000808080000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070700070707070707070707 ,
                        0x0707070707070707070707070707070707070707070000070707070707070707 ,
                        0x0707070707070707070707070707070707070707000000000707070707070707 ,
                        0x0707070707070707070707070707070707070700000000000707070707070707 ,
                        0x0707070707070707070707070707070707070000000000000707070707070707 ,
                        0x0707070707070707070707070707070707000000000000000007070707070707 ,
                        0x0707070707070707070707070707070700000000070700000007070707070707 ,
                        0x0707070707070707070707070707070000000007070700000000070707070707 ,
                        0x0707070707070707070707070707000000000707070707000000070707070707 ,
                        0x0707070707070707070707070700000000070707070707000000000707070707 ,
                        0x0707070707070707070707070700000007070707070707070000000707070707 ,
                        0x0707070707070707070707070707070707070707070707070700000007070707 ,
                        0x0707070707070707070707070707070707070707070707070700000007070707 ,
                        0x0707070707070707070707070707070707070707070707070707000000070707 ,
                        0x0707070707070707070707070707070707070707070707070707070000000707 ,
                        0x0707070707070707070707070707070707070707070707070707070700000707 ,
                        0x0707070707070707070707070707070707070707070707070707070700000007 ,
                        0x0707070707070707070707070707070707070707070707070707070707000007 ,
                        0x0707070707070707070707070707070707070707070707070707070707070000 ,
                        0x0707070707070707070707070707070707070707070707070707070707070700 ,
                        0x0007070707070707070707070707070707070707070707070707070707070707 ,
                        0x0007070707070707070707070707070707070707070707070707070707070707 ,
                        0x0700070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707000707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070007070707070707070707070707070707070707070707070707070707 ,
                        0x0707070700070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707000707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707070707070707070707070707070707070707070707070707 ,
                        0x0707070707070707
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Valider Les Modifications En Cours"

                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =223
                    TextFontFamily =2
                    Left =2280
                    Width =1431
                    Height =396
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    Name ="CmdSupprimer"
                    Caption ="Supprimer"
                    StatusBarText ="Supprimer Enregistrement En Cours"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Supprimer Enregistrement En Cours"

                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =855
                    Width =1431
                    Height =396
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    Name ="CmdModifier"
                    Caption ="Modifier"
                    StatusBarText ="Modifier Enregistrement En Cours"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Modifier Enregistrement En Cours"

                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =3705
                    Width =1416
                    Height =396
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    Name ="CmdAjouter"
                    Caption ="Ajouter"
                    StatusBarText ="Ajouter Un Enregistrement"
                    OnClick ="[Event Procedure]"
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Ajouter Un Enregistrement"

                    Overlaps =1
                End
                Begin CommandButton
                    Visible = NotDefault
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =7935
                    Width =576
                    Height =396
                    FontSize =10
                    FontWeight =700
                    TabIndex =7
                    Name ="CmdFermer"
                    Caption ="Fermer Le Formulaire"
                    StatusBarText ="Fermer Le Formulaire"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddadadadadadadadaadad00adad00adaddadad00ad00adada ,
                        0xadadad0000adadaddadadad00adadadaadadad0000adadaddadad00ad00adada ,
                        0xadad00adad00adaddadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Fermer Le Formulaire"

                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "SFrmFicheClientsChaudieres.cls"
