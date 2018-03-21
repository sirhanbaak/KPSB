program Client1;

uses
  System.StartUpCopy,
  FMX.Forms,
  TabbedTemplate in 'TabbedTemplate.pas' {TabbedForm},
  FMX.FontGlyphs.Android in 'FMX.FontGlyphs.Android.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTabbedForm, TabbedForm);
  Application.Run;
end.
