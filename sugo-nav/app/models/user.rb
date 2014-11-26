class User < ActiveRecord::Base
	has_many :jobs, through: :matching

	#TODO バリデーション
end
