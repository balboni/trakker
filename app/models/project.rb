class Project < ActiveRecord::Base

	validates_presence_of :name, :owner

	belongs_to :user
	has_many :activities

end
