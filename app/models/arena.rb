class Arena < ApplicationRecord
  belongs_to :hero
  belongs_to :user

  has_many :results

  validates_presence_of :hero, :user

  def wins
    results.wins
  end

  def losses
    results.losses
  end
end
