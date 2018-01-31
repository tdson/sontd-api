class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :description

  belongs_to :manufacturer
end
