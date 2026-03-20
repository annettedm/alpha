class Molly < ApplicationRecord
  validates :name, presence: true, length: { minimum:2, maximum:25 }
  validates :description, presence: true, length: { minimum:5, maximum:400 }
end
