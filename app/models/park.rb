class Park < ApplicationRecord
  validates_presence_of :name, :description, :picture
end
