object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 784
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 56
    Width = 129
    Height = 25
    Caption = 'CREATE TABLE'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 87
    Width = 129
    Height = 25
    Caption = 'DROP TABLE'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 232
    Top = 58
    Width = 65
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 303
    Top = 58
    Width = 346
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object Button3: TButton
    Left = 40
    Top = 118
    Width = 129
    Height = 25
    Caption = 'ExecSQLScalar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 40
    Top = 149
    Width = 129
    Height = 25
    Caption = 'ResultSet'
    TabOrder = 5
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 96
    Width = 417
    Height = 329
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button5: TButton
    Left = 40
    Top = 180
    Width = 129
    Height = 29
    Caption = 'INSERT PARAM'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Memo1: TMemo
    Left = 672
    Top = 58
    Width = 369
    Height = 703
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object Button6: TButton
    Left = 40
    Top = 215
    Width = 129
    Height = 25
    Caption = 'Open Query'
    TabOrder = 9
    OnClick = Button6Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\thuli\Desktop\Firedac - Dominando todas as Fea' +
        'tures\DB\ERP.db3'
      'LockingMode=Normal'
      'MonitorBy=Custom'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 272
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 328
    Top = 136
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 408
    Top = 144
  end
  object FDMoniCustomClientLink1: TFDMoniCustomClientLink
    OnOutput = FDMoniCustomClientLink1Output
    Tracing = True
    Left = 152
    Top = 456
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 272
    Top = 336
  end
  object FDMoniFlatFileClientLink1: TFDMoniFlatFileClientLink
    FileName = 'trace7.txt'
    FileColumns = [tiRefNo, tiTime, tiObjID, tiMsgText]
    Tracing = True
    Left = 296
    Top = 456
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 432
    Top = 456
  end
end
