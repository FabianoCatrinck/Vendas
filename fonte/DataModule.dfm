object DM: TDM
  OldCreateOrder = False
  Height = 280
  Width = 415
  object Connection: TFDConnection
    Params.Strings = (
      'Database=vendas'
      'User_Name=root'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 152
  end
  object qryProdutos: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'select *'
      'from produtos')
    Left = 288
    Top = 120
  end
  object qryPedidos: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'select *'
      'from pedidos')
    Left = 80
    Top = 104
  end
  object qryClientes: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'select *'
      'from clientes')
    Left = 160
    Top = 40
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 296
    Top = 72
  end
  object qryConsultaPedidos: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      
        'select p.codigo as codigoPedido, pd.codigo, pd.descricao, p.quan' +
        'tidade, p.valorUnitario, p.valorTotal'
      'from pedidosProdutos p'
      'inner join produtos pd on pd.codigo = p.codigoProduto'
      'where p.NumeroPedido = :pNumeroPedido;')
    Left = 104
    Top = 192
    ParamData = <
      item
        Name = 'PNUMEROPEDIDO'
        ParamType = ptInput
      end>
    object qryConsultaPedidoscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConsultaPedidosdescricao: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 45
    end
    object qryConsultaPedidosquantidade: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Origin = 'quantidade'
    end
    object qryConsultaPedidosvalorUnitario: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorUnitario'
      Origin = 'valorUnitario'
      currency = True
    end
    object qryConsultaPedidosvalorTotal: TSingleField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor Total'
      FieldName = 'valorTotal'
      Origin = 'valorTotal'
      currency = True
    end
    object qryConsultaPedidoscodigoPedido: TFDAutoIncField
      FieldName = 'codigoPedido'
      Origin = 'codigo'
      ReadOnly = True
      Visible = False
    end
  end
  object dtsConsultaPedidos: TDataSource
    DataSet = qryConsultaPedidos
    Left = 32
    Top = 176
  end
  object qryPedidosDadosGerais: TFDQuery
    Connection = Connection
    Transaction = Transaction
    SQL.Strings = (
      'select p.*, c.nome '
      'from pedidosDadosGerais p'
      'inner join clientes c on c.codigo = p.codigoCliente'
      'where p.numeroPedido = :pNumeroPedido')
    Left = 248
    Top = 216
    ParamData = <
      item
        Name = 'PNUMEROPEDIDO'
        ParamType = ptInput
      end>
    object qryPedidosDadosGeraisnumeroPedido: TFDAutoIncField
      FieldName = 'numeroPedido'
      Origin = 'numeroPedido'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryPedidosDadosGeraisdataEmissao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataEmissao'
      Origin = 'dataEmissao'
    end
    object qryPedidosDadosGeraiscodigoCliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigoCliente'
      Origin = 'codigoCliente'
    end
    object qryPedidosDadosGeraisvalorTotal: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'valorTotal'
      Origin = 'valorTotal'
      currency = True
    end
    object qryPedidosDadosGeraisdataHoraCancelamento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataHoraCancelamento'
      Origin = 'dataHoraCancelamento'
    end
    object qryPedidosDadosGeraisnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
end
