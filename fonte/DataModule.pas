unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Phys, FireDAC.Comp.Client, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    Connection: TFDConnection;
    qryProdutos: TFDQuery;
    qryPedidos: TFDQuery;
    qryClientes: TFDQuery;
    Transaction: TFDTransaction;
    qryConsultaPedidos: TFDQuery;
    qryConsultaPedidoscodigo: TIntegerField;
    qryConsultaPedidosdescricao: TStringField;
    qryConsultaPedidosquantidade: TIntegerField;
    qryConsultaPedidosvalorUnitario: TSingleField;
    qryConsultaPedidosvalorTotal: TSingleField;
    dtsConsultaPedidos: TDataSource;
    qryConsultaPedidoscodigoPedido: TFDAutoIncField;
    qryPedidosDadosGerais: TFDQuery;
    qryPedidosDadosGeraisnumeroPedido: TFDAutoIncField;
    qryPedidosDadosGeraisdataEmissao: TDateField;
    qryPedidosDadosGeraiscodigoCliente: TIntegerField;
    qryPedidosDadosGeraisvalorTotal: TSingleField;
    qryPedidosDadosGeraisdataHoraCancelamento: TDateTimeField;
    qryPedidosDadosGeraisnome: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
