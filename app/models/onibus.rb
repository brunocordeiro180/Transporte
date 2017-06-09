class Onibus < ApplicationRecord
  belongs_to :empresa
  belongs_to :linha
end
