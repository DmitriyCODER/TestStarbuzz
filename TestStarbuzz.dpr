program TestStarbuzz;

uses
  Forms,
  main in 'main.pas' {Form1},
  uBeverage in 'uBeverage.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.