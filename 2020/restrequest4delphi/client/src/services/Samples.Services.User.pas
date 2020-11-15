unit Samples.Services.User;

interface

uses System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TUserService = class(TDataModule)
    mtUsers: TFDMemTable;
    mtUsersID: TIntegerField;
    mtUsersNAME: TStringField;
    mtUsersLAST_NAME: TStringField;
    mtUsersEMAIL: TStringField;
  public
    procedure GetUsersDefault;
    procedure GetUsersRESTRequest4Delphi;
  end;

implementation

{$R *.dfm}

uses RESTRequest4D.Request;

procedure TUserService.GetUsersDefault;
begin

end;

procedure TUserService.GetUsersRESTRequest4Delphi;
begin
  TRequest.New.BaseURL('http://localhost:9000/users')
    .DataSetAdapter(mtUsers)
    .Get;
end;

end.
