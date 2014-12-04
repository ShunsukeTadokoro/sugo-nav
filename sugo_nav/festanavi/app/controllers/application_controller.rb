class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	# deviseでのサインアップ時に名前入力欄を追加
	before_filter :configure_permitted_parameters, if: :devise_controller?

	protected
		# StrongParameterに名前の項目を追加
		def configure_permitted_parameters
			devise_parameter_sanitizer.for(:sign_up) << :name
		end
end
