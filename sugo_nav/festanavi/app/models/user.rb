class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable

	before_validation do
		self.email_for_index = email.downcase if email
	end

	validates :name, presence: true, length: { maximum: 50 }

	def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
		user = User.where(:provider => auth.provider, :uid => auth.uid).first
		unless user
			user = User.create(
				name: auth.extra.raw_info.name,
				provider: auth.provider,
				uid: auth.uid,
				email: auth.info.email,
				password: Devise.friendly_token[0,20]
			)
		end
		user
	end

	def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
		user = User.where(:provider => auth.provider, :uid => auth.uid).first
		unless user
			user = User.create(
				name: auth.info.nickname,
				provider: auth.provider,
				uid: auth.uid,
				email: auth.create_unique_email,
				password: Devise.friendly_token[0,20]
			)
		end
		user
	end

		# 通常サインアップ時のuid用、Twitter OAuth認証時のemail用にuuidな文字列を生成
		def self.create_unique_string
			SecureRandom.uuid
		end

		# twitterではemailを取得できないので、適当に一意のemailを生成
		def self.create_unique_email
			User.create_unique_string + "@example.com"
		end

	# def self.find_for_oauth(auth)
	# 	user = User.where(uid: auth.uid, provider: auth.provider).first

	# 	unless user
	# 		user = User.create do |user|
	# 			user.provider = auth["provider"]
	# 			user.uid = auth["uid"]
	# 			# user.email = User.dummy_email(auth)
	# 			user.email = auth["info"]
	# 			if user.provider == "twitter"
	# 				user.name = auth["info"]["nickname"]
	# 			elsif user.provider == "facebook"
	# 				user.name = auth["info"]["name"]
	# 			end
	# 			user.password = Devise.friendly_token[0, 20]
	# 			user.save
	# 		end
	# 		# user = User.create(
	# 		# 	uid: auth.uid,
	# 		# 	name: auth["info"]["nickname"] if user.provider == "twitter",
	# 		# 	provider: auth.provider,
	# 		# 	email:    User.dummy_email(auth),
	# 		# 	password: Devise.friendly_token[0, 20]
	# 		# )
	# 	end

	# 	user
	# end

	private

	# def self.dummy_email(auth)
	# 	"#{auth.uid}-#{auth.provider}@example.com"
	# end
end
