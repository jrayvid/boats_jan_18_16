class Job < ActiveRecord::Base
	belongs_to :boat
	
	def convert_to_dollars(price)
		# 19474 / 100 = $194.74
		return price / 100
	end
		
end
