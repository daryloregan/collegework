class Student < ActiveRecord::Base

	has_one:resume
	has_secure_password
	validates:email,format:{with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)[a-z]{2,})\Z/}
	
	validates :first_name, presence:true
	validates :last_name, presence:true
	#validates_uniqueness_of:email
	validates:email,format:{with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)[a-z]{2,})\Z/}
	
    #mount_uploader :attachment, AttachmentUploader
	 # existing code

    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	
end
