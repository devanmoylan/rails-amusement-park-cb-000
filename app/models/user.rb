class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password


  def decrease_ticket_count(ammount)
    self.tickets -= ammount
  end

  def update_mood
    self.nausea = 5
    self.happiness = 0
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

end
