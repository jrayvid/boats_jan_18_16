class User < ActiveRecord::Base
	has_secure_password
	has_many :boats

has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
:default_url => ""
 validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

validates :username, uniqueness: true, presence: true

end

