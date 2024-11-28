program DesafioFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainFMX in '..\UnitsFMX\uMainFMX\uMainFMX.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
