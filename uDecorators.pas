unit uDecorators;

interface
uses
  uBeverage;

type

  TMocha=class(TCondimentDecorator)
  protected
    FBeverage:TBeverage;
  public
    constructor Create(ABeverage:TBeverage);
    function GetDescription:string; override;
    function Cost:Double;override;
  end;

  TSoy=class(TCondimentDecorator)
  protected
    FBeverage:TBeverage;
  public
    constructor Create(ABeverage:TBeverage);
    function GetDescription:string; override;
    function Cost:Double;override;
  end;

  TWhip=class(TCondimentDecorator)
  protected
    FBeverage:TBeverage;
  public
    constructor Create(ABeverage:TBeverage);
    function GetDescription:string; override;
    function Cost:Double;override;
  end;

implementation

{ TMocha }

function TMocha.Cost: Double;
begin
  inherited;
  Result:=0.20 + FBeverage.Cost;
end;

constructor TMocha.Create(ABeverage: TBeverage);
begin
  FBeverage:=ABeverage;
end;

function TMocha.GetDescription: string;
begin
  Result:=FBeverage.GetDescription+', Mocha';
end;

{ TSoy }

function TSoy.Cost: Double;
begin
  inherited;
  Result:=0.15 + FBeverage.Cost;
end;

constructor TSoy.Create(ABeverage: TBeverage);
begin
  FBeverage:=ABeverage;
end;

function TSoy.GetDescription: string;
begin
  Result:=FBeverage.GetDescription+', Soy';
end;

{ TWhip }

function TWhip.Cost: Double;
begin
  inherited;
  Result:=0.10 + FBeverage.Cost;
end;

constructor TWhip.Create(ABeverage: TBeverage);
begin
  FBeverage:=ABeverage;
end;

function TWhip.GetDescription: string;
begin
  Result:=FBeverage.GetDescription+', Whip';
end;

end.
