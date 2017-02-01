Rails.application.routes.draw do
  default_url_options :host => "http://localhost:3000/"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to=>'static_pages#index'
	devise_for :users, :controllers => { 
  	:sessions => "users/sessions", 
  	:registrations => "users/registrations", 
  	:passwords => "users/passwords", 
  	:confirmations => "users/confirmations"
  }
end
