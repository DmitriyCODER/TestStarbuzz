unit uBeverages;

interface
uses
  uBeverage;

type

  TEspresso=class(TBeverage)
  public
    constructor Create;
    function Cost:Double;override;
  end;

  THouseBlend=class(TBeverage)
  public
    constructor Create;
    function Cost:Double;override;
  end;

implementation

{ TEspresso }

function TEspresso.Cost: Double;
begin
  inherited;
  Result:=1.99;
end;

constructor TEspresso.Create;
begin
  FDescription:='Espresso';
end;

{ THouseBlend }

function THouseBlend.Cost: Double;
begin
  inherited;
  Result:=0.89;
end;

constructor THouseBlend.Create;
begin
  FDescription:='House blend Coffee';
end;

end.
