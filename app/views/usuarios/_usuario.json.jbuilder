json.extract! usuario, :id, :cpf, :datanasc, :profissao, :endereco, :sexo, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
