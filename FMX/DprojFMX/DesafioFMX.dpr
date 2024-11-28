program DesafioFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainFMX in '..\UnitsFMX\uMainFMX\uMainFMX.pas' {frmMain},
  uModule in '..\UnitsFMX\DataModuleFMX\uModule.pas' {dtModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdtModule, dtModule);
  Application.Run;
end.
