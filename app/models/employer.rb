class Employer < ActiveRecord::Base

	has_many:jobs
	
	has_secure_password
	validates:email,format:{with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)[a-z]{2,})\Z/}
	
	validates :first_name, presence:true
	validates :last_name, presence:true
	validates :company_name, presence:true
	validates :location, presence:true
	validates :industry, presence:true
	#validates_uniqueness_of:email
	validates:email,format:{with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)[a-z]{2,})\Z/}
end
