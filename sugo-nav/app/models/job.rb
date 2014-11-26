class Job < ActiveRecord::Base
	belongs_to :company
	has_many :users, through: :matching

	#TODO バリデーション
end
