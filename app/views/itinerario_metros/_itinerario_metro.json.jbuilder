json.extract! itinerario_metro, :id, :estacao_metro_id, :linha_metro_id, :ordem, :created_at, :updated_at
json.url itinerario_metro_url(itinerario_metro, format: :json)
