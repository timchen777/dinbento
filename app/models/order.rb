class Order < ApplicationRecord
  has_many :comments
  has_many :votes, as: :voteable
  def up_votes
    self.votes.where(vote: true).length
  end

  def down_votes
    self.votes.where(vote: false).length
  end

  def total_votes
    up_votes - down_votes
  end  
end
