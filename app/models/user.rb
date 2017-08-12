class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password


  def decrease_ticket_count(ammount)
    self.tickets -= ammount
  end

  def eligible_to_ride?(attraction)
    true if (self.tickets >= attraction.tickets) && (self.height >= attraction.min_height)
  end

  def mood
    if nausea > happiness
      'sad'
    elsif nausea < happiness
      'happy'
    else
      'No mood'
    end
  end

  def update_mood
    self.nausea = 5
    self.happiness = 0
  end

end
