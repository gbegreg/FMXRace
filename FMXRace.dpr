program FMXRace;





{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  principale in 'principale.pas' {fPrincipale},
  GBECubemap in 'GBECubemap.pas',
  uGBEUtils3D in 'uGBEUtils3D.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Landscape];
  Application.CreateForm(TfPrincipale, fPrincipale);
  Application.Run;
end.
