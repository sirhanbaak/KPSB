program Client2;

uses
  System.StartUpCopy,
  FMX.Forms,
  MultiView in 'MultiView.pas' {Form1},
  FMX.FontGlyphs.Android in 'FMX.FontGlyphs.Android.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
