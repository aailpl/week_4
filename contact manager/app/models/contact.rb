class Contact < ActiveRecord::Base
	validates :name, presence: true
	validates :last_name, presence: true
	validates :email, uniqueness: true
end
