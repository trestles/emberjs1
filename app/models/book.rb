class Book < ActiveRecord::Base
  attr_accessible :author, :name
  has_many :ideas

  def self.create_books
  	#rake db:drop RAILS_ENV=test
    ActiveRecord::Base.connection.execute("delete from books")
    ActiveRecord::Base.connection.execute("delete from ideas")
    b1=Book.create! name:"Introduction to Probality", author:"Bertsekas and Tsitsiklis"
    b2=Book.create! name:"Discrete Mathematics with Applications", author:"Susanna Epp"
    i1=Idea.create! name:"uncertainty", ref: "p2", detail:"", book_id: b1.id
    i2=Idea.create! name:"set elements", ref: "p3", detail:"", book_id: b1.id
    i3=Idea.create! name:"univeral set", ref: "p3", detail:"", book_id: b1.id
    i4=Idea.create! name:"intersection / union", ref: "p4", detail:"", book_id: b1.id
    i5=Idea.create! name:"de Morgan's Law", ref: "p5", detail:"", book_id: b1.id
    i6=Idea.create! name:"sample space", ref: "p6", detail:"", book_id: b1.id
    i5=Idea.create! name:"probability axioms", ref: "p9", detail:"", book_id: b1.id
    i5=Idea.create! name:"conditional probability", ref: "p28", detail:"", book_id: b1.id

  end	

end
