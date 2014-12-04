Rails.application.routes.draw do
  devise_for :companies
	devise_for :users, :controllers => {
		:sessions      => "users/sessions",
		:registrations => "users/registrations",
		:passwords     => "users/passwords",
		:omniauth_callbacks => 'users/omniauth_callbacks'
	}
	root to: 'welcome#index'

end
