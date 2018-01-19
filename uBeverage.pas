unit uBeverage;

interface

type

  TBeverage=class
  protected
    FDescription:string;
  public    
    constructor Create;
    function GetDescription:string; virtual;
    function Cost:Double; virtual; abstract;
  end;

  TCondimentDecorator=class(TBeverage)
  public
    function GetDescription:string; override;
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

{ TCondimentDecorator }

function TCondimentDecorator.GetDescription: string;
begin

end;

end.
