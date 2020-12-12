object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 701
  ClientWidth = 875
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 177
    Top = 32
    Width = 337
    Height = 177
    ItemHeight = 13
    TabOrder = 0
    OnClick = ListBox1Click
  end
  object ListBox2: TListBox
    Left = 520
    Top = 32
    Width = 329
    Height = 177
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 32
    Width = 146
    Height = 25
    Caption = 'Get TABLE'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 177
    Top = 232
    Width = 672
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 177
    Top = 358
    Width = 672
    Height = 120
    DataSource = DataSource2
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 16
    Top = 63
    Width = 146
    Height = 25
    Caption = 'Get META'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBGrid3: TDBGrid
    Left = 176
    Top = 504
    Width = 673
    Height = 177
    DataSource = DataSource3
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 16
    Top = 94
    Width = 146
    Height = 25
    Caption = 'Get QUERY'
    TabOrder = 7
    OnClick = Button3Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\Bancos\Firebird\PDVUPDATES.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    OnRecover = FDConnection1Recover
    Left = 648
    Top = 80
  end
  object FDMetaInfoQuery1: TFDMetaInfoQuery
    AfterScroll = FDMetaInfoQuery1AfterScroll
    Connection = FDConnection1
    Left = 304
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = FDMetaInfoQuery1
    Left = 288
    Top = 288
  end
  object FDMetaInfoQuery2: TFDMetaInfoQuery
    Connection = FDConnection1
    MetaInfoKind = mkTableFields
    Left = 536
    Top = 264
  end
  object DataSource2: TDataSource
    DataSet = FDMetaInfoQuery2
    Left = 512
    Top = 376
  end
  object DataSource3: TDataSource
    DataSet = FDQuery1
    Left = 344
    Top = 528
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 224
    Top = 560
  end
end
