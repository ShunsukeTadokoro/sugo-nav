Rails.application.routes.draw do

  resources :tests

	# トップページ
	root to: "tops#index"

	# 仕事系
	get "/jobs" => "jobs#index"
	get "/jobs/:id" => "jobs#show"
	get "/company_admin/job/add" => "jobs#new"
	post "/company_admin/job/add" => "jobs#create"
	get "/company_admin/job/edit/:id" => "jobs#edit"
	patch "/company_admin/job/edit/:id" => "jobs#update"
	delete "/company_admin/job/delete" => "jobs#destroy"

	# 会社系
	get "/company" => "companies#index"
	get "/company/:id" => "companies#show"
	get "/regist/company" => "companies#new"
	post "/regist/company" => "companies#create"
	get "/company_admin/company/edit/:id" => "companies#edit"
	patch "/company_admin/company/edit/:id" => "companies#update"
	delete "/company_admin/company/delete/" => "companies#destroy"

	# ユーザー系
	get "/user/signup" => "users#new"
	post "/user/signup" => "users#create"
	get "/user/signup" => "users#new"
	get "/user/mypage" => "users#show"
	get "/user/edit" => "users#edit"
	patch "/user/edit" => "users#update"
	delete "/user/delete" => "users#destroy"

	# ログイン
	get "/user/login" => "users#login"
	post "/user/login" => "users#sign_in"

	# The priority is based upon order of creation: first created -> highest priority.
	# See how all your routes lay out with "rake routes".

	# You can have the root of your site routed with "root"
	# root 'welcome#index'

	# Example of regular route:
	#   get 'products/:id' => 'catalog#view'

	# Example of named route that can be invoked with purchase_url(id: product.id)
	#   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

	# Example resource route (maps HTTP verbs to controller actions automatically):
	#   resources :products

	# Example resource route with options:
	#   resources :products do
	#     member do
	#       get 'short'
	#       post 'toggle'
	#     end
	#
	#     collection do
	#       get 'sold'
	#     end
	#   end

	# Example resource route with sub-resources:
	#   resources :products do
	#     resources :comments, :sales
	#     resource :seller
	#   end

	# Example resource route with more complex sub-resources:
	#   resources :products do
	#     resources :comments
	#     resources :sales do
	#       get 'recent', on: :collection
	#     end
	#   end

	# Example resource route with concerns:
	#   concern :toggleable do
	#     post 'toggle'
	#   end
	#   resources :posts, concerns: :toggleable
	#   resources :photos, concerns: :toggleable

	# Example resource route within a namespace:
	#   namespace :admin do
	#     # Directs /admin/products/* to Admin::ProductsController
	#     # (app/controllers/admin/products_controller.rb)
	#     resources :products
	#   end
end
