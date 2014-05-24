class Book < ActiveRecord::Base
  attr_accessible :author, :name

  def self.create_books
    Book.create! name:"Introduction to Probality", author:"Bertsekas and Tsitsiklis"
    Book.create! name:"Discrete Mathematics with Applications", author:"Susanna Epp"
  end	
end
