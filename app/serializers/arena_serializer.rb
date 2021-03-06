class ArenaSerializer < ActiveModel::Serializer
  attributes :id, :hero, :wins, :losses

  def hero
    object.hero.name
  end

  def wins
    object.wins.count
  end

  def losses
    object.losses.count
  end

  has_many :results
end
