class ItinerarioMetro < ApplicationRecord
  belongs_to :estacao_metro
  belongs_to :linha_metro
end
