json.extract! itinerario, :id, :estacao_id, :linha_id, :ordem, :created_at, :updated_at
json.url itinerario_url(itinerario, format: :json)
