program Vendas;

uses
  Vcl.Forms,
  uVendas in 'uVendas.pas' {frmPrincipalVendas},
  DataModule in 'DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipalVendas, frmPrincipalVendas);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
