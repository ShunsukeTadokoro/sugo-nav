class Users::RegistrationsController < Devise::RegistrationsController


	def create
		super
			# ユーザーアカウント作成後にウェルカムメール送信
			UserMailer.registration_confirmation(resource).deliver unless resource.invalid?
		end
end