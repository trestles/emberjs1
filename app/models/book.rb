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
    Idea.create! name:"total probability theorem", ref: "p30, p31", detail:"", book_id: b1.id
    Idea.create! name:"discrete uniform probability", ref: "p35", detail:"", book_id: b1.id
    Idea.create! name:"symmetry considerations", ref: "p37", detail:"", book_id: b1.id
    Idea.create! name:"independence", ref: "p38", detail:"two events are independent if P(A B)=P(A)P(B)  (2) If A and B are independent, so are A and Bc (3) conditionally indepdenent (4) independence does not imply conditional independence , and vice versa", book_id: b1.id
    Idea.create! name:"pairwise independence", ref: "p39", detail:"", book_id: b1.id
    Idea.create! name:"reliability of a system consisting of components that can fail independently", ref: "p41", detail:"", book_id: b1.id
    Idea.create! name:"independent trials", ref: "p41", detail:"", book_id: b1.id
    Idea.create! name:"counting principle", ref: "p44, p47, p49, p52", detail:"is this the same as the Counting Method (p52)?", book_id: b1.id
    Idea.create! name:"partitions", ref: "p49", detail:"recall that a combination is a choice of k elements out of an n-element set without regard to order", book_id: b1.id
    Idea.create! name:"multinomial coefficient", ref: "p49", detail:"", book_id: b1.id
    Idea.create! name:"sequential method", ref: "p52", detail:"", book_id: b1.id
    Idea.create! name:"divide-and-conquer method", ref: "p52", detail:"", book_id: b1.id
    Idea.create! name:"Bernoulli and Poisson Process", ref: "p340", detail:"", book_id: b1.id
    Idea.create! name:"discrete-time Markov chains", ref: "p340", detail:"state changes at certain discrete time instants, indexed by an integer value n; transition probabilities", book_id: b1.id
    Idea.create! name:"self-transition", ref: "p341", detail:"", book_id: b1.id
    Idea.create! name:"Markov Model", ref: "p341", detail:"specification of Markov Models; 'The second half of the preceding example ilustrates that in order to construct a Markov model, there is often a need to introduce new states that capture the dependence of the future on the model`s past history (p343)", book_id: b1.id
    Idea.create! name:"n-step transition probabilities", ref: "p345", detail:"", book_id: b1.id
    Idea.create! name:"absorbing state", ref: "p346", detail:"", book_id: b1.id
    Idea.create! name:"transient state", ref: "p347", detail:"a state is called transient if it is not recurrent; see Fig 7.8 on p349", book_id: b1.id
    Idea.create! name:"Markov Chain Decomposition", ref: "p349", detail:"", book_id: b1.id
    Idea.create! name:"periodicity", ref: "p350, p351", detail:"", book_id: b1.id
    Idea.create! name:"Steady State Behavior", ref: "p352, p353, p355", detail:"stationary distribution of the chain", book_id: b1.id
    Idea.create! name:"Long Term Frequency Interpretations", ref: "p357", detail:"Probabilities are often interpreted as relative frequencies in an infinitely long string of independent trials", book_id: b1.id
    Idea.create! name:"Birth-Death Processes", ref: "p359", detail:"a birth-death process is a Markov chain in which the states are linearly arranged and transitions can only occur to a neighboring state, or else leave the state unchanged", book_id: b1.id
    Idea.create! name:"buffer size in queuing theory", ref: "p362", detail:"", book_id: b1.id
    Idea.create! name:"Gambler's Ruin", ref: "p364", detail:"", book_id: b1.id
    Idea.create! name:"Equations for Mean First Passage and Recurrence Times", ref: "p369", detail:"", book_id: b1.id
    Idea.create! name:"Poisson Processes", ref: "p369", detail:"", book_id: b1.id
    Idea.create! name:"embedded Markov Chain", ref: "p370", detail:"", book_id: b1.id
    Idea.create! name:"continuous-time Markov Chain and a corresponding discrete-time version", ref: "p372", detail:"", book_id: b1.id
    Idea.create! name:"packet / queueing", ref: "p373", detail:"", book_id: b1.id
    Idea.create! name:"Steady-State Convergence Theorem", ref: "p375", detail:"", book_id: b1.id
    Idea.create! name:"local balance equations", ref: "p375", detail:"", book_id: b1.id
    Idea.create! name:"Markov Chain Summary and Discussion", ref: "p378", detail:"", book_id: b1.id
    Idea.create! name:"Noisy Channel", ref: "p410", detail:"", book_id: b1.id


  end	

end
