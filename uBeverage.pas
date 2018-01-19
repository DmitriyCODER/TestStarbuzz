unit uBeverage;

interface

type

  TBeverage=class
  private
    FDescription:string;
  public
    constructor Create;
    function GetDescription:string;
    function Cost:Double; virtual; abstract;
  end;


implementation

{ TBeverage }

constructor TBeverage.Create;
begin
  FDescription:='Unknown Beverage';
end;

function TBeverage.GetDescription: string;
begin
  Result:=FDescription;
end;

end.
