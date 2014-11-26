class Company < ActiveRecord::Base
	has_many :jobs

	#TODO バリデーション
end
