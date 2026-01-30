Version =20
VersionRequired =20
Begin Form
    RecordSelectors = NotDefault
    MinButton = NotDefault
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
    TabularFamily =119
    BorderStyle =1
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =1
    GridY =10
    Width =15465
    ItemSuffix =94
    Left =1320
    Top =1740
    Right =16785
    Bottom =11235
    OnUnload ="[Event Procedure]"
    Filter ="CliNum=82"
    OnApplyFilter ="[Event Procedure]"
    Toolbar ="Outil Bretin Clients"
    RecSrcDt = Begin
        0x8d0f3d1d367ce240
    End
    RecordSource ="SELECT TBLCLIENTS.* FROM TBLCLIENTS; "
    Caption ="BC - Fiche Clients - DeltaInformatique 2003"
    OnCurrent ="[Event Procedure]"
    BeforeUpdate ="[Event Procedure]"
    AfterUpdate ="[Event Procedure]"
    OnOpen ="[Event Procedure]"
    MenuBar ="Menu Bretin Clients"
    DatasheetFontName ="Arial Black"
    OnActivate ="[Event Procedure]"
    AllowDatasheetView =0
    FilterOnLoad =0
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
        Begin CustomControl
            SpecialEffect =2
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
        Begin Page
            Width =1701
            Height =1701
        End
        Begin FormHeader
            Height =680
            BackColor =8445670
            Name ="EntêteFormulaire"
            Begin
                Begin Image
                    SizeMode =1
                    Width =848
                    Height =680
                    Name ="ImgFicheClients"
                    PictureData = Begin
                        0x280000003b0000003a0000000100180000000000c8280000130b0000130b0000 ,
                        0x0000000000000000ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffbdbdbdb5b5b5ffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff000000ffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffff000000000000000000c6c6c6ffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000 ,
                        0x000000000000efefefffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffff000000ffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffcecece000000000000000000000000000000ffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00 ,
                        0x0000000000000800000000000000000000000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff63636300 ,
                        0x0000ffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffff10101000000000000000000000 ,
                        0x00000000000000004a4a4affffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff6b6b6b000000000000848484ffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffff000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffff00000000006300000000000000000000000000000000000084 ,
                        0x8484a5a5a5ffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffa5a5a50000 ,
                        0x00000000000000000000000000848484ffffffffffffffffffffffffffffffff ,
                        0xffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffff4242420000000000 ,
                        0x2100000000000000000000000000000000000000000000000000000000000000 ,
                        0x0000d6d6d6ffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffff212121000000000000000000000000428cc60000 ,
                        0x00000000f7f7f7ffffffffffffffffffffffffffffffffffff000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffff2121210000000000000000000000000000000000 ,
                        0x000000000000004294d60084a50000310000000000000000000808081818184a ,
                        0x4a4a313131d6d6d6ffffffffffffffffffffffffffffffffffffffffff000000 ,
                        0x000000000000000000000000000000000000428cc6000000181818ffffffffff ,
                        0xffffffffffffffffffffffffff000000ffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffefefef ,
                        0x00000000000000000000000000000000000000000000000000000052d6ff52de ,
                        0xff52d6ff4284b5000000000000000000000000000000000000000000080808e7 ,
                        0xe7e7ffffffffffffffffffc6c6c6101010000000000000000000000000000000 ,
                        0x000000000000000000000000000000000000ffffffffffffffffffffffffffff ,
                        0xff000000ffffffffffffffffffffffffffffffffffffffffffffffffcecece8c ,
                        0x8c8cffffffffffffffffffffffffffffffffffff000000000000000000000000 ,
                        0x00000000000000000000000008210052deff42c6e70008000000000000000000 ,
                        0x00008c8442d6ff52d6ff00849c00000000000000000008080829292900000000 ,
                        0x0000000000000000000000000000000000000000000000000000000000000000 ,
                        0x000000000000ffffffffffffffffffffffffffffff000000ffffffffffffffff ,
                        0xffffffffffffffffffffffffffdedede000000000000000000d6d6d6ffffffff ,
                        0xffffffffffffffff00000000426b000000000000000000000000000000000000 ,
                        0x00420000184a00000000000000000052d6ff52deff52d6ff52deff52d6ff52de ,
                        0xff52d6ff105a940000000000000000000000001000104294d652d6ff00000000 ,
                        0x0000000000000000000000000000000000000042000000000000c6c6c6ffffff ,
                        0xffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffff ,
                        0xff000000000000080000000000000000a5a5a5ffffffffffffffffff00000000 ,
                        0x42630000000000000000000000000000000000000000000000000000004284bd ,
                        0x52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff42c6ef0000 ,
                        0x0042849452d6ff52deff52d6ff52d6ff52deff00000000000000000000000000 ,
                        0x000000000000000042c6e7000000101010ffffffffffffffffffffffff000000 ,
                        0xffffffffffffffffffffffffffffffffffff000000000000000842009cf70084 ,
                        0xc6000000000000000000f7f7f7ffffff00080800008400000000000000000000 ,
                        0x000000000000000000000000000052deff52d6ff52deff52d6ff52deff52d6ff ,
                        0x52deff52d6ff52deff52d6ff52deff52d6ff42cef752d6ff52deff52d6ff52de ,
                        0xff52d6ff52d6ff10521000000000000000000000000000000000000000001010 ,
                        0x0021000000d6d6d6ffffffffffffffffff000000ffffffffffffffffffffffff ,
                        0xffffffc6c6c6000000000000009cf70094f7009cf70094f70000000000000000 ,
                        0x00c6c6c600000800848400000000000000000000000000000000000010849c52 ,
                        0xdeff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff ,
                        0x52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52d6ff52deff5294de0000 ,
                        0x0000000000000000000000000000000000000052d6ff000000000000ffffffff ,
                        0xffffffffff000000ffffffffffffffffffffffffffffff0000000000000084d6 ,
                        0x0094f7009cf70094f7009cf70094f70018c60000000000000000000000000000 ,
                        0x0000000000000000000000000000425252deff52d6ff52deff52d6ff52deff52 ,
                        0xd6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff ,
                        0x52deff52d6ff52deff52d6ff52d6ff52deff0000000000000000000000000000 ,
                        0x00000000000000428c8c100039000000a5a5a5ffffffffffff000000ffffffff ,
                        0xffffffffffffffff7b7b7b0000000000080094f7009cf70094f7009cf70094f7 ,
                        0x008cd60000100000630000100000000000000000000000000000000000000000 ,
                        0x0052deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52 ,
                        0xdeff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52d6ff ,
                        0x52deff52ceef00000000000000000000000000000000000000000000080852de ,
                        0xff000000000000ffffffffffff000000ffffffffffffffffffffffff00000000 ,
                        0x00000094f7009cf70094f7009cf70094f7009cf7000000000000000000000021 ,
                        0x0000088c8c8cffffffffffffffffff00000000000052d6ff52deff52d6ff52de ,
                        0xff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52 ,
                        0xd6ff52deff52d6ff52deff52d6ff52deff52d6ff004284000000000000000000 ,
                        0x000000000000000000000000000000000000008484000000000000dededeffff ,
                        0xff000000ffffffffffffffffff000000000000000042009cf70094f7009cf700 ,
                        0x94f7009cf7000042000000000000000000000000000000000000080808ffffff ,
                        0xffffff00000000000052deff52d6ff52deff52d6ff52deff52d6ff52deff52d6 ,
                        0xff52deff52d6ff52deff52d6ff42c6e70000000000424294ce52deff1084ad00 ,
                        0x42630000000000000000000000005a5a5ad6d6d6000000000000000000000000 ,
                        0x000000000000000000000000000000ffffffffffff000000ffffffffffffa5a5 ,
                        0xa5000000000800009cf70094f7009cf70094f7009cf70094f700000000000000 ,
                        0x0000000000000000000000000000000000636363ffffff00000000000052d6ff ,
                        0x52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52de ,
                        0xff4294de000000000000000000000000000000000000000000000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffe7e7e7c6c6c6000000adadadffffff ,
                        0xffffffffffffffffff000000ffffffffffff0000000000000094e70094f7009c ,
                        0xf70094f7009cf70094f70000420000000000000000008484d68484d600000000 ,
                        0x0000000008000000bdbdbd84848400000000003152d6ff52deff52d6ff52deff ,
                        0x52d6ff52deff52d6ff52deff52c6f752c6e752d6ff52deff52d6ff52d6ff429c ,
                        0xc64284c64284e742c6e7000000000000000000000000424242ffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 ,
                        0xffffff9c9c9c0000000010000094f7009cf70094f7009cf70094f7009cf70000 ,
                        0x000000000000000000008484e7c6c6ff8484e78484f78c8cef000000000000f7 ,
                        0xf7f700000000000052deff52d6ff1084a51084a552deff52d6ff52deff004273 ,
                        0x00000000000000000000424252deff52d6ff52deff52d6ff52deff52d6ff0000 ,
                        0x00000000000000000010000000cececeffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffff000000ffffff0000000000000094e7 ,
                        0x009cf70094f7009cf70094f7009cf7000042000000000000000000c6c6ffc6c6 ,
                        0xffc6c6ffc6c6ffc6c6ffc6c6ff42428400000000000042424200000000000000 ,
                        0x000000000000000000000000420052d6ff000000000000216300000000000000 ,
                        0x4284ce52deff52d6ff52deff52d6ff52deff0000000000008484a54242840000 ,
                        0x00000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffff000000bdbdbd000000000000009cf70094f7009cf70094f7009cf7 ,
                        0x0094e7000000000000000000000000c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6 ,
                        0xffc6c6ff00000000000000000000000000000000000000005200084200000000 ,
                        0x000000000000000000000000000000000000000000520052d6ff52deff52d6ff ,
                        0x52deff52d6ff100029000000000000000000000000000000000000ffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffff00000000000000 ,
                        0x00000094f70094f7009cf70094f7009cf70094f7000000000000000000000000 ,
                        0x8c8cc6c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff8c8ce70000000000080008 ,
                        0x84001000000000000000000000009cf70094f700000000000000000000000000 ,
                        0x000000000000000000000000000000000000108452d6ff52deff000000000000 ,
                        0x0000088484f78484ce000008000000ffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff000000000000000000000084009cf70094f700 ,
                        0x9cf70094f7001084000000101010000000000000c6c6ffc6c6ffc6c6ffc6c6ff ,
                        0xc6c6ffc6c6ffc6c6ff0000000000000094e7009cf70094f7009cf70084d60010 ,
                        0x210094f7009cf70094f7000000000000004a0000080000000000000000100000 ,
                        0x00420000000000000000004284a5000000000000000000000000000000000000 ,
                        0x000000dededeffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xff000000737373000000000000000000008cd60094f7009cf700100000000000 ,
                        0x0000000000000000000042c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff000000 ,
                        0x000000009cf70094f7009cf70094f7009cf70094f7009cf70094f7009cf70000 ,
                        0x0000000000088452deff0000000000000010a5009cf70094f70010a500000800 ,
                        0x00000000000000000000000000008c8cd6000000000000c6c6c6ffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffff000000ffffffffffffa5a5 ,
                        0xa50000000000000000420094f70008a500000000000000000000000000000000 ,
                        0x0000000021c6c6ffc6c6ffc6c6ff8484b50000000000420094f7009cf70094f7 ,
                        0x009cf70094f7009cf70094f7009cf70094f70008210000001084bd52d6ff0000 ,
                        0x00000000009cf70094f7009cf70094f700108400000000000000000000000084 ,
                        0x84cec6c6ff8484a5000000c6c6c6ffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffff000000ffffffffffffffffffffffff2121210000000000 ,
                        0x0000000000000000000008100000000800000000000000000000000000000000 ,
                        0x00000000000000000094e7009cf70094f7009cf70094f7009cf70094f7009cf7 ,
                        0x0094f70084c60000000000000000000000000000000000000000000000000010 ,
                        0xb5009cf7000000000000000000000000000000000000000000000000000000e7 ,
                        0xe7e7ffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 ,
                        0xffffffffffffffffffffffffffffffe7e7e70808080000000000000000000000 ,
                        0x00000000000000f7f7f7a5a5a529292929292929292900000000000000000000 ,
                        0x94f7009cf70094f7009cf70094f7009cf70094f7089cf7000000000000000000 ,
                        0x1010000000290000210000290000000000000000000000000000000000000000 ,
                        0x00000000000000000000000000000000000000ffffff525252636363ffffffff ,
                        0xffffffffffffffffffffffffffffffffff000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff1010100000000000000010b5009cf70094f700 ,
                        0x9cf70094f70884c6000000000000000084ceceffc6c6ffc6c6ffc6c6ffc6c6ff ,
                        0xc6c6ff8484e7000000000000000000000000848484e7e7e70000000000000000 ,
                        0x00000000000000000000000000000000d6d6d6ffffffffffffffffffffffffff ,
                        0xffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffc6c6c6000000000000000000009ce70094f7009cf700000000000008 ,
                        0x0884c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff000000 ,
                        0x000000000000ffffffffffff4242420000000000000000000000000000008484 ,
                        0x84000000080808ffffffffffffffffffffffffffffffffffff000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff4242 ,
                        0x42000000000000000000000021000000000052c6c6ffc6c6ffc6c6ffc6c6ffc6 ,
                        0xc6ffc6c6ffc6c6ffc6c6ffc6c6ff000042000000000000000000000000ffffff ,
                        0xdedede000000000000000000848484000000000000000000101010ffffffffff ,
                        0xffffffffffffffffffffffffff000000ffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffff1010100000000000000000000000 ,
                        0x00000000c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff00004200 ,
                        0x0000000000000000000008000000000000212121ffffff000000000000000000 ,
                        0x000000000000000000181818cececeffffffffffffffffffffffffffffffffff ,
                        0xff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffff0000000000000000100000008484c60000108484a5c6c6ffc6c6ffc6c6 ,
                        0xffc6c6ffc6c6ff8484d68484ad0000000000000000008484a5c6c6ffc6c6ffc6 ,
                        0xc6ff000000000000ffffffadadad000000000000000000000000000000ffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffff000000ffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffff7f7f7000000000000000000 ,
                        0x000000000084c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff0000000000 ,
                        0x00000000000000c6c6ffc6c6ffc6c6ffc6c6ffc6c6ff8484a500000000000052 ,
                        0x52528484848484840000000000000000005a5a5affffffe7e7e7848484000000 ,
                        0x000000ffffffffffff000000ffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffe7e7e7000000000029000000000000000000c6c6f7c6c6ff ,
                        0xc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff000000000000c6c6ffc6c6ffc6c6 ,
                        0xffc6c6ffc6c6ffc6c6ff8484d600000000000000000000000000000000000000 ,
                        0x0000000000000000000000000000000000080808000000c6c6c6ffffff000000 ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffe7e7e700 ,
                        0x000000000042426b000000c6c6ffc6c6ffc6c6ff000000000000000052c6c6ff ,
                        0xc6c6ffc6c6ff8484a5000000c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6 ,
                        0xff8484c6c6c6ff8484f700004200000000000000000000000000000000000000 ,
                        0x0000000000000000000000b5b5b5ffffff000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffff0000000000000000008484c6c6 ,
                        0xc6ff8484d6080808000000000000000000848484c6c6ffc6c6ffc6c6ffc6c6ff ,
                        0xc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6 ,
                        0xff000000000000000000000000000000000000000000000000000000d6d6d6ff ,
                        0xffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffefefef00000000000000000000000000000000000000000000000000 ,
                        0x0000000000c6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff8484d68c8cde ,
                        0xc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ffc6c6ff424210000000c6c6c60000 ,
                        0x00000000000000000000212121ffffffffffffffffffffffff000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffff0000000000000008 ,
                        0x0842c6ef0042420000000042420000000000000000000000008484adc6c6ffc6 ,
                        0xc6ffc6c6ffc6c6ffc6c6ffc6c6ff0000000000008c8cf7c6c6ffc6c6ffc6c6ff ,
                        0xc6c6ffc6c6ffc6c6ff000000000000ffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff000000ffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffff21212100000000004252d6ff52deff52d6ff52deff52d6 ,
                        0xff52deff52d6ff0000000000000000000000000000218c8cf7c6c6ffc6c6ffc6 ,
                        0xc6ff0000000000004a4a84c6c6ff0000000808428c8cf78484e7000000000000 ,
                        0x212121ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffe7e7e7000000 ,
                        0x00000052d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52de ,
                        0xff0000420000000000000000000000080000008484a500000000000000009cc6 ,
                        0xc6ff000000000000000000000000000000000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffff000000ffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffff3131310000004294b552deff52d6ff52deff ,
                        0x52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff4294ce0000 ,
                        0x00000000000000000000000000000000c6c6ffc6c6ff0000000000006b6b6b63 ,
                        0x6363636363ffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffff31313100000052deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff ,
                        0x52deff52d6ff52deff52d6ff52deff52d6ff52deff4294d60000000000000000 ,
                        0x000000008484a58484d6000000848484ffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffff31313100000052d6ff52 ,
                        0xdeff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff ,
                        0x52d6ff52deff52d6ff52deff42c6e70000000000000000000000000000000000 ,
                        0x00f7f7f7ffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffff000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffff08080800000000005252d6ff52deff52d6ff52deff52 ,
                        0xd6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff ,
                        0x52deff52d6ff004242000000000000000000000000000000000000efefefffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff7f7 ,
                        0xf700000000000000000052d6f752deff52d6ff52deff52d6ff52deff52d6ff52 ,
                        0xdeff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff105294 ,
                        0x0000000000000000000000000000000000004a4a4affffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffff7f7f70000000000000000 ,
                        0x0000000010080810004a10424200104210424a52d6ff52deff52d6ff52deff52 ,
                        0xd6ff52deff52d6ff52deff52d6ff52deff52d6ff000000000000000000000000 ,
                        0x005208000000000000ffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff000000ffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffa5a5a54242420000000000000000000000 ,
                        0x0000000000000000000052d6ff52deff52d6ff52deff52d6ff52deff52d6ff52 ,
                        0xdeff52d6ff52deff42c6f7000000000000000000000000000000212121ffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xff000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffff00000000000052de ,
                        0xff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff08 ,
                        0x0010000000ffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffff000000ffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffff10101000000042d6ff52deff52d6ff52deff52d6 ,
                        0xff52deff52d6ff52deff52d6ff52deff52d6ff000010000000ffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffff0000001084ad52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52de ,
                        0xff52d6ff42ceef000000424242ffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffff00000000000052d6ff ,
                        0x52d6ff52deff52d6ff52deff52d6ff52deff52d6ff52deff000042000000b5b5 ,
                        0xb5ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffff000000ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffff101010000000000010108cce52d6ff52deff52d6ff ,
                        0x52deff52d6ff52deff004273000000212121ffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffff424242000000000000000000100042000084104a52004242000000000000 ,
                        0x000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xfffffffffffffffffffffffffffffffffffffffffffffffffff7f7f708080800 ,
                        0x0000000000000000000000000000000000525252ffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff ,
                        0xffffffffffffffffffffffffff000000
                    End
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    Picture ="LOGO.BMP"

                    TabIndex =3
                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =2
                    Left =907
                    Top =56
                    Width =561
                    Height =591
                    FontSize =10
                    FontWeight =700
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
                    Left =14775
                    Top =30
                    Width =621
                    Height =606
                    FontWeight =700
                    TabIndex =2
                    ForeColor =128
                    Name ="CmdMinimize"
                    Caption ="Minimize"
                    StatusBarText ="Minimize"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000020000000200000000100040000000000000200000000000000000000 ,
                        0x1000000000000000000000000000800000800000008080008000000080008000 ,
                        0x80800000c0c0c000808080000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00777777777777777777777777777777777777777777777777 ,
                        0x7777777777777777777777777777777777777777777777777777777777777777 ,
                        0x7777777777777777777777777777778777777777777777777777777777777888 ,
                        0x0777777777777777777777777777888000777777777777777777777777788800 ,
                        0x0707777777777777777777777788800000707777777777777777777778880000 ,
                        0x0007077777777777777777778880000000007077777777777777777888000000 ,
                        0x0000070777777777777777888000000000000070777777777777788800000000 ,
                        0x0000000707777777777788800000000000000000707777777777770000000000 ,
                        0x0000000000077777777777777880000000007077777777777777777778800000 ,
                        0x0000707777777777777777777880000000007077777777777777777778800000 ,
                        0x0000707777777777777777777880000000007077777777777777777778800000 ,
                        0x0000707777777777777777777880000000007077777777777777777778800000 ,
                        0x0000707777777777777777777880000000007077777777777777777778800000 ,
                        0x0000707777777777777777777770000000000077777777777777777777777777 ,
                        0x7777777777777777777777777777777777777777777777777777777777777777 ,
                        0x7777777777777777777777777777777777777777777777777777777777777777 ,
                        0x7777777777777777
                    End
                    FontName ="Arial"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Minimize"

                End
                Begin CommandButton
                    OverlapFlags =85
                    TextFontFamily =2
                    Left =1575
                    Top =60
                    Width =546
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =1
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
            End
        End
        Begin Section
            CanGrow = NotDefault
            Height =8160
            BackColor =8445670
            Name ="Détail"
            Begin
                Begin Rectangle
                    BackStyle =1
                    OverlapFlags =93
                    Left =90
                    Top =60
                    Width =15294
                    Height =736
                    BackColor =7194357
                    Name ="RecClientsIdentifiant"
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =215
                    TextAlign =1
                    Left =204
                    Top =117
                    Height =285
                    ColumnWidth =1701
                    ForeColor =16711680
                    Name ="TxtCliNum"
                    ControlSource ="CliNum"
                    StatusBarText ="Clients Numero"
                    ControlTipText ="Clients Numero"

                End
                Begin TextBox
                    OverlapFlags =215
                    Left =204
                    Top =457
                    Width =1710
                    Height =285
                    ColumnWidth =600
                    TabIndex =3
                    ForeColor =16711680
                    Name ="TxtCliCode"
                    ControlSource ="CliCode"
                    StatusBarText ="Clients Code"
                    AfterUpdate ="[Event Procedure]"
                    ControlTipText ="Clients Code"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =215
                    Left =1961
                    Top =117
                    Width =1545
                    Height =285
                    ColumnWidth =825
                    TabIndex =1
                    ForeColor =16711680
                    Name ="TxtCliDateCre"
                    ControlSource ="CliDateCre"
                    Format ="Short Date"
                    StatusBarText ="Clients Date Creation"
                    InputMask ="00/00/0000;0;_"
                    ControlTipText ="Clients Date Creation"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =215
                    Left =1961
                    Top =457
                    Width =1545
                    Height =285
                    ColumnWidth =825
                    TabIndex =4
                    ForeColor =16711680
                    Name ="TxtCliDateMaj"
                    ControlSource ="CliDateMaj"
                    Format ="Short Date"
                    StatusBarText ="Clients Date Mise A Jour"
                    InputMask ="00/00/0000;0;_"
                    ControlTipText ="Clients Date Mise A Jour"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =215
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3559
                    Top =124
                    Width =11760
                    Height =285
                    TabIndex =2
                    Name ="TxtCliDateCreComplet"
                    ControlSource ="=\"Date De Creation \" & Format([CliDateCre],\"Long Date\")"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =215
                    BackStyle =0
                    IMESentenceMode =3
                    Left =3559
                    Top =454
                    Width =11760
                    Height =285
                    TabIndex =5
                    Name ="TxtCliDateMajComplet"
                    ControlSource ="=\"Date De Modification \" & Format([CliDateMaj],\"Long Date\")"

                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    LimitToList = NotDefault
                    OverlapFlags =87
                    ColumnCount =2
                    ListWidth =4536
                    Left =96
                    Top =1145
                    Width =702
                    Height =285
                    TabIndex =6
                    ForeColor =16711680
                    Name ="CmbCliCivCode"
                    ControlSource ="CliCivCode"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="2268;2268"
                    StatusBarText ="Clients Civilites Code"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    OnNotInList ="[Event Procedure]"
                    ControlTipText ="Clients Civilites Code"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =96
                            Top =877
                            Width =702
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliCivCode"
                            Caption ="Civilitée"
                            FontName ="Arial"
                            ControlTipText ="Clients Civilites Code"
                        End
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =93
                    Left =810
                    Top =1140
                    Width =330
                    Height =315
                    TabIndex =7
                    Name ="CmdAjouterCivilitesUtilisateur"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =215
                    Left =1125
                    Top =1140
                    Width =2820
                    Height =285
                    TabIndex =8
                    ForeColor =16711680
                    Name ="TxtCliNom"
                    ControlSource ="CliNom"
                    StatusBarText ="Clients Nom"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Nom"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =1125
                            Top =870
                            Width =2835
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliNom"
                            Caption ="Nom"
                            FontName ="Arial"
                            Tag ="Clients Nom"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3990
                    Top =1140
                    Width =2253
                    Height =270
                    TabIndex =9
                    ForeColor =16711680
                    Name ="TxtCliPrenom"
                    ControlSource ="CliPrenom"
                    StatusBarText ="Clients Prenom"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Prenom"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =3960
                            Top =870
                            Width =2283
                            Height =255
                            ForeColor =16711680
                            Name ="EtiCliPrenom"
                            Caption ="Prenom"
                            FontName ="Arial"
                            ControlTipText ="Clients Prenom"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =223
                    Left =90
                    Top =1705
                    Width =3318
                    Height =855
                    TabIndex =10
                    ForeColor =16711680
                    Name ="TxtCliAdresse"
                    ControlSource ="CliAdresse"
                    StatusBarText ="Clients Adresse"
                    FontName ="Arial"
                    ControlTipText ="Clients Adresse"

                    Begin
                        Begin Label
                            OverlapFlags =223
                            Left =90
                            Top =1440
                            Width =3318
                            Height =300
                            ForeColor =16711680
                            Name ="EtiCliAdresse"
                            Caption ="Adresse"
                            FontName ="Arial"
                            ControlTipText ="Clients Adresse"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    LimitToList = NotDefault
                    OverlapFlags =95
                    ColumnCount =4
                    ListWidth =6804
                    Left =4520
                    Top =1710
                    Width =1428
                    Height =285
                    TabIndex =11
                    ForeColor =16711680
                    Name ="CmbCliVilNum"
                    ControlSource ="CliVilNum"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;2268;2268;2268"
                    StatusBarText ="Clients Villle Numero"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    OnNotInList ="[Event Procedure]"
                    ControlTipText ="Clients Villle Numero"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =3405
                            Top =1710
                            Width =1113
                            Height =285
                            ForeColor =16711680
                            Name ="EtiCliVilNum"
                            Caption ="Code Postal"
                            FontName ="Arial"
                            ControlTipText ="Clients Villle Numero"
                        End
                    End
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =95
                    BackStyle =0
                    Left =3402
                    Top =1995
                    Width =2838
                    Height =285
                    TabIndex =13
                    ForeColor =16711680
                    Name ="TxtCliVilNom"
                    ControlSource ="=CmbCliVilNum.column(2)"
                    StatusBarText ="Clients Prenom"
                    FontName ="Arial"
                    ControlTipText ="Clients Prenom"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =95
                    BackStyle =0
                    Left =3402
                    Top =2280
                    Width =2838
                    Height =285
                    TabIndex =14
                    ForeColor =16711680
                    Name ="TxtCliVilPays"
                    ControlSource ="=CmbCliVilNum.column(3)"
                    StatusBarText ="Clients Prenom"
                    FontName ="Arial"
                    ControlTipText ="Clients Prenom"

                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =95
                    ListWidth =2268
                    Left =109
                    Top =2850
                    Width =3105
                    Height =285
                    TabIndex =15
                    ForeColor =16711680
                    Name ="CmbCliTel1Libelle"
                    ControlSource ="CliTel1Libelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliTel1Libelle FROM TBLCLIENTS ORDER BY TBLCLIENTS.Cl"
                        "iTel1Libelle; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Telephone 1 Libelle"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Telephone 1 Libelle"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =109
                            Top =2565
                            Width =3105
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliTel1Libelle"
                            Caption ="Telephone 1 Libelle"
                            FontName ="Arial"
                            ControlTipText ="Clients Telephone 1 Libelle"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4935
                    Top =2865
                    Width =1305
                    Height =255
                    TabIndex =16
                    ForeColor =16711680
                    Name ="TxtCliTel1"
                    ControlSource ="CliTel1"
                    StatusBarText ="Clients Telephone 1"
                    FontName ="Arial"
                    InputMask ="00\\ 00\\ 00\\ 00\\ 00;;_"
                    ControlTipText ="Clients Telephone 1"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =4935
                            Top =2565
                            Width =1305
                            Height =285
                            ForeColor =16711680
                            Name ="EtiCliTel1"
                            Caption ="Telephone 1"
                            FontName ="Arial"
                            ControlTipText ="Clients Telephone 1"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =223
                    ListWidth =2268
                    Left =109
                    Top =3405
                    Width =3105
                    Height =285
                    TabIndex =17
                    ForeColor =16711680
                    Name ="CmbCliTel2Libelle"
                    ControlSource ="CliTel2Libelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliTel2Libelle FROM TBLCLIENTS ORDER BY TBLCLIENTS.Cl"
                        "iTel2Libelle; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Telephone 2 Libelle"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Telephone 2 Libelle"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =109
                            Top =3135
                            Width =3105
                            Height =300
                            ForeColor =16711680
                            Name ="EtiCliTel2Libelle"
                            Caption ="Telephone 2 Libelle"
                            FontName ="Arial"
                            ControlTipText ="Clients Telephone 2 Libelle"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4950
                    Top =3403
                    Width =1281
                    Height =270
                    TabIndex =18
                    ForeColor =16711680
                    Name ="TxtCliTel2"
                    ControlSource ="CliTel2"
                    StatusBarText ="Clients Telephone 2"
                    FontName ="Arial"
                    InputMask ="00\\ 00\\ 00\\ 00\\ 00;;_"
                    ControlTipText ="Clients Telephone 2"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =4935
                            Top =3135
                            Width =1305
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliTel2"
                            Caption ="Telephone 2"
                            FontName ="Arial"
                            ControlTipText ="Clients Telephone 2"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =105
                    Top =3932
                    Width =6153
                    Height =465
                    TabIndex =19
                    ForeColor =16711680
                    Name ="TxtCliNote"
                    ControlSource ="CliNote"
                    StatusBarText ="Clients Note"
                    FontName ="Arial"
                    ControlTipText ="Clients Note"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =102
                            Top =3695
                            Width =6153
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliNote"
                            Caption ="Note"
                            FontName ="Arial"
                            ControlTipText ="Clients Note"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    Left =6660
                    Top =1140
                    Width =1560
                    Height =270
                    TabIndex =34
                    ForeColor =16711680
                    Name ="CmbCliBatiment"
                    ControlSource ="CliBatiment"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliBatiment FROM TBLCLIENTS ORDER BY TBLCLIENTS.CliBa"
                        "timent; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Batiment"
                    FontName ="Arial"
                    ControlTipText ="Clients Batiment"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =6660
                            Top =900
                            Width =1560
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliBatiment"
                            Caption ="Batiment"
                            FontName ="Arial"
                            ControlTipText ="Clients Batiment"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =87
                    ListWidth =2268
                    Left =8925
                    Top =1125
                    Width =720
                    Height =270
                    TabIndex =35
                    ForeColor =16711680
                    Name ="CmbCliEtage"
                    ControlSource ="CliEtage"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliEtage FROM TBLCLIENTS ORDER BY TBLCLIENTS.CliEtage"
                        "; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Etage"
                    FontName ="Arial"
                    ControlTipText ="Clients Etage"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =8925
                            Top =885
                            Width =720
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliEtage"
                            Caption ="Etage"
                            FontName ="Arial"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =87
                    ListWidth =2268
                    Left =6660
                    Top =1800
                    Width =1278
                    Height =270
                    TabIndex =36
                    ForeColor =16711680
                    Name ="CmbCliEscalier"
                    ControlSource ="CliEscalier"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliEscalier FROM TBLCLIENTS ORDER BY TBLCLIENTS.CliEs"
                        "calier; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Escalier"
                    FontName ="Arial"
                    ControlTipText ="Clients Escalier"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =6660
                            Top =1560
                            Width =1278
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliEscalier"
                            Caption ="Escalier"
                            FontName ="Arial"
                            ControlTipText ="Clients Escalier"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =87
                    IMESentenceMode =3
                    ListWidth =2268
                    Left =8415
                    Top =1800
                    Width =1230
                    Height =285
                    TabIndex =37
                    ForeColor =16711680
                    Name ="CmbCliPorte"
                    ControlSource ="CliPorte"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliPorte FROM TBLCLIENTS ORDER BY TBLCLIENTS.CliPorte"
                        "; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Porte"
                    FontName ="Arial"
                    ControlTipText ="Clients Porte"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =8415
                            Top =1560
                            Width =1230
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliPorte"
                            Caption ="Porte"
                            FontName ="Arial"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =6660
                    Top =2490
                    Width =1848
                    Height =270
                    TabIndex =38
                    ForeColor =16711680
                    Name ="TxtCliDigicode"
                    ControlSource ="CliDigicode"
                    StatusBarText ="Clients Digicode"
                    FontName ="Arial"
                    ControlTipText ="Clients Digicode"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =6660
                            Top =2250
                            Width =1848
                            Height =240
                            ForeColor =16711680
                            Name ="EtiCliDigicode"
                            Caption ="Digicode"
                            FontName ="Arial"
                            ControlTipText ="Clients Digicode"
                        End
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =215
                    Left =5940
                    Top =1695
                    Width =315
                    Height =285
                    TabIndex =12
                    Name ="CmdAjouterVillesUtilisateur"
                    Caption ="..."

                    Overlaps =1
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    LimitToList = NotDefault
                    OverlapFlags =95
                    ColumnCount =2
                    ListWidth =4536
                    Left =75
                    Top =4805
                    Width =765
                    Height =285
                    TabIndex =20
                    ForeColor =16711680
                    Name ="CmbCliSousCivCode"
                    ControlSource ="CliSousCivCode"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="2268;2268"
                    StatusBarText ="Clients Souscripteur Civilites Code"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    OnNotInList ="[Event Procedure]"
                    ControlTipText ="Clients Souscripteur Civilites Code"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =76
                            Top =4530
                            Width =750
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliSousCivCode"
                            Caption ="Civilitée"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Civilites Code"
                        End
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =223
                    Left =825
                    Top =4800
                    Width =330
                    Height =300
                    TabIndex =21
                    Name ="CmdAjouterCivilitesSouscripteur"
                    Caption ="..."
                    OnClick ="[Event Procedure]"
                    FontName ="Arial"

                    Overlaps =1
                End
                Begin TextBox
                    OverlapFlags =223
                    Left =1140
                    Top =4815
                    Width =2820
                    Height =285
                    TabIndex =22
                    ForeColor =16711680
                    Name ="TxtCliSousNom"
                    ControlSource ="CliSousNom"
                    StatusBarText ="Clients Souscripteur Nom"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Souscripteur Nom"

                    Begin
                        Begin Label
                            OverlapFlags =223
                            Left =1140
                            Top =4545
                            Width =2835
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliSousNom"
                            Caption ="Nom"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Nom"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =3975
                    Top =4815
                    Width =2268
                    Height =285
                    TabIndex =23
                    ForeColor =16711680
                    Name ="TxtCliSousPrenom"
                    ControlSource ="CliSousPrenom"
                    StatusBarText ="Clients Souscripteur Prenom"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Souscripteur Prenom"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =3975
                            Top =4545
                            Width =2268
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliSousPrenom"
                            Caption ="Prenom"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Prenom"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =95
                    Left =79
                    Top =5370
                    Width =3333
                    Height =840
                    TabIndex =24
                    ForeColor =16711680
                    Name ="TxtCliSousAdresse"
                    ControlSource ="CliSousAdresse"
                    StatusBarText ="Clients Souscripteur Adresse"
                    FontName ="Arial"
                    ControlTipText ="Clients Souscripteur Adresse"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =79
                            Top =5100
                            Width =3318
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliSousAdresse"
                            Caption ="Adresse"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Adresse"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    LimitToList = NotDefault
                    OverlapFlags =95
                    ColumnCount =4
                    ListWidth =6804
                    Left =4521
                    Top =5370
                    Width =1413
                    Height =285
                    TabIndex =25
                    ForeColor =16711680
                    Name ="CmbCliSousVilNum"
                    ControlSource ="CliSousVilNum"
                    RowSourceType ="Table/Query"
                    ColumnWidths ="0;2268;2268;2268"
                    StatusBarText ="Clients Souscripteur Ville Num"
                    FontName ="Arial"
                    OnGotFocus ="[Event Procedure]"
                    OnLostFocus ="[Event Procedure]"
                    OnNotInList ="[Event Procedure]"
                    ControlTipText ="Clients Souscripteur Ville Num"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =3405
                            Top =5370
                            Width =1113
                            Height =285
                            ForeColor =16711680
                            Name ="EtiCliSousVilleNum"
                            Caption ="Code Postal"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Ville Num"
                        End
                    End
                End
                Begin CommandButton
                    TabStop = NotDefault
                    OverlapFlags =95
                    Left =5940
                    Top =5355
                    Width =315
                    Height =285
                    TabIndex =26
                    Name ="CmdAjouterVillesSouscripteur"
                    Caption ="..."

                    Overlaps =1
                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =95
                    BackStyle =0
                    Left =3405
                    Top =5655
                    Width =2838
                    Height =285
                    TabIndex =27
                    ForeColor =16711680
                    Name ="TxtCliSousVilNom"
                    ControlSource ="=CmbCliSousVilNum.column(2)"
                    StatusBarText ="Clients Prenom"
                    FontName ="Arial"
                    ControlTipText ="Clients Prenom"

                End
                Begin TextBox
                    Enabled = NotDefault
                    Locked = NotDefault
                    OverlapFlags =95
                    BackStyle =0
                    Left =3405
                    Top =5940
                    Width =2838
                    Height =285
                    TabIndex =28
                    ForeColor =16711680
                    Name ="TxtCliSousVilPays"
                    ControlSource ="=CmbCliSousVilNum.column(3)"
                    StatusBarText ="Clients Prenom"
                    FontName ="Arial"
                    ControlTipText ="Clients Prenom"

                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =95
                    ListWidth =2268
                    Left =83
                    Top =6512
                    Width =3111
                    Height =285
                    TabIndex =29
                    ForeColor =16711680
                    Name ="CmbCliSousTel1Libelle"
                    ControlSource ="CliSousTel1Libelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliSousTel1Libelle FROM TBLCLIENTS ORDER BY TBLCLIENT"
                        "S.CliSousTel1Libelle; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Souscripteur Telephone 1 Libelle"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Souscripteur Telephone 1 Libelle"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =83
                            Top =6225
                            Width =3120
                            Height =285
                            ForeColor =16711680
                            Name ="EtiCliSousTel1Libelle"
                            Caption ="Telephone 1 Libelle"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Telephone 1 Libelle:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =215
                    Left =4935
                    Top =6527
                    Width =1296
                    Height =255
                    TabIndex =30
                    ForeColor =16711680
                    Name ="TxtCliSousTel1"
                    ControlSource ="CliSousTel1"
                    StatusBarText ="Clients Souscripteur Telephone 1"
                    FontName ="Arial"
                    InputMask ="00\\ 00\\ 00\\ 00\\ 00;;_"
                    ControlTipText ="Clients Souscripteur Telephone 1"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =4935
                            Top =6225
                            Width =1305
                            Height =330
                            ForeColor =16711680
                            Name ="EtiCliSousTel1"
                            Caption ="Telephone 1"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Telephone 1"
                        End
                    End
                End
                Begin ComboBox
                    ColumnHeads = NotDefault
                    OverlapFlags =95
                    ListWidth =2268
                    Left =83
                    Top =7065
                    Width =3111
                    Height =285
                    TabIndex =31
                    ForeColor =16711680
                    Name ="CmbCliSousTel2Libelle"
                    ControlSource ="CliSousTel2Libelle"
                    RowSourceType ="Table/Query"
                    RowSource ="SELECT DISTINCT TBLCLIENTS.CliSousTel2Libelle FROM TBLCLIENTS ORDER BY TBLCLIENT"
                        "S.CliSousTel2Libelle; "
                    ColumnWidths ="2268"
                    StatusBarText ="Clients Souscripteur Telephone 2 Libelle"
                    FontName ="Arial"
                    OnKeyPress ="[Event Procedure]"
                    ControlTipText ="Clients Souscripteur Telephone 2 Libelle"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =83
                            Top =6795
                            Width =3120
                            Height =270
                            ForeColor =16711680
                            Name ="EtiCliSousTel2Libelle"
                            Caption ="Telephone 2 Libelle"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Telephone 2 Libelle:"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =4950
                    Top =7065
                    Width =1296
                    Height =270
                    TabIndex =32
                    ForeColor =16711680
                    Name ="TxtCliSousTel2"
                    ControlSource ="CliSousTel2"
                    StatusBarText ="Clients Souscripteur Telephone 2"
                    FontName ="Arial"
                    InputMask ="00\\ 00\\ 00\\ 00\\ 00;;_"
                    ControlTipText ="Clients Souscripteur Telephone 2"

                    Begin
                        Begin Label
                            OverlapFlags =93
                            Left =4935
                            Top =6795
                            Width =1305
                            Height =255
                            ForeColor =16711680
                            Name ="EtiCliSousTel2"
                            Caption ="Telephone 2"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Telephone 2"
                        End
                    End
                End
                Begin TextBox
                    OverlapFlags =87
                    Left =94
                    Top =7595
                    Width =6153
                    Height =495
                    TabIndex =33
                    ForeColor =16711680
                    Name ="TxtCliSousNote"
                    ControlSource ="CliSousNote"
                    StatusBarText ="Clients Souscripteur Note"
                    FontName ="Arial"
                    ControlTipText ="Clients Souscripteur Note"

                    Begin
                        Begin Label
                            OverlapFlags =95
                            Left =79
                            Top =7355
                            Width =6168
                            Height =225
                            ForeColor =16711680
                            Name ="EtiCliSousNote"
                            Caption ="Note"
                            FontName ="Arial"
                            ControlTipText ="Clients Souscripteur Note"
                        End
                    End
                End
                Begin Subform
                    OverlapFlags =85
                    Left =6675
                    Top =3405
                    Width =8730
                    Height =4680
                    TabIndex =40
                    Name ="SFrmFicheClientsChaudieres"
                    SourceObject ="Form.SFrmFicheClientsChaudieres"
                    LinkChildFields ="CliChdCliNum"
                    LinkMasterFields ="CliNum"
                    OnEnter ="[Event Procedure]"

                End
                Begin Subform
                    OverlapFlags =85
                    Left =10050
                    Top =855
                    Width =5340
                    Height =2385
                    TabIndex =39
                    Name ="SFrmFicheClientsContrats"
                    SourceObject ="Form.SFrmFicheClientsContrats"
                    LinkChildFields ="CliConCliNum"
                    LinkMasterFields ="CliNum"
                    OnEnter ="[Event Procedure]"

                End
            End
        End
        Begin FormFooter
            Height =680
            BackColor =8445670
            Name ="PiedFormulaire"
            Begin
                Begin Rectangle
                    SpecialEffect =0
                    OldBorderStyle =0
                    OverlapFlags =93
                    Width =15450
                    Height =660
                    BackColor =255
                    Name ="RecButton"
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =13521
                    Top =45
                    Width =591
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =6
                    Name ="CmdAnnuler"
                    Caption ="Annuler Les Modifications En Cours"
                    StatusBarText ="Annuler Les Modifications En Cours"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000019000000180000000100040000000000800100000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888888888888 ,
                        0x8848888888888888888888888888888888748888888888888888844444448888 ,
                        0x8887488888888888888884444448888888887788888888888888844444888888 ,
                        0x8888848888888888888884444788888888888488888888888888844484788888 ,
                        0x8888848888888888888884488847888888887488888888888888848888847888 ,
                        0x8888478888888888888888888888447888747888888888888888888888888844 ,
                        0x4447888888888888888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Annuler Les Modifications En Cours"

                    Overlaps =1
                End
                Begin CommandButton
                    Enabled = NotDefault
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =14153
                    Top =45
                    Width =591
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =7
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
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =12257
                    Top =45
                    Width =591
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =4
                    Name ="CmdSupprimer"
                    Caption ="Supprimer Enregistrement En Cours"
                    StatusBarText ="Supprimer Enregistrement En Cours"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000019000000180000000100040000000000800100000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00888888888888888888888888888888888888808808808008 ,
                        0x8888888888888888888888888888800088888888888888888888888888888707 ,
                        0x0788888888888888888888888888880870888888888008888888888888888807 ,
                        0x8708888888800088888888888888880880708888888000078888888888888870 ,
                        0xbb7078888880000088188888888888808b770888888000008811888888888887 ,
                        0x0bb7708888800000887118888888718808bb7078888000008881118888881188 ,
                        0x708b7708888000008887118888711888807bb707888000008888111888111888 ,
                        0x8708b01088800000888871117111888888701110788000008888811111188888 ,
                        0x8870111078800000888887111188888888870007888000008888881111888888 ,
                        0x8888777888800008888871111178888888888888888000888887111811188888 ,
                        0x8888888888800888871118887111888888888888888888888888888888111888 ,
                        0x8888888888888888888888888887118888888888888888888888888888887118 ,
                        0x8888888888888888
                    End
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
                    Left =11625
                    Top =45
                    Width =591
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =3
                    Name ="CmdModifier"
                    Caption ="Modifier Enregistrement En Cours"
                    StatusBarText ="Modifier Enregistrement En Cours"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000019000000180000000100040000000000800100000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x80800000c0c0c000808080000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00777777777777777777777777777777777777777000000000 ,
                        0x000000007700000077007770fffffffffffffff0770fffff77000770ffffffff ,
                        0xfffffff0770fffff77808070ff888f888f888ff0770fffff77807800ffffffff ,
                        0xfffffff0770fffff77708780fffffffffffffff0770fffff0000788800000000 ,
                        0x0f888ff0770ff8880ff80bb808ffffff0ffffff0770ff7770fff07b880ffffff ,
                        0x0ffffff0770ff8880f8880bb808f888f0f888ff0770ff7770ffff07b880fffff ,
                        0x0ffffff0770ff8880ffff80bb808ffff0ffffff0770ff7770f888f07b880788f ,
                        0x04444444770ff8880fffff80bb808fff04444444770ff7770ffffff07b880fff ,
                        0x04444444770fffff0f888f880bb8087f07777777770fffff0fffffff07b880ff ,
                        0x07777777770ff7770fffffff80bb808f07777777770ff88844444444407b0104 ,
                        0x47777777770fffff444444444801110847777777770fffff4444444444011108 ,
                        0x47777777770fffff777777777780008777777777770fffff7777777777788877 ,
                        0x7777777777000000
                    End
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
                    Left =12889
                    Top =45
                    Width =591
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =5
                    Name ="CmdAjouter"
                    Caption ="Ajouter Un Enregistrement"
                    StatusBarText ="Ajouter Un Enregistrement"
                    OnClick ="[Event Procedure]"
                    PictureData = Begin
                        0x2800000019000000180000000100040000000000800100000000000000000000 ,
                        0x0000000000000000000000000000800000800000008080008000000080008000 ,
                        0x8080000080808000c0c0c0000000ff0000ff000000ffff00ff000000ff00ff00 ,
                        0xffff0000ffffff00888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888888888888 ,
                        0x8888888888888888888888888888888888888888888888888888888000000000 ,
                        0x000000008888888888888880fffffffffffffff08888888888888880f000ff00 ,
                        0x0ff000f08888888088888880fffffffffffffff08888888088888887f000ff00 ,
                        0x0ff000f08888888088888887fffffffffffffff08888888088888887b000ff00 ,
                        0x0ff000f0888888878887b887fffffffffffffff08888888788887f87b4b74444 ,
                        0x4444444488888887888888b7fb744444444444448887b8878877778fbf777777 ,
                        0x4444444488887f87888bfb7bfbb7b7b788888888888888b7888887b7b7f88888 ,
                        0x888888888887778f88887b87f87b888888888888888bfb7b8887b887b887f888 ,
                        0x88888888888887b7888b8887f8887b888888888888887b8788888887b8888888 ,
                        0x888888888887b887888888878888888888888888888b88878888888888888888 ,
                        0x8888888888888887
                    End
                    FontName ="System"
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Ajouter Un Enregistrement"

                    Overlaps =1
                End
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =45
                    Top =45
                    Width =622
                    Height =591
                    FontSize =10
                    FontWeight =700
                    Name ="CmdImprimer"
                    OnClick ="[Event Procedure]"
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
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =14805
                    Top =45
                    Width =591
                    Height =591
                    FontSize =10
                    FontWeight =700
                    TabIndex =8
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
                Begin CommandButton
                    OverlapFlags =215
                    TextFontFamily =2
                    Left =10500
                    Top =60
                    Width =576
                    Height =576
                    FontSize =10
                    FontWeight =700
                    TabIndex =2
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
                    OverlapFlags =215
                    Left =735
                    Top =45
                    Width =576
                    Height =591
                    TabIndex =1
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
                    ObjectPalette = Begin
                        0x000301000000000000000000
                    End
                    ControlTipText ="Exécuter Excel"

                    Overlaps =1
                End
            End
        End
    End
End
CodeBehindForm
' See "FrmFicheClients.cls"
