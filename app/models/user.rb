class User < ActiveRecord::Base

	has_one :profile
	has_many :projects, -> { order('created_at DESC, name ASC')}

end
