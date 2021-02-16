class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    Character.find_each do |r|
        roles << "#{r.name} - #{r.show.name}"
    end
    roles
  end
end