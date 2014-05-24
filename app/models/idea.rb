class Idea < ActiveRecord::Base
  attr_accessible :detail, :name, :ref, :book_id
  belongs_to :book
end
