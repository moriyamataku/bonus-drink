class BonusDrink
  BONUS_COUNT = 3
  def self.bonus_count(bottle)
  	if bottle < BONUS_COUNT then
  		0
  	else
  		bottle / BONUS_COUNT + bonus_count(bottle / BONUS_COUNT +  bottle % BONUS_COUNT)
  	end
  end
  
  def self.total_count_for(amount)
  	amount + bonus_count(amount)
  end
end