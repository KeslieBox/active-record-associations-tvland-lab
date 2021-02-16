class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def actors_list
    actor_list = []
    Actor.find_each do |c|
        actor_list << c.full_name
    end
    actor_list
  end
end