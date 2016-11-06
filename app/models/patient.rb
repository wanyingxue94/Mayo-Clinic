class Patient < ActiveRecord::Base
	has_many:appointments, dependent: :destroy
	has_many:comments
	
	
	has_secure_password
	validates :password, :presence => true,
						 :length => { :minimum => 6}
						 
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :phone, uniqueness: true
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :address, presence: true
	validates :city, presence: true
	validates :date_of_birth, presence: true
	validates :email, presence: true
	
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	
	validates :phone,   :presence => {:message => 'bad operation!'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 10 }
	
	
					 
					 
	
end
