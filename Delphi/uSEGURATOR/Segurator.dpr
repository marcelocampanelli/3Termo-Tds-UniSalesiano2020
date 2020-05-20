program Segurator;

uses
  Vcl.Forms,
  uSEGURATOR in '..\uSEGURATOR.pas' {ACMESegurator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TACMESegurator, ACMESegurator);
  Application.Run;
end.
