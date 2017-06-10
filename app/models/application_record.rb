class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  self.cobradors = "cobradores"
end
