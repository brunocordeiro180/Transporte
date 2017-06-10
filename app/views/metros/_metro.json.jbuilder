json.extract! metro, :id, :linha_metro_id, :empresa_id, :qtd_passageiros, :data_inicio_operacao, :ultima_revisao, :created_at, :updated_at
json.url metro_url(metro, format: :json)
