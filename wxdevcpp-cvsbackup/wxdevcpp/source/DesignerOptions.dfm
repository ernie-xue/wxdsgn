object DesignerForm: TDesignerForm
  Left = 527
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Form Designer Options'
  ClientHeight = 320
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    418
    320)
  PixelsPerInch = 96
  TextHeight = 13
  object btnOk: TBitBtn
    Left = 163
    Top = 288
    Width = 80
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btnOkClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object btnCancel: TBitBtn
    Left = 243
    Top = 288
    Width = 80
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 1
    Kind = bkCancel
  end
  object btnHelp: TBitBtn
    Left = 334
    Top = 288
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 2
    Kind = bkHelp
  end
  object PageControl2: TPageControl
    Left = 8
    Top = 8
    Width = 401
    Height = 276
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabIndex = 0
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Designer Options'
      object GroupBox1: TGroupBox
        Left = 4
        Top = 4
        Width = 385
        Height = 117
        Caption = 'Form Options'
        TabOrder = 0
        object Bevel2: TBevel
          Left = 135
          Top = 60
          Width = 68
          Height = 18
        end
        object Bevel1: TBevel
          Left = 135
          Top = 36
          Width = 68
          Height = 18
        end
        object Label6: TLabel
          Left = 9
          Top = 39
          Width = 120
          Height = 13
          Caption = 'X coordinate grid interval:'
        end
        object Label7: TLabel
          Left = 8
          Top = 63
          Width = 120
          Height = 13
          Caption = 'Y coordinate grid interval:'
        end
        object lbGridXStep: TLabel
          Left = 138
          Top = 39
          Width = 6
          Height = 13
          Caption = '8'
        end
        object lbGridYStep: TLabel
          Left = 138
          Top = 63
          Width = 6
          Height = 13
          Caption = '8'
        end
        object cbGridVisible: TCheckBox
          Left = 8
          Top = 15
          Width = 97
          Height = 17
          Caption = 'Visible'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object cbSnapToGrid: TCheckBox
          Left = 8
          Top = 85
          Width = 97
          Height = 17
          Caption = 'Snap to grid'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object lbGridXStepUpDown: TUpDown
          Left = 202
          Top = 36
          Width = 16
          Height = 18
          Min = 2
          Max = 30
          Position = 8
          TabOrder = 2
          Wrap = False
          OnClick = lbGridXStepUpDownClick
        end
        object lbGridYStepUpDown: TUpDown
          Left = 202
          Top = 60
          Width = 16
          Height = 18
          Min = 2
          Max = 30
          Position = 8
          TabOrder = 3
          Wrap = False
          OnClick = lbGridYStepUpDownClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 4
        Top = 144
        Width = 385
        Height = 98
        Caption = 'Hints'
        TabOrder = 1
        object cbControlHints: TCheckBox
          Left = 8
          Top = 15
          Width = 97
          Height = 17
          Caption = 'Control'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object cbSizeHints: TCheckBox
          Left = 8
          Top = 35
          Width = 97
          Height = 17
          Caption = 'Size'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object cbMoveHints: TCheckBox
          Left = 8
          Top = 55
          Width = 97
          Height = 17
          Caption = 'Move'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object cbInsertHints: TCheckBox
          Left = 8
          Top = 75
          Width = 97
          Height = 17
          Caption = 'Insert'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Code Generation Options'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 48
        Width = 118
        Height = 13
        Caption = 'String Internationalization'
      end
      object cbGenerateXRC: TCheckBox
        Left = 8
        Top = 19
        Width = 129
        Height = 17
        Caption = 'Generate XRC Code'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object cbStringFormat: TComboBox
        Left = 136
        Top = 44
        Width = 73
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        Text = 'wxT'
        OnChange = cbStringFormatChange
        Items.Strings = (
          'wxT'
          '_'
          '_T')
      end
    end
  end
  object XPMenu: TXPMenu
    DimLevel = 30
    GrayLevel = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    DrawMenuBar = False
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    UseDimColor = False
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    AutoDetect = False
    XPControls = [xcMainMenu, xcPopupMenu, xcToolbar, xcControlbar, xcCombo, xcListBox, xcEdit, xcMaskEdit, xcMemo, xcRichEdit, xcMiscEdit, xcCheckBox, xcRadioButton, xcButton, xcBitBtn, xcSpeedButton, xcUpDown, xcPanel, xcTreeView, xcListView, xcProgressBar, xcHotKey]
    Active = False
    Left = 8
    Top = 288
  end
end
