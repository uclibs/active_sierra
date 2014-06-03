class SierraTable < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :sierra
end
