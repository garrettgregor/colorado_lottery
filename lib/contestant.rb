class Contestant
  attr_reader :contestant_details
  def initialize(contestant_details)
    @contestant_details = {
      first_name:         'Alexander',
      last_name:          'Aigiades',
      age:                28,
      state_of_residence: 'CO',
      spending_money:     10
    }
  end

  def full_name
    "#{contestant_details[:first_name]} #{contestant_details[:last_name]}"
  end

  def age
    contestant_details[:age]
  end

  def state_of_residence
    contestant_details[:state_of_residence]
  end
  
  def spending_money
    contestant_details[:spending_money]
  end
end