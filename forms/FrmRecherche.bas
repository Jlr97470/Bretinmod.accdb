Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    DividingLines = NotDefault
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =2
    PictureSizeMode =1
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridY =10
    Width =6810
    DatasheetFontHeight =10
    ItemSuffix =36
    Left =12675
    Top =4440
    Right =19485
    Bottom =8400
    Toolbar ="Outil Bretin Clients"
    RecSrcDt = Begin
        0xd69f88b6399fe140
    End
    Caption ="BC - Recheche Simple - DeltaInformatique 2003"
    OnOpen ="[Event Procedure]"
    MenuBar ="Menu Bretin Clients"
    DatasheetFontName ="Arial"
    OnActivate ="[Event Procedure]"
    FilterOnLoad =0
    AllowLayoutView =0
    PictureSizeMode =1
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            BackStyle =0
        End
        Begin CommandButton
            Width =1701
            Height =283
            FontSize =8
            FontWeight =400
            FontName ="MS Sans Serif"
            BorderLineStyle =0
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
        Begin TextBox
            SpecialEffect =2
            OldBorderStyle =0
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
        End
        Begin Subform
            SpecialEffect =2
            BorderLineStyle =0
            Width =1701
            Height =1701
        End
        Begin CustomControl
            SpecialEffect =2
            Width =4536
            Height =2835
        End
        Begin Tab
            Width =5103
            Height =3402
            BorderLineStyle =0
        End
        Begin Page
            Width =1701
            Height =1701
        End
        Begin Section
            CanGrow = NotDefault
            SpecialEffect =1
            Height =3968
            BackColor =8445670
            Name ="Détail"
            OnClick ="[Event Procedure]"
            Begin
                Begin CommandButton
                    Cancel = NotDefault
                    OverlapFlags =85
                    Left =6147
                    Top =3344
                    Width =606
                    Height =576
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    ForeColor =-2147483630
                    Name ="CmdFermer"
                    Caption ="Fermer"
                    StatusBarText ="Fermer"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff00dadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadaddadadadadadadadaadad00adad00adaddadad00ad00adada ,
                        0xadadad0000adadaddadadad00adadadaadadad0000adadaddadad00ad00adada ,
                        0xadad00adad00adaddadadadadadadadaadadadadadadadaddadadadadadadada ,
                        0xadadadadadadadad000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000000000000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Fermer"

                End
                Begin CommandButton
                    Default = NotDefault
                    Enabled = NotDefault
                    OverlapFlags =85
                    Left =5442
                    Top =3344
                    Width =636
                    Height =576
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
                    ForeColor =-2147483630
                    Name ="CmdValider"
                    Caption ="OK"
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
                        0x07070707070707071e384f8b46d026034720509a7476271eff36e0839a520e0f
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End

                End
                Begin OptionGroup
                    SpecialEffect =4
                    BorderWidth =3
                    OverlapFlags =85
                    Left =3255
                    Top =705
                    Width =3390
                    Height =2580
                    TabIndex =1
                    Name ="CadTypeRecherche"
                    StatusBarText ="Type Recherche"
                    DefaultValue ="1"
                    ControlTipText ="Type Recherche"

                    Begin
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =945
                            Width =165
                            Height =165
                            OptionValue =1
                            Name ="CbxTypeRecherche1"
                            StatusBarText ="Recherche Alpha-Numerique"
                            ControlTipText ="Recherche Alpha-Numerique"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3590
                                    Top =915
                                    Width =2925
                                    Height =240
                                    Name ="EtiTypeRecherche1"
                                    Caption ="Recherche Alpha-Numerique"
                                End
                            End
                        End
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =1260
                            Width =165
                            Height =165
                            OptionValue =2
                            Name ="CbxTypeRecherche2"
                            StatusBarText ="Recherche Numerique"
                            ControlTipText ="Recherche Numerique"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3590
                                    Top =1230
                                    Width =2925
                                    Height =240
                                    Name ="EtiTypeRecherche2"
                                    Caption ="Recherche Numerique"
                                End
                            End
                        End
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =1590
                            Width =165
                            Height =165
                            OptionValue =3
                            Name ="CbxTypeRecherche3"
                            StatusBarText ="Recherche Telephone"
                            ControlTipText ="Recherche Telephone"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3590
                                    Top =1560
                                    Width =2925
                                    Height =240
                                    Name ="EtiTypeRecherche3"
                                    Caption ="Recherche Date"
                                End
                            End
                        End
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =1920
                            Width =165
                            Height =165
                            OptionValue =4
                            Name ="CbxTypeRecherche4"
                            StatusBarText ="Recherche Code Postal"
                            ControlTipText ="Recherche Code Postal"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3590
                                    Top =1890
                                    Width =2925
                                    Height =240
                                    Name ="EtiTypeRecherche4"
                                    Caption ="Recherche Code"
                                End
                            End
                        End
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =2250
                            Width =165
                            Height =165
                            OptionValue =5
                            Name ="CbxTypeRecherche5"
                            StatusBarText ="Recherche Code Postal"
                            ControlTipText ="Recherche Code Postal"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3587
                                    Top =2220
                                    Width =2940
                                    Height =240
                                    Name ="EtiTypeRecherche5"
                                    Caption ="Recherche Nom"
                                End
                            End
                        End
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =2595
                            Width =165
                            Height =165
                            OptionValue =6
                            Name ="CbxTypeRecherche6"
                            StatusBarText ="Recherche Code Postal"
                            ControlTipText ="Recherche Code Postal"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3587
                                    Top =2565
                                    Width =2940
                                    Height =240
                                    Name ="EtiTypeRecherche6"
                                    Caption ="Recherche Prenom"
                                End
                            End
                        End
                        Begin CheckBox
                            OverlapFlags =87
                            Left =3360
                            Top =2955
                            Width =165
                            Height =165
                            OptionValue =7
                            Name ="CbxTypeRecherche7"
                            StatusBarText ="Recherche Code Postal"
                            ControlTipText ="Recherche Code Postal"

                            Begin
                                Begin Label
                                    OverlapFlags =87
                                    Left =3587
                                    Top =2925
                                    Width =2940
                                    Height =240
                                    Name ="EtiTypeRecherche7"
                                    Caption ="Recherche Telephone"
                                End
                            End
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =85
                    Left =105
                    Top =1155
                    Width =3060
                    Height =255
                    Name ="TxtValeurRecherche"
                    StatusBarText ="Valeur Recherche"
                    OnChange ="[Event Procedure]"
                    ControlTipText ="Valeur Recherche"

                    Begin
                        Begin Label
                            OverlapFlags =85
                            Left =90
                            Top =825
                            Width =3045
                            Height =240
                            Name ="EtiValeurRecherche"
                            Caption ="Valeur Recherchée :"
                            ControlTipText ="Valeur Recherche"
                        End
                    End
                End
                Begin Tab
                    OverlapFlags =85
                    Top =56
                    Width =6810
                    Height =544
                    TabIndex =4
                    Name ="TbsRecherche"
                    OnChange ="[Event Procedure]"

                    LayoutCachedTop =56
                    LayoutCachedWidth =6810
                    LayoutCachedHeight =600
                    Begin
                        Begin Page
                            OverlapFlags =85
                            Left =135
                            Top =465
                            Width =6540
                            Height =0
                            Name ="Clients"
                            LayoutCachedLeft =135
                            LayoutCachedTop =465
                            LayoutCachedWidth =6675
                            LayoutCachedHeight =465
                        End
                        Begin Page
                            OverlapFlags =85
                            Left =135
                            Top =465
                            Width =6540
                            Height =0
                            Name ="Chaudiéres"
                            LayoutCachedLeft =135
                            LayoutCachedTop =465
                            LayoutCachedWidth =6675
                            LayoutCachedHeight =465
                        End
                        Begin Page
                            OverlapFlags =85
                            Left =135
                            Top =465
                            Width =6540
                            Height =0
                            Name ="Interventions"
                            LayoutCachedLeft =135
                            LayoutCachedTop =465
                            LayoutCachedWidth =6675
                            LayoutCachedHeight =465
                        End
                        Begin Page
                            OverlapFlags =85
                            Left =135
                            Top =465
                            Width =6540
                            Height =0
                            Name ="Contrats"
                            LayoutCachedLeft =135
                            LayoutCachedTop =465
                            LayoutCachedWidth =6675
                            LayoutCachedHeight =465
                        End
                    End
                End
            End
        End
    End
End
CodeBehindForm
' See "FrmRecherche.cls"
