object Koneksi: TKoneksi
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 212
  Width = 453
  object DBPenjualan: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = '.\libmysql.dll'
    Left = 40
    Top = 24
  end
  object QSatuan: TZQuery
    Connection = DBPenjualan
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 104
    Top = 24
  end
  object DSatuan: TDataSource
    DataSet = QSatuan
    Left = 104
    Top = 88
  end
end
