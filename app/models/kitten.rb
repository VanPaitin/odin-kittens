class Kitten < ApplicationRecord
  CUTENESS = ["very cute", "cute", "Only fluffy"]
  SOFTNESS = ["very soft", "soft", "hard"]
  validates :name, presence: true
end
