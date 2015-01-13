class Ingredient
  include Mongoid::Document
  field :name, type: String
  field :quantity, type: Float
  field :unit, type: String
  field :price_per_unit, type: Float
end
