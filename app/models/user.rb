class User < ActiveRecord::Base
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password


  def increase_ticket_count
    self.tickets += 1
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
