unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBeverage, uBeverages, uDecorators, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  Beverage:TBeverage;
  Beverage2:TBeverage;
  Beverage3:TBeverage;
begin
  Beverage:=TEspresso.Create;
  ShowMessage(Beverage.GetDescription+' $'+FloatToStr(Beverage.Cost));

  Beverage2:=TDarkRoast.Create;
  Beverage2:=TMocha.Create(Beverage2);
  Beverage2:=TMocha.Create(Beverage2);
  Beverage2:=TWhip.Create(Beverage2);
  ShowMessage(Beverage2.GetDescription+' $'+FloatToStr(Beverage2.Cost));

  Beverage3:=THouseBlend.Create;
  Beverage3:=TSoy.Create(Beverage3);
  Beverage3:=TMocha.Create(Beverage3);
  Beverage3:=TWhip.Create(Beverage3);
  ShowMessage(Beverage3.GetDescription+' $'+FloatToStr(Beverage3.Cost));
end;

end.
