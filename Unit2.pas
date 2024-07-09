unit Unit2;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TKoneksi = class(TDataModule)
    DBPenjualan: TZConnection;
    QSatuan: TZQuery;
    DSatuan: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Koneksi: TKoneksi;

implementation

{$R *.dfm}

end.
