class Status < ActiveRecord::Base

	has_and_belongs_to_many :activities
	
end
