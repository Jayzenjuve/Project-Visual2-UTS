program fiture_satuan;

uses
  Forms,
  Unit1 in 'Unit1.pas' {SATUAN},
  Unit2 in 'Unit2.pas' {Koneksi: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSATUAN, SATUAN);
  Application.CreateForm(TKoneksi, Koneksi);
  Application.Run;
end.
