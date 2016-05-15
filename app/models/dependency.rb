class Dependency < ApplicationRecord

  validates :name, presence: true, uniqueness: true
end
