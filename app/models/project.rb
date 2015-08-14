class Project < ActiveRecord::Base

	validates_presence_of :name, :owner

	belongs_to :user
	has_many :activities
	has_many :notes
	has_and_belongs_to_many :categories

end
