class TestKit < ApplicationRecord
  validates :TTNcode, uniqueness: true
end
