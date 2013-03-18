class Question < ActiveRecord::Base
  attr_accessible :question, :votes, :answered
end
