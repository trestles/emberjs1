class BookSerializer < ActiveModel::Serializer
  attributes :name,:author
  has_many :ideas
end
