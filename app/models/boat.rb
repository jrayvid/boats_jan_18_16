class Boat < ActiveRecord::Base
	belongs_to :user
	has_one :job
end
