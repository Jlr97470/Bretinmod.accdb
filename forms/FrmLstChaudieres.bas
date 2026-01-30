Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    CloseButton = NotDefault
    PictureTiling = NotDefault
    DividingLines = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =1
    PictureAlignment =5
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridY =10
    Width =10911
    ItemSuffix =45
    Left =990
    Top =1305
    Right =11895
    Bottom =6765
    PaintPalette = Begin
        0x000301000000000000000000
    End
    Toolbar ="Outil Bretin Clients"
    RecSrcDt = Begin
        0x9eef80f83664e240
    End
    Caption ="BC - Selection Chaudieres - Deltainformatique 2003"
    OnOpen ="[Event Procedure]"
    MenuBar ="Menu Bretin Clients"
    DatasheetFontName ="Arial"
    OnActivate ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
    AllowLayoutView =0
    DatasheetGridlinesColor12 =12632256
    Begin
        Begin Label
            SpecialEffect =1
            FontWeight =700
            BackColor =12632256
            ForeColor =128
            FontName ="Arial"
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
            SpecialEffect =3
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
            ForeColor =128
            FontName ="Arial"
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
            BorderWidth =3
            BorderLineStyle =0
            LabelX =230
            LabelY =-30
        End
        Begin OptionGroup
            SpecialEffect =3
            BackStyle =1
            BorderLineStyle =0
            Width =1701
            Height =1701
            BackColor =12632256
        End
        Begin BoundObjectFrame
            SpecialEffect =3
            BorderLineStyle =0
            Width =4536
            Height =2835
            LabelX =-1701
            BorderColor =12632256
            BackColor =12632256
        End
        Begin TextBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ListBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1417
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin ComboBox
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            LabelX =-1701
            BackColor =12632256
            BorderColor =12632256
            FontName ="Arial"
        End
        Begin Subform
            SpecialEffect =3
            BorderLineStyle =0
            Width =1701
            Height =1701
            BorderColor =12632256
        End
        Begin UnboundObjectFrame
            SpecialEffect =3
            BackStyle =0
            Width =4536
            Height =2835
        End
        Begin ToggleButton
            Width =283
            Height =283
            FontSize =8
            ForeColor =128
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin Tab
            BackStyle =0
            Width =5103
            Height =3402
            FontWeight =700
            FontName ="Arial"
            BorderLineStyle =0
        End
        Begin FormHeader
            Height =0
            BackColor =12632256
            Name ="EntêteFormulaire"
        End
        Begin Section
            Height =4800
            BackColor =8445670
            Name ="Détail"
            Begin
                Begin ListBox
                    ColumnHeads = NotDefault
                    OverlapFlags =87
                    MultiSelect =2
                    ColumnCount =13
                    Width =10911
                    Height =4536
                    BoundColumn =-1
                    Name ="LstLstChaudieres"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="567;711;1134;1134;0;1425;993;567;852;860;567;860;860"
                    StatusBarText ="Liste Des Clients"
                    OnDblClick ="[Event Procedure]"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    SpecialEffect =0
                    OldBorderStyle =0
                    OverlapFlags =93
                    BackStyle =0
                    IMESentenceMode =3
                    Top =4530
                    Width =10896
                    TabIndex =1
                    Name ="TxtLstChaudieresCount"
                    ControlSource ="=LstLstChaudieres.ItemsSelected.Count & \" /\" & (LstLstChaudieres.ListCount-1) "
                        "& \" Chaudieres  sélectionnées.\""

                End
            End
        End
        Begin FormFooter
            Height =675
            BackColor =8445670
            Name ="PiedFormulaire"
            Begin
                Begin CommandButton
                    OverlapFlags =85
                    Left =9600
                    Top =75
                    Width =576
                    Height =576
                    Name ="CmdValider"
                    Caption ="Valider"
                    StatusBarText ="Valider"
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
                    ControlTipText ="Valider"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =10260
                    Top =75
                    Width =576
                    Height =561
                    TabIndex =1
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
                    OverlapFlags =85
                    Left =1440
                    Top =60
                    Width =576
                    Height =576
                    FontWeight =400
                    TabIndex =2
                    ForeColor =-2147483630
                    Name ="CmdExporteExcel"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000010000000100000000100040000000000800000000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff00c0c0c00000ffff00ff000000c0c0c000 ,
                        0xffff0000ffffff002727272727272727727272727272727227ffffffffffff27 ,
                        0x72fffffff727277227f2727272f2722772f727272f272f7227f27272f2727f27 ,
                        0x72ff272f27272f7227fff2f2727fff2772ff2f272727ff7227f2f27272727f27 ,
                        0x72f72727f7272f7227f2727fff727f2772ffffffffffff722727272727272727 ,
                        0x7272727272727272
                    End
                    FontName ="MS Sans Serif"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Exécuter Excel"

                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =2
                    Left =56
                    Top =56
                    Width =577
                    Height =577
                    FontSize =10
                    TabIndex =3
                    ForeColor =0
                    Name ="CmdRechercher"
                    Caption ="Nouvelle Recherche"
                    StatusBarText ="Nouvelle recherche"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000020000000200000000100200000000000001000000000000000000000 ,
                        0x0000000000000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d4000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000777777007777770077777700c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0x000000000000000000000000ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc99990000000000000000000000000077777700 ,
                        0x7777770077777700c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d4000000000000000000 ,
                        0xffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc999900cc999900cc999900cc99990000000000 ,
                        0x00000000777777007777770077777700c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d40000000000cc999900cc999900 ,
                        0xffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc99990000000000777777007777770077777700c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d40000000000cc999900cc999900cc999900 ,
                        0xffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc999900cc99990000000000777777007777770077777700c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d40000000000cc999900cc999900cc999900cc999900 ,
                        0xffcccc00ffcccc00ffcccc000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000cc999900cc999900cc999900cc999900 ,
                        0xcc999900cc999900cc99990000000000777777007777770077777700c8d0d400 ,
                        0xc8d0d400c8d0d40000000000cc999900cc999900cc999900cc999900cc999900 ,
                        0x000000000000000000000000ffffff00ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff00ffffff00000000000000000000000000cc999900 ,
                        0xcc999900cc999900cc999900cc999900000000007777770077777700c8d0d400 ,
                        0xc8d0d400c8d0d40000000000cc999900cc999900cc9999000000000000000000 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff0000000000 ,
                        0x00000000cc999900cc999900cc99990000000000777777007777770077777700 ,
                        0xc8d0d400c8d0d40000000000cc999900cc99990000000000ffffff00ffffff00 ,
                        0xffffff00ffffff00000000000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff0000000000cc999900cc99990000000000777777007777770077777700 ,
                        0xc8d0d400c8d0d40000000000cc99990000000000ffffff00ffffff00ffffff00 ,
                        0x0000000000000000ff999900ff999900ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900000000000000000000000000ffffff00 ,
                        0xffffff00ffffff0000000000cc99990000000000777777007777770077777700 ,
                        0x77777700c8d0d4000000000000000000ffffff00ffffff00ffffff0000000000 ,
                        0xff999900ff999900ff999900ff999900ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ff999900ff999900ff99990000000000 ,
                        0xffffff00ffffff00ffffff000000000000000000777777007777770077777700 ,
                        0x77777700c8d0d40000000000ffffff00ffffff00ffffff000000000099666600 ,
                        0xff999900ff999900ff999900ff999900ff999900ff999900ff999900ff999900 ,
                        0xff999900ffffff00ffffff00ffffff00ff999900ff999900ff999900ff999900 ,
                        0x00000000ffffff00ffffff00ffffff0000000000777777007777770077777700 ,
                        0x77777700c8d0d40000000000ffffff00ffffff0000000000cc999900ff999900 ,
                        0x99666600ff999900ff999900ff999900ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ffffff00ff999900ff99990099666600 ,
                        0xff99990000000000ffffff00ffffff0000000000777777007777770077777700 ,
                        0xc8d0d400c8d0d40000000000ffffff00ffffff0000000000cc999900cc999900 ,
                        0xff9999009966660099666600ffcccc00ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ffffff009966660099666600ff999900 ,
                        0xcc99990000000000ffffff00ffffff0000000000777777007777770077777700 ,
                        0xc8d0d400c8d0d40000000000ffffff00ffffff0000000000cc999900cc999900 ,
                        0xcc999900ff999900ffcccc00ffffff00ffcccc00996666009966660099666600 ,
                        0x9966660099666600996666009966660099666600ff999900cc999900cc999900 ,
                        0xcc99990000000000ffffff00ffffff00000000007777770077777700c8d0d400 ,
                        0xc8d0d400c8d0d40000000000ffffff00ffffff00ffffff0000000000cc999900 ,
                        0xcc999900cc999900cc999900ffcccc00ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ff999900cc999900a4a0a000ff999900 ,
                        0x00000000ffffff00ffffff00ffffff000000000077777700c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d40000000000ffffff00ffffff00ffffff0000000000 ,
                        0xcc999900cc999900cc999900cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc999900cc999900cc999900cc999900cc999900cc999900cc99990000000000 ,
                        0xffffff00ffffff00ffffff0000000000c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d40000000000ffffff00ffffff00ffffff00 ,
                        0x000000000000000000000000cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc999900cc999900cc999900cc999900cc9999000000000000000000ffffff00 ,
                        0xffffff00ffffff0000000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d40000000000ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000ffffff00ffffff00ffffff00 ,
                        0xffffff00000000007777770077777700c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d4000000000000000000 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff0000000000 ,
                        0x0000000099999900000000007777770077777700c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0x000000000000000000000000ffffff00ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff000000000000000000c0c0c000 ,
                        0xc0c0c000c0c0c00099999900000000007777770077777700c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d4000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000c0c0c000ffffff00ffffff00 ,
                        0xc0c0c000c0c0c000c0c0c00000000000000000007777770077777700c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d40000000000c0c0c000ffffff00 ,
                        0xffffff00c0c0c000000000000000000000000000000000007777770077777700 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d4000000000000000000 ,
                        0x0000000000000000111111000000000000000000000000000000000077777700 ,
                        0x77777700c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d40000000000 ,
                        0x2222220077777700222222001111110000000000000000000000000000000000 ,
                        0x7777770077777700c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0x0000000022222200777777002222220011111100000000000000000000000000 ,
                        0x0000000077777700c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d40000000000222222007777770022222200111111000000000000000000 ,
                        0x0000000000000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400000000002222220077777700222222001111110000000000 ,
                        0x0000000000000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d4000000000022222200777777002222220011111100 ,
                        0x0000000000000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d40000000000222222007777770022222200 ,
                        0x1111110000000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400000000000000000000000000 ,
                        0x00000000c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400c8d0d400 ,
                        0xc8d0d400c8d0d400
                    End
                    FontName ="System"
                    ControlTipText ="Nouvelle recherche"
                    Picture ="RECHERCHER.ICO"

                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =2
                    Left =765
                    Top =60
                    Width =561
                    Height =576
                    FontSize =10
                    TabIndex =4
                    ForeColor =0
                    Name ="CmdRechercherMulti"
                    Caption ="Nouvelle Recherche"
                    StatusBarText ="Nouvelle recherche"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000020000000200000000100200000000000001000000000000000000000 ,
                        0x0000000000000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be000000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000777777007777770077777700ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0x000000000000000000000000ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc99990000000000000000000000000077777700 ,
                        0x7777770077777700ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be000000000000000000 ,
                        0xffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc999900cc999900cc999900cc99990000000000 ,
                        0x00000000777777007777770077777700ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be0000000000cc999900cc999900 ,
                        0xffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffcccc00ffffff00 ,
                        0xcc999900ffffff00cc999900cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc99990000000000777777007777770077777700ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ff66000099000000cc999900cc999900cc999900 ,
                        0x99000000ff660000ffcccc00ffcccc00ff660000ff660000ff660000ff660000 ,
                        0xcc999900ffffff00ff660000ff660000ff660000ff660000cc999900cc999900 ,
                        0xcc999900ff660000990000007777770077777700ff660000ff660000ff660000 ,
                        0xddd7be00ddd7be00ddd7be00ff66000099000000cc99990099000000cc999900 ,
                        0x99000000ff660000ffcccc00ff66000099000000990000009900000099000000 ,
                        0xff66000000000000ff660000990000009900000099000000cc999900cc999900 ,
                        0xcc999900ff66000099000000000000007777770099000000ff66000099000000 ,
                        0xddd7be00ddd7be0000000000ff6600009900000099000000ff66000099000000 ,
                        0x99000000ff66000000000000ff66000099000000ffffff00ffffff0099000000 ,
                        0xff660000ffffff00ff66000099000000000000000000000000000000cc999900 ,
                        0xcc999900ff66000099000000cc9999000000000099000000ff66000099000000 ,
                        0xddd7be00ddd7be0000000000ff6600009900000099000000ff66000099000000 ,
                        0x99000000ff660000ffffff00ff66000099000000ffffff00ffffff0099000000 ,
                        0xff660000ffffff00ff66000099000000ffffff00ffffff00ffffff0000000000 ,
                        0x00000000ff66000099000000cc9999000000000099000000ff66000099000000 ,
                        0xddd7be00ddd7be0000000000ff66000099000000ff660000ffffff00ff660000 ,
                        0x99000000ff66000000000000ff66000099000000000000000000000099000000 ,
                        0xff66000000000000ff66000099000000ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ff66000099000000cc9999000000000099000000ff66000099000000 ,
                        0xddd7be00ddd7be0000000000ff66000099000000ff660000ffffff00ff660000 ,
                        0x99000000ff660000ff999900ff66000099000000ff999900ff99990099000000 ,
                        0xff660000ff999900ff66000099000000000000000000000000000000ffffff00 ,
                        0xffffff00ff66000099000000cc9999000000000099000000ff66000099000000 ,
                        0x77777700ddd7be0000000000ff660000ff660000ffffff00ffffff0000000000 ,
                        0xff660000ff660000ff999900ff66000099000000ff999900ff99990099000000 ,
                        0xff660000ff999900ff66000099000000ff999900ff999900ff99990099000000 ,
                        0x99000000ff66000099000000990000000000000099000000ff66000099000000 ,
                        0x77777700ddd7be0000000000ff660000ff660000ffffff000000000099666600 ,
                        0xff660000ff660000ff999900ff66000099000000ff999900ff99990099000000 ,
                        0xff660000ffffff00ff66000099000000ff999900ff999900ff999900ff660000 ,
                        0xff660000ff660000ff660000ff66000000000000ff660000ff660000ff660000 ,
                        0x77777700ddd7be0000000000ffffff00ffffff0000000000cc999900ff999900 ,
                        0x99666600ff999900ff999900ff999900ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ffffff00ff999900ff99990099666600 ,
                        0xff99990000000000ffffff00ffffff0000000000777777007777770077777700 ,
                        0xddd7be00ddd7be0000000000ffffff00ffffff0000000000cc999900cc999900 ,
                        0xff9999009966660099666600ffcccc00ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ffffff009966660099666600ff999900 ,
                        0xcc99990000000000ffffff00ffffff0000000000777777007777770077777700 ,
                        0xddd7be00ddd7be0000000000ffffff00ffffff0000000000cc999900cc999900 ,
                        0xcc999900ff999900ffcccc00ffffff00ffcccc00996666009966660099666600 ,
                        0x9966660099666600996666009966660099666600ff999900cc999900cc999900 ,
                        0xcc99990000000000ffffff00ffffff00000000007777770077777700ddd7be00 ,
                        0xddd7be00ddd7be0000000000ffffff00ffffff00ffffff0000000000cc999900 ,
                        0xcc999900cc999900cc999900ffcccc00ff999900ff999900ff999900ff999900 ,
                        0xff999900ff999900ff999900ff999900ff999900cc999900a4a0a000ff999900 ,
                        0x00000000ffffff00ffffff00ffffff000000000077777700ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be0000000000ffffff00ffffff00ffffff0000000000 ,
                        0xcc999900cc999900cc999900cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc999900cc999900cc999900cc999900cc999900cc999900cc99990000000000 ,
                        0xffffff00ffffff00ffffff0000000000ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be0000000000ffffff00ffffff00ffffff00 ,
                        0x000000000000000000000000cc999900cc999900cc999900cc999900cc999900 ,
                        0xcc999900cc999900cc999900cc999900cc9999000000000000000000ffffff00 ,
                        0xffffff00ffffff0000000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be0000000000ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000ffffff00ffffff00ffffff00 ,
                        0xffffff00000000007777770077777700ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be000000000000000000 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff00ffffff00ffffff0000000000 ,
                        0x0000000099999900000000007777770077777700ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0x000000000000000000000000ffffff00ffffff00ffffff00ffffff00ffffff00 ,
                        0xffffff00ffffff00ffffff00ffffff00ffffff000000000000000000c0c0c000 ,
                        0xc0c0c000c0c0c00099999900000000007777770077777700ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be000000000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000000000c0c0c000ffffff00ffffff00 ,
                        0xc0c0c000c0c0c000c0c0c00000000000000000007777770077777700ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be0000000000c0c0c000ffffff00 ,
                        0xffffff00c0c0c000000000000000000000000000000000007777770077777700 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be000000000000000000 ,
                        0x0000000000000000111111000000000000000000000000000000000077777700 ,
                        0x77777700ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be0000000000 ,
                        0x2222220077777700222222001111110000000000000000000000000000000000 ,
                        0x7777770077777700ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0x0000000022222200777777002222220011111100000000000000000000000000 ,
                        0x0000000077777700ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be0000000000222222007777770022222200111111000000000000000000 ,
                        0x0000000000000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00000000002222220077777700222222001111110000000000 ,
                        0x0000000000000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be000000000022222200777777002222220011111100 ,
                        0x0000000000000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be0000000000222222007777770022222200 ,
                        0x1111110000000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00000000000000000000000000 ,
                        0x00000000ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00ddd7be00 ,
                        0xddd7be00ddd7be00
                    End
                    FontName ="System"
                    ControlTipText ="Nouvelle recherche"
                    Picture ="RECHERCHERMULTI.ICO"

                End
                Begin CommandButton
                    OverlapFlags =85
                    Left =8520
                    Top =60
                    Width =576
                    Height =576
                    TabIndex =5
                    Name ="CmdSelectionnerTous"
                    Caption ="ALL"
                    StatusBarText ="Selectionner Tous"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Selectionner Tous"

                End
            End
        End
    End
End
CodeBehindForm
' See "FrmLstChaudieres.cls"
