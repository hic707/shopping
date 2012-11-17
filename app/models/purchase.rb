class Purchase < ActiveRecord::Base
  attr_accessible :name, :price, :quantity
end
