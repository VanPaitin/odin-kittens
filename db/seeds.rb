# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
  this is the seed file for the local kittens app.
  the different levels of softness include (a) very soft (b) soft (c) hard
  the different levels of cuteness include (a) very cute (b) cute (c) Only fluffy
=end
class Seed
  def softness
    softness = ["very soft", "soft", "hard"]
    softness.sample
  end

  def cuteness
    cuteness = ["very cute", "cute", "Only fluffy"]
    cuteness.sample
  end

  def names
    ["Henry", "Danijax", "Paitin", "Clinton", "Kate"]
  end

  def create_kittens
    5.times do |variable|
      Kitten.create!(name: names[variable],
        age: rand(2..6),
        cuteness: cuteness,
        softness: softness
      )
    end
  end
end
kittens = Seed.new
kittens.create_kittens
