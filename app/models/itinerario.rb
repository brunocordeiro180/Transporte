class Itinerario < ApplicationRecord
  belongs_to :estacao
  belongs_to :linha
end
