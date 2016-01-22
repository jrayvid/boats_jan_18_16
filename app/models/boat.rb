class Boat < ActiveRecord::Base
	belongs_to :user
	has_one :job
	
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
 validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


validates :name, uniqueness: true, presence: true




end
