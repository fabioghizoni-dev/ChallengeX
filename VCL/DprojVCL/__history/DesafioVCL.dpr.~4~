program DesafioVCL;

uses
  Vcl.Forms,
  uMain in '..\UnitsVCL\uMainVCL\uMain.pas' {frmMain},
  uModule in '..\UnitsVCL\DataModuleVCL\uModule.pas' {dtModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdtModule, dtModule);
  Application.Run;
end.
