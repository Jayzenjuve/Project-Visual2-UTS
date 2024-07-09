unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TSATUAN = class(TForm)
    NAMA: TLabel;
    Label1: TLabel;
    Snama: TEdit;
    Sdiskripsi: TEdit;
    SSimpan: TButton;
    SEdit: TButton;
    SHapus: TButton;
    SBatal: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    SCNama: TEdit;
    procedure SSimpanClick(Sender: TObject);
    procedure SHapusClick(Sender: TObject);
    procedure SBatalClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SEditClick(Sender: TObject);
    procedure SCNamaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SATUAN: TSATUAN;
  a: String;

implementation

uses Unit2, DB;

{$R *.dfm}

procedure TSATUAN.SSimpanClick(Sender: TObject);
begin
with Koneksi.QSatuan do
  begin
  SQL.Clear;
  SQL.Add('insert into satuan values(null,"'+Snama.Text+'","'+Sdiskripsi.Text+'")');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
  end;
  ShowMessage('Data Berhasil Disimpan!');
end;

procedure TSATUAN.SEditClick(Sender: TObject);
begin
with Koneksi.QSatuan do
  begin
  SQL.Clear;
  SQL.Add('update satuan set nama = "'+Snama.Text+'", diskripsi = "'+Sdiskripsi.Text+'" where id = "'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
end;

procedure TSATUAN.SHapusClick(Sender: TObject);
begin
with Koneksi.QSatuan do
  begin
  SQL.Clear;
  SQL.Add('delete from satuan where id = "'+a+'" ');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open;
  end;
  ShowMessage('Data Berhasil Dihapus!');
end;

procedure TSATUAN.SBatalClick(Sender: TObject);
begin
Snama.Clear;
Sdiskripsi.Clear;
end;

procedure TSATUAN.DBGrid1CellClick(Column: TColumn);
begin
a := Koneksi.QSatuan.Fields[0].AsString;
Snama.Text := Koneksi.QSatuan.Fields[1].AsString;
Sdiskripsi.Text := Koneksi.QSatuan.Fields[2].AsString;
end;

procedure TSATUAN.SCNamaChange(Sender: TObject);
begin
with Koneksi.QSatuan do
  begin
  SQL.Clear;
  SQL.Add('select * from satuan where nama like "%'+SCNama.Text+'%"');
  Open;
  end;
end;

end.
