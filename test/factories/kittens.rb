FactoryGirl.define do
  factory :kitten do
    name "Henry"
    softness Kitten::SOFTNESS.sample
    cuteness Kitten::CUTENESS.sample
    age (2..6).to_a.sample
  end
end
