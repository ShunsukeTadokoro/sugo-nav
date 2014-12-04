Rails.application.routes.draw do
  resources :hoges

  devise_for :companies
  resources :companies
	devise_for :users, :controllers => {
		:sessions      => "users/sessions",
		:registrations => "users/registrations",
		:passwords     => "users/passwords",
		:omniauth_callbacks => 'users/omniauth_callbacks'
	}
	root to: 'welcome#index'

end
