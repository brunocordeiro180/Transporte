class Metro < ApplicationRecord
  belongs_to :linha_metro
  belongs_to :empresa
end
