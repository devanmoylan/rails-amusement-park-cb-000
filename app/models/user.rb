class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password


  def decrease_ticket_count(ammount)
    self.tickets -= ammount
  end

  def eligible_to_ride?(attraction)
    return true if (self.tickets >= attraction.tickets) && (self.height >= attraction.min_height)
    if (self.height < attraction.min_height) && (self.tickets < attraction.tickets)
      "You are not tall enough to ride the #{attraction.name}. You do not have enough tickets to ride the #{attraction.name}. Tickets: #{self.tickets}"
    elsif (self.height < attraction.min_height)
      "You are not tall enough to ride the #{attraction.name}"
    else
      "You do not have enough tickets to ride the #{attraction.name}."
    end
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
