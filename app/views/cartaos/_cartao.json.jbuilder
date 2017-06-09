json.extract! cartao, :id, :usuario_id, :saldo, :data_cadastro, :data_vencimento, :created_at, :updated_at
json.url cartao_url(cartao, format: :json)
