object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 529
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 1007
    Height = 513
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 832
    Top = 72
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 720
    Top = 136
    Content = {
      414442530F00071BC20D0000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C0065003100050000000000060000070032000000
      080000FF09FF0A04000A00000045006D0070004E006F000B00010000000D000C
      000E00010F000110000111000112000113000114000A00000045006D0070004E
      006F00FEFF0A0400100000004C006100730074004E0061006D0065000B000200
      00000D0015001600140000000E00010F00011000011100011200011300011400
      100000004C006100730074004E0061006D006500170014000000FEFF0A040012
      000000460069007200730074004E0061006D0065000B00030000000D00150016
      000F0000000E00010F0001100001110001120001130001140012000000460069
      007200730074004E0061006D00650017000F000000FEFF0A0400100000005000
      68006F006E0065004500780074000B00040000000D0015001600040000000E00
      010F0001100001110001120001130001140010000000500068006F006E006500
      450078007400170004000000FEFF0A0400100000004800690072006500440061
      00740065000B00050000000D0018000E00010F00011000011100011200011300
      0114001000000048006900720065004400610074006500FEFF0A04000C000000
      530061006C006100720079000B00060000000D0019000E00010F000110000111
      000112000113000114000C000000530061006C00610072007900FEFEFF1AFEFF
      1BFEFF1CFF1D1E0000000000FF1F0000020000000100060000004E656C736F6E
      020007000000526F626572746F03000300000032353004000000EA4F4F87CC42
      0500000000000088E340FEFEFF1D1E0001000000FF1F00000400000001000500
      0000596F756E67020005000000427275636503000300000032333304000000EA
      4F4F87CC420500000000008019EB40FEFEFF1D1E0002000000FF1F0000050000
      000100070000004C616D626572740200030000004B696D030002000000323204
      0000001A4FB687CC42050000000000006AD840FEFEFF1D1E0003000000FF1F00
      00080000000100070000004A6F686E736F6E0200060000004C65736C69650300
      030000003431300400000086A74B88CC420500000000008076D840FEFEFF1D1E
      0004000000FF1F000009000000010006000000466F7265737402000400000050
      68696C03000300000032323904000000AE8D6A88CC420500000000008076D840
      FEFEFF1D1E0005000000FF1F00000B000000010006000000576573746F6E0200
      050000004B2E204A2E03000200000033340400000018A82E8BCC420500000000
      009E41E040FEFEFF1D1E0006000000FF1F00000C0000000100030000004C6565
      020005000000546572726903000300000032353604000000C8723A8CCC420500
      000000008022E640FEFEFF1D1E0007000000FF1F00000E000000010004000000
      48616C6C0200070000005374657761727403000300000032323704000000E4FE
      918CCC4205000000000054D6E040FEFEFF1D1E0008000000FF1F00000F000000
      010005000000596F756E670200090000004B6174686572696E65030003000000
      32333104000000B0BEAB8CCC4205000000000000D4D740FEFEFF1D1E00090000
      00FF1F00001400000001000C00000050617061646F706F756C6F730200050000
      004368726973030003000000383837040000003875058BCC4205000000000080
      76D840FEFEFF1D1E000A000000FF1F0000180000000100060000004669736865
      720200040000005065746503000300000038383804000000DC7C938DCC420500
      000000000080D640FEFEFF1D1E000B000000FF1F00001C000000010006000000
      42656E6E6574020003000000416E6E03000100000035040000006020018FCC42
      05009A99999959D6E040FEFEFF1D1E000C000000FF1F00001D00000001000800
      0000446520536F757A61020005000000526F6765720300030000003238380400
      00006EE62C8FCC4205000000000000E7D840FEFEFF1D1E000D000000FF1F0000
      2200000001000700000042616C6477696E0200050000004A616E657403000100
      0000320400000000B97C8FCC4205000000000000C1D640FEFEFF1D1E000E0000
      00FF1F000024000000010006000000526565766573020005000000526F676572
      03000100000036040000004AD8D68FCC42050000000000806AE040FEFEFF1D1E
      000F000000FF1F0000250000000100090000005374616E736275727902000600
      000057696C6C696503000100000037040000004AD8D68FCC4205000000000000
      27E340FEFEFF1D1E0010000000FF1F00002C00000001000500000050686F6E67
      0200060000004C65736C6965030003000000323136040000004C443B90CC4205
      0000000000C0B3E340FEFEFF1D1E0011000000FF1F00002D00000001000A0000
      0052616D616E617468616E0200050000004173686F6B03000300000032303904
      000000E62FD390CC42050048E17A149E41E040FEFEFF1D1E0012000000FF1F00
      002E00000001000800000053746561646D616E02000600000057616C74657203
      00030000003231300400000056C9E790CC42050000000000C023D340FEFEFF1D
      1E0013000000FF1F0000340000000100090000004E6F72647374726F6D020005
      0000004361726F6C030003000000343230040000000AD57291CC420500000000
      000094B140FEFEFF1D1E0014000000FF1F00003D0000000100050000004C6575
      6E670200040000004C756B65030001000000330400000004BFD892CC42050000
      00000080D8E040FEFEFF1D1E0015000000FF1F0000410000000100070000004F
      27427269656E02000800000053756520416E6E65030003000000383737040000
      00204B3093CC42050000000000C08ADE40FEFEFF1D1E0016000000FF1F000047
      00000001000700000042757262616E6B02000B0000004A656E6E69666572204D
      2E0300030000003238390400000042846B93CC420500000000008022E640FEFE
      FF1D1E0017000000FF1F00004800000001000A0000005375746865726C616E64
      020007000000436C61756469610400000028647893CC42050000000000606EE1
      40FEFEFF1D1E0018000000FF1F000053000000010006000000426973686F7002
      000400000044616E6103000300000032393004000000B489E493CC4205000000
      000000F9E540FEFEFF1D1E0019000000FF1F0000550000000100090000004D61
      63446F6E616C640200070000004D61727920532E030003000000343737040000
      00B489E493CC42050000000000606EE140FEFEFF1D1E001A000000FF1F00005E
      00000001000800000057696C6C69616D7302000500000052616E647903000300
      000038393204000000ECA19394CC420500000000000039DC40FEFEFF1D1E001B
      000000FF1F00006900000001000600000042656E6465720200090000004F6C69
      76657220482E03000300000032353504000000E2B33095CC42050000000000E0
      F7E140FEFEFF1D1E001C000000FF1F00006B000000010004000000436F6F6B02
      00050000004B6576696E03000300000038393404000000BA645B96CC42050000
      0000008055E140FEFEFF1D1E001D000000FF1F00006D00000001000500000042
      726F776E0200050000004B656C6C7903000300000032303204000000441E6396
      CC42050000000000005EDA40FEFEFF1D1E001E000000FF1F00006E0000000100
      0600000049636869646102000400000059756B69030002000000323204000000
      441E6396CC420500000000004016D940FEFEFF1D1E001F000000FF1F00007100
      0000010004000000506167650200040000004D61727903000300000038343504
      0000004EA30F97CC420500000000000070E740FEFEFF1D1E0020000000FF1F00
      00720000000100060000005061726B657202000400000042696C6C0300030000
      00323437040000004A629097CC420500000000000017E140FEFEFF1D1E002100
      0000FF1F00007600000001000800000059616D616D6F746F0200070000005461
      6B61736869030002000000323304000000AEA1DD97CC4205000000000000BDDF
      40FEFEFF1D1E0022000000FF1F00007900000001000700000046657272617269
      020007000000526F626572746F0300010000003104000000A8F4F997CC420500
      0000000080C6E340FEFEFF1D1E0023000000FF1F00007F000000010008000000
      59616E6F77736B690200070000004D69636861656C0300030000003439320400
      0000B00D4298CC42050000000000007CE540FEFEFF1D1E0024000000FF1F0000
      86000000010004000000476C6F6E0200070000004A6163717565730400000034
      1A6698CC42050000000000C045D840FEFEFF1D1E0025000000FF1F0000880000
      000100070000004A6F686E736F6E02000500000053636F747403000300000032
      363504000000FA2C9C98CC420500C3F5285C3FDFDD40FEFEFF1D1E0026000000
      FF1F00008A000000010005000000477265656E020004000000542E4A2E030003
      00000032313804000000C8581A99CC420500000000000094E140FEFEFF1D1E00
      27000000FF1F00008D0000000100070000004F73626F726E6502000600000050
      6965727265040000001A91BC99CC420500000000000062E140FEFEFF1D1E0028
      000000FF1F00009000000001000A0000004D6F6E74676F6D6572790200040000
      004A6F686E030003000000383230040000008E029A9ACC42050000000000606E
      E140FEFEFF1D1E0029000000FF1F00009100000001000C0000004775636B656E
      6865696D65720200040000004D61726B030003000000323231040000007CFBEE
      9ACC420500000000000040DF40FEFEFEFEFEFF20FEFF212200B9000000FF23FE
      FEFE0E004D0061006E0061006700650072001E00550070006400610074006500
      73005200650067006900730074007200790012005400610062006C0065004C00
      6900730074000A005400610062006C00650008004E0061006D0065000A005400
      6100620049004400240045006E0066006F0072006300650043006F006E007300
      74007200610069006E00740073001E004D0069006E0069006D0075006D004300
      6100700061006300690074007900180043006800650063006B004E006F007400
      4E0075006C006C00140043006F006C0075006D006E004C006900730074000C00
      43006F006C0075006D006E00100053006F007500720063006500490044000E00
      6400740049006E00740033003200100044006100740061005400790070006500
      1400530065006100720063006800610062006C006500120041006C006C006F00
      77004E0075006C006C000800420061007300650014004F0041006C006C006F00
      77004E0075006C006C0012004F0049006E005500700064006100740065001000
      4F0049006E00570068006500720065001A004F0072006900670069006E004300
      6F006C004E0061006D00650018006400740041006E0073006900530074007200
      69006E0067000800530069007A006500140053006F0075007200630065005300
      69007A0065001400640074004400610074006500540069006D00650010006400
      740044006F00750062006C0065001C0043006F006E0073007400720061006900
      6E0074004C00690073007400100056006900650077004C006900730074000E00
      52006F0077004C00690073007400060052006F0077000A0052006F0077004900
      440010004F0072006900670069006E0061006C001800520065006C0061007400
      69006F006E004C006900730074001C0055007000640061007400650073004A00
      6F00750072006E0061006C001200530061007600650050006F0069006E007400
      0E004300680061006E00670065007300}
  end
end
