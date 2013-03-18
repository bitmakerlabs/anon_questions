class Question < ActiveRecord::Base
  attr_accessible :question, :votes, :answered

  scope :available, where(:answered => false).order(:votes).reverse
end
